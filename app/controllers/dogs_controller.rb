class DogsController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
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
        dog = Dog.create!(dog_params)
        render json: dog, status: :created
    end

    def update
        dog = Dog.find_by(id: params[:id])
        dog.update!(dog_params)
        render json: dog, status: :accepted
        end
        
        def destroy
        dog = Dog.find_by(id: params[:id])
        dog.destroy
        head :no_content
        end
       
    private
    
    def dog_params
    params.permit(:breed, :image, :likes, :price)
    end
        
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
