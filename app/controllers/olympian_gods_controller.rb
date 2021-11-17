class OlympianGodsController < ApplicationController

    def index
        gods = OlympianGod.all
        render json: gods
    end
end
