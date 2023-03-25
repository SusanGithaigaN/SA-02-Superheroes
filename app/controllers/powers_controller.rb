class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :power_not_found
    def index
        powers = Power.all
        render json: powers, each_serializer: PowerSerializer
    end

    # get powers by id
    # "Power not found"
    def show
        power = Power.find(params[:id])
        render json: power, serializer: PowerSerializer
    end

    private

    def power_not_found
        render json: { error: "Power not found" }, status: :not_found
    end
end
