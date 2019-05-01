json.extract! route, :id, :title, :description, :start_date, :end_date, :duration, :chain_id, :user_id, :complexity_id, :publication, :settlement_dep, :settlement_arr, :created_at, :updated_at
json.url route_url(route, format: :json)
