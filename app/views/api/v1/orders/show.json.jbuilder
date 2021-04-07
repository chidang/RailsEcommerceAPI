json.success true
json.order do |json|
  json.partial! 'order', order: @order
end
