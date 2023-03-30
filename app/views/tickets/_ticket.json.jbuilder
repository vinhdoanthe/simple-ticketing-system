json.extract! ticket, :id, :user_id, :title, :description, :files, :status, :priority, :ticket_type, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
json.description ticket.description.to_s
json.files do
  json.array!(ticket.files) do |file|
    json.id file.id
    json.url url_for(file)
  end
end
