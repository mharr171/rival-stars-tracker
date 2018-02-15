json.extract! tournament_log, :id, :player_id, :points, :created_at, :updated_at
json.url tournament_log_url(tournament_log, format: :json)
