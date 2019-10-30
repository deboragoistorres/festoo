class PagesController < ApplicationController
  # Disable to help during the development period. Remember to able this feature for production
  skip_before_action :authenticate_user!, only: :home

  def home
    @products = Product.all
  end

  def my_products
    @products = Product.where(user: current_user)
    @bookings = Booking.joins(:product).where(products: { user: current_user })
  end

  def sobre
  end

  def fale_conosco
  end

  def termos_uso
  end
end
