class SessionsController < ApplicationController

    def create  
        user = User.find_by(username: params[:username])
        byebug
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: 200
            puts "#{user.username} logged in"
        end
        render json: { error: "Invalid username or password"}, status: :unauthorized
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

end
