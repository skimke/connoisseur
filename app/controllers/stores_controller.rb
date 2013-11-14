class StoresController < ApplicationController
  require 'open-uri'
  require 'api.rb'

  def index 
    @stores = API.get_stores
  end

  def show
    @store = API.get_store
  end
end
