class RunsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_invalid
before_action :current_user

    def index #/runlog
        render json: @user&.runs
    end

    def create #/escape
        byebug
        run = Run.create!(cleared_levels: params[:cleared_levels], user_id: session[:user_id])
        params[:chosenBoons].each {|boon| ChosenBoon.create!(boon_id: boon, run_id: run.id)} 
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
