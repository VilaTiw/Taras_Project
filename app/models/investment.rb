class Investment < ApplicationRecord
  before_save :set_amount,:set_percentage_change

  private

  def set_amount
    self.amount = invest / shopping_price
  end

  # def set_dollar_change
  #   self.dollar_change = 0
  # end

  def set_percentage_change
    self.percentage_change = 0
  end
end
