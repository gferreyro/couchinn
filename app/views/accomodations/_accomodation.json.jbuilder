json.extract! accomodation, :id, :titulo, :descripcion, :imagen, :created_at, :updated_at
json.url accomodation_url(accomodation, format: :json)