json.extract! series, :id, :round, :conference, :top_seed_id, :bottom_seed_id, :top_seed_wins, :bottom_seed_wins, :winner_id, :status, :next_game_at, :season, :created_at, :updated_at
json.url series_url(series, format: :json)
