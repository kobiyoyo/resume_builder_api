class ApplicationController < ActionController::API
  before_action :authenticate_user!

  def current_user
    token = request.headers['Authorization']
    return nil unless token.present?

    @current_user ||= User.find_by(auth_token: token)
  end

  def authenticate_user!
    render json: { error: 'Unauthorized' }, status: :unauthorized unless current_user
  end
end
