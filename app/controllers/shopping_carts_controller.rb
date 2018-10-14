class ShoppingCartsController < ApplicationController

  def show
    @cart = ShoppingCart.new(current_user)
  end
end
