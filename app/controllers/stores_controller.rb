class StoresController < ApplicationController
  require 'open-uri'
  require 'api.rb'

  def index 
    @stores = API.get_stores
  end

  def show
    parsed_json = JSON.parse(open("http://lcboapi.com/stores/#{params[:id]}").read)
    @store = parsed_json['result']
  end
end
