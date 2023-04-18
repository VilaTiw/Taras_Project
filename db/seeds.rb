data = CoinInfoService.new().call

for item in data 
    new_coin = Coin.create(
        symbol: item["symbol"],
        name: item["name"],
        image: item["image"],
        current_price: item["current_price"],
        price_change_24h: item["price_change_24h"],
        price_change_percentage_24h: item["price_change_percentage_24h"]
    )
end