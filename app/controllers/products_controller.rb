class ProductsController < ApplicationController
  require 'open-uri'

  def index
    products_json = open('http://lcboapi.com/products').read
    @products = JSON.parse(products_json)
  end

  def show
    product_json = open("http://lcboapi.com/products/#{params[:id]}").read
    parsed_json = JSON.parse(product_json)
    @product = parsed_json['result']
  end
end