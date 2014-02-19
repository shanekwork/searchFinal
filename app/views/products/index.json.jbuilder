json.array!(@products) do |product|
  json.extract! product, :id, :itemcode, :productcode, :description, :keyword, :url, :image
  json.url product_url(product, format: :json)
end
