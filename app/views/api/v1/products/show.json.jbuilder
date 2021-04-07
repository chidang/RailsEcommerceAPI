json.success true
json.product do |json|
  json.partial! 'details', product: @product
  json.description @product.description
end