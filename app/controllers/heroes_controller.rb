class HeroesController < ApplicationController
    def index
        heroes = Hero.all
        render json: heroes
    end

    def summary
        heroes = find_heroes
        render json: heroes, each_serializer:HeroesSerializer
    end

    private

    def find_heroes
        Hero.all
    end
end
