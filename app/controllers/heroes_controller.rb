class HeroesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    def index
        heroes = Hero.all
        render json: heroes
    end

    def summary
        heroes = find_heroes
        render json: heroes, each_serializer:HeroesSerializer
    end

    def summaries
        hero = Hero.find(params[:id])
            render json: hero, serializer: HeroSummarieSerializer
    end

    private

    def find_heroes
        Hero.all
    end

    def record_not_found
        render json: { error: "Hero not found" }, status: :not_found
    end
end
