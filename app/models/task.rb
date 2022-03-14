class Task < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { in: 2..35 }
  validates :body,  presence: true, length: { in: 2..1000 }
end
