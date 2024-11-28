class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, presence: true, allow_blank: false
  validates :list_id, presence: true, allow_blank: false
  validates :movie_id, uniqueness: { scope: :list_id, message: "Un list/movie doit être unique"}
end
