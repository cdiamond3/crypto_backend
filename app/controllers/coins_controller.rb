class CoinsController < ApplicationController
  def index
    response = Faraday.get(
      "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false"
    )
    coins = JSON.parse(response.body)
    if coins
      render json: coins
    else
      render json: {
        "message" => "not working",
      }
    end
  end
end
