class Rate < ApplicationRecord
  def currency_converter
     @rate * 0.89
  end
end
