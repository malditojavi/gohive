json.array!(@events) do |event|
  json.extract! event, :id, :date, :name, :description, :city
  json.url event_url(event, format: :json)
end
