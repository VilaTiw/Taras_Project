class MarketsController < ApplicationController

    def index
        @data = CoinInfoService.new().call
    end
end
