json.extract! request, :id, :user_id, :accomodation_id, :from, :to, :status, :created_at, :updated_at
json.url request_url(request, format: :json)