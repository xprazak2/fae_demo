class StaticPagesController < ApplicationController
  def home
    @item = HomePage.instance
  end

  def products
    @products = Product.all
  end
end
