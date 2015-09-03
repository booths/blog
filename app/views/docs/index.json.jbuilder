json.array!(@docs) do |doc|
  json.extract! doc, :id, :title, :body
  json.url doc_url(doc, format: :json)
end
