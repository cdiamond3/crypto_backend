class CreateInputsController < ApplicationController

    def index 
        @createdInput = CreateInput.all
        render json: @createdInput
    end


    def create
        new_create_input = CreateInput.create(params[:userInput] )
        render json: new_create_input
    end

end