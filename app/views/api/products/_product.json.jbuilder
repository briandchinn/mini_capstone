json.id product.id
json.name product.name
json.price product.price
json.description product.description
json.discount product.is_discounted?
json.in_stock product.in_stock
json.supplier_name product.supplier.name
json.images product.images


json.formatted do
  json.price number_to_currency(product.price)
  json.tax number_to_currency(product.tax)
  json.total number_to_currency(product.total)
end
