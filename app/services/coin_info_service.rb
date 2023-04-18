class CoinInfoService
    BAZE_URL = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=50&page=1&sparkline=false&locale=en"
  
    def call
      response = Net::HTTP.get_response(uri)
      JSON.parse(response.body)
    end
  
    private
    
    def uri
      return @uri if defined?(@uri)
      @uri = URI(BAZE_URL)
      @uri
    end
  end
  