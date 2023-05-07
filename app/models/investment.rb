class Investment < ApplicationRecord
  before_save :create_otp

  private

  def create_otp
    self.amount = invest / shopping_price
  end
end
