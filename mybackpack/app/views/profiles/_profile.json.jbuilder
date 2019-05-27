json.extract! profile, :id, :first_name, :last_name, :birthday, :gender, :phone, :about_me, :hiking_count, :weight, :height, :bpws, :bpvs, :bpww, :bpvw, :created_at, :updated_at
json.url profile_url(profile, format: :json)
