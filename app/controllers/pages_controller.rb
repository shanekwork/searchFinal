class PagesController < ApplicationController

  def welcome
  	@products = Product.all
  end

  def extra

  end

end
