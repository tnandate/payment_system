class PaymentLineItem < ApplicationRecord
  belongs_to :payment
  belongs_to :buyable, polymorphic: true
end
