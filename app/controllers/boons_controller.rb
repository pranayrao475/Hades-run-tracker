class BoonsController < ApplicationController
    def godBoons
        selectedGod = OlympianGod.find(params[:id])
        godsBoons = Boon.where(olympian_god_id: selectedGod.id)
        render json: godsBoons, each_serializer: GodsBoonsSerializer
    end
end
