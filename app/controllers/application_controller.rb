class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate!

  private

  def app_user_name
    Rails.application.config.app_user_name
  end

  def app_password
    Rails.application.config.app_password
  end

  def authenticate!
    authenticate_or_request_with_http_basic do |username, password|
      username == app_user_name && password == app_password
    end
  end
end
