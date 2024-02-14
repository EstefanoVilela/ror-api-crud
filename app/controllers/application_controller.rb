class ApplicationController < ActionController::API
  rescue_from Exception, with: :handle

  private
    def handle ex
      render json: { message: 'Error!' }, status: :unprocessable_entity
    end
end