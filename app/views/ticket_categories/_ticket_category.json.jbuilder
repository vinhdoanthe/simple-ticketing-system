json.extract! ticket_category, :id, :ticket_id, :category_id, :created_at, :updated_at
json.url ticket_category_url(ticket_category, format: :json)
