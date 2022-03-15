# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'sample@example.com', password: 'password', password_confirmation: 'password') unless User.find_by(email: 'sample@example.com')
User.create!(email: 'test@example.com', password: 'password', password_confirmation: 'password') unless User.find_by(email: 'test@example.com')

Post.destroy_all
Task.destroy_all

sample_user = User.find_by(email: 'sample@example.com')
test_user   = User.find_by(email: 'test@example.com')

5.times do |i|
  Post.create!(title: "S-No.#{i + 1}", body: "sampleさんが作成した第#{i + 1}個目のポスト", user_id: sample_user.id)
  Task.create!(title: "S-No.#{i + 1}", body: "sampleさんが作成した第#{i + 1}個目のタスク", user_id: sample_user.id)
end

5.times do |i|
  Post.create!(title: "T-No.#{i + 1}", body: "testさんが作成した第#{i + 1}個目のポスト", user_id: test_user.id)
  Task.create!(title: "T-No.#{i + 1}", body: "testさんが作成した第#{i + 1}個目のタスク", user_id: test_user.id)
end
