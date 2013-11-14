class API
  def self.get_products
    JSON.parse(open('http://lcboapi.com/products?per_page=30').read
  end

  def self.get_product
    parsed_json = JSON.parse(open("http://lcboapi.com/products/#{params[:id]}").read)
    parsed_json['result']
  end

  def self.get_stores
    JSON.parse(open('http://lcboapi.com/stores').read)
  end

  def self.get_store
    parsed_json = JSON.parse(open("http://lcboapi.com/stores/#{params[:id]}").read)
    parsed_json['result']
  end
end