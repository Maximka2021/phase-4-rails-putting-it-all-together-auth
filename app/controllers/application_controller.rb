class ApplicationController < ActionController::API
  include ActionController::Cookies

  before_action :check_user

  private

  def check_user
    unless current_user
      render json: { errors: ['Not authorized'] }, status: :unauthorized
    end
  end

  def authorize
    !!current_user
  end
  
  def current_user
    User.find_by(id: session[:user_id])
  end
    
end
