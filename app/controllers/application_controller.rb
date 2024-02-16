class ApplicationController < ActionController::API
  before_action :valid_token
  rescue_from Exception, with: :handle

  private
    def valid_token
      raise 'Token inválido' unless request.headers[:Authorization] === 'abc123'
    end

    def handle ex
      render json: { message: ex }, status: :unprocessable_entity
    end
end