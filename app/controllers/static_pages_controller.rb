class StaticPagesController < ApplicationController
  def home
    @item = HomePage.instance
  end
end
