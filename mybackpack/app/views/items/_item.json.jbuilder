json.extract! item, :id, :title, :weight, :volume, :description, :source, :individualy, :object_category_id, :object_importance_id, :season_id, :producer_id, :created_at, :updated_at
json.url item_url(item, format: :json)
