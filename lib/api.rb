class API
  def self.get_products
    JSON.parse(open('http://lcboapi.com/products?per_page=30').read)
  end

  def self.get_stores
    JSON.parse(open('http://lcboapi.com/stores').read)
  end
end