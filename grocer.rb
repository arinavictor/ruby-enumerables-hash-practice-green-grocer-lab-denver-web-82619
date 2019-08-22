def consolidate_cart(cart)
  new_cart = {}
  cart.each do |items_hash|
    items_hash.each do |item, attribute_hash|
      new_cart[item] ||= attribute_hash
      new_cart[item][:count] ? new_cart[item][:count] += 1 :
      new_cart[item][:count] = 1 
    end
  end
  
  new_cart
end

def apply_coupons(cart, coupons)
  # code here
  coupons.each do |coupon|
    coupon.each do |attribute, value|
      name = coupon[:item]
  if cart["#{name} W/ COUPON"]
    cart["#{name} W/ COUPON"][:count] += 1 
  else 
    cart
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
