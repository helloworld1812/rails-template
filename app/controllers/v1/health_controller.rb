module V1
  class HealthController < ApplicationController
    def show
      render json: { status: 'healthy' }
    end
  end
end
