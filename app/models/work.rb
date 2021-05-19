class Work < ApplicationRecord
  belongs_to :user
  delegated_type :workable, types: %w[Book Movie]
end
