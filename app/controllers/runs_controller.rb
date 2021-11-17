class RunsController < ApplicationController

    def index #/runlog
        current_user = User.find_by(id: session[:user_id])
        if current_user
            render json: current_user.runs
        else
            render json: { error: "No user logged in"}, status: :unauthorized
        end
    end

    def create #/escape
        byebug
        run = Run.create!(params.permit(:cleared_levels))
        boons = ChosenBoon.create(params.permit(:boon_id))
        run.chosen_boons << boons
        render json: run, status: :created
    end

    private
    def render_errors
        return render json: { error}
    end
end
