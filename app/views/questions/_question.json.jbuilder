json.extract! question, :id, :accomodation_id, :user_id, :q, :a, :created_at, :updated_at
json.url question_url(question, format: :json)