class MarketsController < ApplicationController

    def index
        # @data = CoinInfoService.new().call
        @data = Coin.all
    end
end
