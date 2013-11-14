class ProductsController < ApplicationController
  require 'open-uri'
  require 'api.rb'

  def index
    @products = API.get_products
  end

  def show
    @product = API.get_product
  end
end