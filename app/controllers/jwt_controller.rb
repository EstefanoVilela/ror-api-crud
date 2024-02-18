class JwtController < ApplicationController
  def token
    jwt = JWT.encode({ user_id: 1 }, Rails.application.secret_key_base)
    render json: { jwt: jwt }
  end
end