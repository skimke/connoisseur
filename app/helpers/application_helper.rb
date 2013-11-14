module ApplicationHelper
  def format_price(price_in_cents)
    price_in_dollars = price_in_cents.to_f / 100
    sprintf("$%.2f", price_in_dollars)
  end

  def format_time(time)
    hour = time / 60
    mins = time % 60
    return "#{hour}:%{mins}"
  end
end
