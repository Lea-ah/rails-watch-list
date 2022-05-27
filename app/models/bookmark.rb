class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # comment cannot be shorter than 6 characters
  validates :comment, presence: true, length: { minimum: 6 }
  # is unique for a given movie/list couple
  validates_uniqueness_of :movie, scope: :list
end
