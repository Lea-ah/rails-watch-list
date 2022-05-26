class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true
  validates :overview, presence: true
  validates_uniqueness_of :title
end

# title is unique
# title cannot be blank
# overview cannot be blank
