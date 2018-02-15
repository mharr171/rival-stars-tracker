class Player < ApplicationRecord
  has_many :tournament_logs, dependent: :destroy
end
