class DogsController < ApplicationController
    wrap_parameters format: []
    
    def index
    dogs = Dog.all
    render json: dogs, status: :ok
    end

end
