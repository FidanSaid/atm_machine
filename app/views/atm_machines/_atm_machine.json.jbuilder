json.extract! atm_machine, :id, :name, :city, :state, :zipcode, :street, :created_at, :updated_at
json.url atm_machine_url(atm_machine, format: :json)