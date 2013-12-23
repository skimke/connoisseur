class ProductsController < ApplicationController
  require 'open-uri'
  require 'api.rb'

  def index
    @products = API.get_products
  end

  def show
    parsed_json = JSON.parse(open("http://lcboapi.com/products/#{params[:id]}").read)
    @product = parsed_json['result']
  end
end