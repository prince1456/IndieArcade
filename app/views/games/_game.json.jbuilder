json.extract! game, :id, :title, :user_id, :last_in_arcade, :times_played, :status, :purchase_url, :game_description, :categories, :key_map, :image, :created_at, :updated_at
json.url game_url(game, format: :json)