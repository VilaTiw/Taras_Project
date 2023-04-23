class MarketsController < ApplicationController

  helper_method :sort_column, :sort_direction 
    def index
      @data = Coin.order(sort_column + ' ' + sort_direction)
    end

    private

    def sort_column
      Coin.column_names.include?(params[:sort]) ? params[:sort] : "price"
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
    end
end
