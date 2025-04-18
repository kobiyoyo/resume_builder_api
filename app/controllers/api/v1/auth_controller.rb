class Api::V1::AuthController < ApplicationController
  skip_before_action :authenticate_user!, only: [:login]

  def login
    user = User.find_by(email: params[:email])
  
    if user&.authenticate(params[:password])
      render json: { message: "Login successful", auth_token: user.auth_token, user: user }, status: :ok
    else
      render json: { message: "Invalid email or password" }, status: :unauthorized
    end
  end
end