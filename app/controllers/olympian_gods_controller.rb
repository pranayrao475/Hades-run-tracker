class OlympianGodsController < ApplicationController

    def index
        gods = OlympianGod.all
        
    end
end
