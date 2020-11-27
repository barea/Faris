json.extract! checkin, :id, :store_id, :costumer_id, :temp, :datetime, :created_at, :updated_at
json.url checkin_url(checkin, format: :json)
