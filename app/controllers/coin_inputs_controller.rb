class CoinInputsController < ApplicationController

    def index
        @coin_inputs = CoinInput.all
        render json: @coin_inputs
    end

    def show
        @coin_inputs = CoinInput.find(params[:id])
        render json: @coin_inputs
    end

    def create
        @coin_inputs = CoinInput.create(id: params[:id], user_coin_input: params[:user_coin_input], dates: params[:dates])
        render json: @coin_input, status: :created
    end 

    def destroy
        @coin_inputs = CoinInput.find(params[:id])
        @coin_inputs.destroy 
        render json: { message: "You have removed a transaction from your coins list!" }
      end

      def update
        @coin_inputs = CoinInput.find(params[:id])
        @coin_inputs.update
        render json: {message: "this transaction has been updated"}
      end

end
