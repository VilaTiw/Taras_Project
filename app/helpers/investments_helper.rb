module InvestmentsHelper

  def get_final_dolars(invest)
    sum = 0
    invest.each do |item|
      if current_user.id == item.user_id
        sum += item.dollar_change
      end
    end 
    return sum.round(2)
  end

  def percentage(number, total)
    (number.to_f / total.to_f) * 100
  end

  def get_final_percents(invest)
    sum = 0
    invest.each do |item|
      if current_user.id == item.user_id
        sum += item.invest
      end
    end 
    return percentage(get_final_dolars(invest),sum).round(2)
  end
end
