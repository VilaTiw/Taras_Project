namespace :coins_task do
  desc 'Updates coin price, price_change_24h in $ and price_change_percentage_24h in db'

  task update_info: :environment do
    info = CoinInfoService.new.call
    
    info.each do |item|
      Coin.find_by_symbol(item["symbol"]).update(
        price: item["current_price"],
        change_24h_d: item["price_change_24h"],
        change_24h_p: item["price_change_percentage_24h"],
        updated_at: Time.now.strftime("%d/%m/%Y %H:%M")
      ) 
    end
  end
end