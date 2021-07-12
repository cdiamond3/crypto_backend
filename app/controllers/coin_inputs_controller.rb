class CoinInputsController < ApplicationController

    def index
        @coin_inputs = CoinInput.all
        render json: @coin_inputs
    end

    def create
        @coin_inputs = CoinInput.create(id: params[:id], user_coin_input: params[:user_coin_input], dates: params[:date])
        render json: @coin_input, status: :created
    end 

end
