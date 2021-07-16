class CoinInputsController < ApplicationController
    before_action :find_coin, only: [:show, :destroy, :update]

  def index
    @coins = CoinInput.all
    render json: @coins
  end

  def show
    render json: @coin
  end

  def create
    @coin_inputs = CoinInput.create(id: params[:id], user_coin_input: params[:user_coin_input], dates: params[:dates], name: params[:name])
    render json: @coin_input, status: :created
  end

  def destroy
    @coin.destroy
    render json: { message: "You have removed a transaction from your coins list!" }
  end

  def update
    @coin.update(id: params[:id], user_coin_input: params[:user_coin_input])
    render json: { message: "this transaction has been updated" }
  end

  private

  def find_coin
    @coin = CoinInput.find(params[:id])
  end

  

end
