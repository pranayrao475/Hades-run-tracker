class SessionsController < ApplicationController

    def create  
        user = User.find_by(username: params[:username])
<<<<<<< HEAD
        
=======
>>>>>>> 9c479176ce3467929db1e58b56fdb621db59c8f3
        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: 200
            puts "#{user.username} logged in"
        else
            render json: { error: "Invalid username or password"}, status: :unauthorized
        end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

end
