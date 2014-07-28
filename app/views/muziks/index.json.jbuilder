json.array!(@muziks) do |muzik|
  json.extract! muzik, :id, :name, :format, :length_min, :length_sec, :size
  json.url muzik_url(muzik, format: :json)
end
