json.array! @product_categoryies do |pc|
  json.name pc.name
  json.status pc.status
  json.created_at pc.created_at
end
