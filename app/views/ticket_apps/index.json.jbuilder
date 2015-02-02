json.array!(@ticket_apps) do |ticket_app|
  json.extract! ticket_app, :id, :name, :seat_id_seq, :address, :price_paid, :email_address
  json.url ticket_app_url(ticket_app, format: :json)
end
