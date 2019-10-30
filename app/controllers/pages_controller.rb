class PagesController < ApplicationController
  # Disable to help during the development period. Remember to able this feature for production
  skip_before_action :authenticate_user!, only: :home

  def home
    @products = Product.all
  end

  def landing
  end
end
