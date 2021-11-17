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
        run = Run.create(run_params)
        render json: run, status: :created
    end

    private
    def run_params
        params.require(:run).permit(:cleared_levels)
    end
end
