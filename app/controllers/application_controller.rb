class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  rescue_from ActiveRecord::RecordNotFound, with: :not_allowed_request

  def not_allowed_request
    redirect_to root_path, alert: 'そのリクエストは許可されておりません'
  end
end
