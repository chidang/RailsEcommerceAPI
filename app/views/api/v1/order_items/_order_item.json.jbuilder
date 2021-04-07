json.extract! order_item, :id, :quantity, :order_id, :product_id, :created_at, :updated_at
json.url api_v1_order_item_url(order_item, format: :json)
