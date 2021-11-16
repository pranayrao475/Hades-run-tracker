class RunsController < ApplicationController

    def create
        run = Run.create(run_params)
        render json: run, status: :created
    end

    private
    def run_params
        params.require(:run).permit(:cleared_levels)
    end
end
