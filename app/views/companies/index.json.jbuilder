json.array!(@companies) do |company|
  json.extract! company, :id, :name, :description, :slogan, :logo, :clave
  json.url company_url(company, format: :json)
end
