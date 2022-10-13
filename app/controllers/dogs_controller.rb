class DogsController < ApplicationController
    wrap_parameters format: []
    
    def index
    dogs = Dog.all
    render json: dogs, status: :ok
    end

    def show
        dog = Dog.find_by(id:params[:id])
        if dog
            render json: dog, status: :ok
        else 
            render json: {error: "dog not found"}, status: :not_found
        end 
    end    

    def create
        dog = Dog.create(dog_params)
        render json: dog, status: :created
    end
       
    private
    
    def dog_params
    params.permit(:breed, :image, :likes, :price)
    end
        
end
