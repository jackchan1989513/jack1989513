json.extract! ticket, :id, :TicketNo, :CompantName, :CustomerName, :Hundler, :Description, :ResponseTime, :Status, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
