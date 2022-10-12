class UsersController < ApplicationController
    def index
        render json: User.all, status: :ok
    end

    def show
        user = User.find_by(id:params[:id])
        if user
            render json: user, status: :ok
        else 
            render json: {error: "user not found"}, status: :not_found
        end  

    end
end
