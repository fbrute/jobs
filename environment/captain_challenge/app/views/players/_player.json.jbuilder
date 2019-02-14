json.extract! player, :id, :name, :life_points, :attack_points, :created_at, :updated_at
json.url player_url(player, format: :json)
