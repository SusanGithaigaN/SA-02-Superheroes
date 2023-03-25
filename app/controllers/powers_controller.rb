class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :power_not_found
    def index
        powers = Power.all
        render json: powers, each_serializer: PowerSerializer
    end

    # get powers by id
    # "Power not found"
    def show
        power = find_power_id
        render json: power, serializer: PowerSerializer
    end

    # update power's description
    def update
        power = find_power_id
        if power
            if power.update(power_params)
                render json: power, serializer: PowerSerializer
            else
                render json: { errors: power.errors.full_messages}, status: :unprocessable_entity
            end
            else 
                render json: { error: "Power not found" }, status: :not_found
            end
    end


    private

    def power_not_found
        render json: { error: "Power not found" }, status: :not_found
    end

    def power_params
        params.permit(:description)
    end

    def find_power_id
        Power.find(params[:id])
    end

end
