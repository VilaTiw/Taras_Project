namespace :investments_task do

  desc 'Updates coin price, price_change_24h in $ and price_change_percentage_24h in db'

  task update_info: :environment do
    investments = Investment.all
    investments.each do |item|
      puts item.coin_name
      invest = Investment.find_by_id(item.id).update(
        dollar_change: add_percent(item.invest,
          percent_change(item.shopping_price,
          Coin.find_by_name(item.coin_name).price)) - item.shopping_price,
        percentage_change: percent_change(item.shopping_price, Coin.find_by_name(item.coin_name).price),
        updated_at: Time.now.strftime("%d/%m/%Y %H:%M")
      )

    end
  end

  def percent_change(start_number, end_number)
    percent_change = ((end_number - start_number).to_f / start_number) * 100
  end

  def add_percent(number, percent)
    return number * (1 + percent/100.0)
  end

end