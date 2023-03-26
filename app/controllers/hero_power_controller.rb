class HeroPowerController < ApplicationController

    # create hero powers
    def create
        hero_power = HeroPower.new(hero_power_params)

        if hero_power.save
            render json: hero_power.power, serializer: PowerSerializer
        else
            render json: { errors: ["validation errors"] }, status: :unprocessable_entity
        end
    end

    def hero_power_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
