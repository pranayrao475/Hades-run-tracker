class RunsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_invalid

    def index #/runlog
        render json: @user&.runs
    end

    def create #/escape
        byebug
        run = Run.create!(params.permit(:cleared_levels, :user_id))
        boons = ChosenBoon.create(params.permit(:boon_id))
        run.chosen_boons << boons
        render json: run, status: :created
    end

    private
    def current_user
        @user = User.find(session[:user_id])
    end
    def render_invalid
        render json: { error: "No user found"}, status: :unauthorized
    end
end
