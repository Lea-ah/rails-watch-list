class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy

  validates :name, presence: true
  validates_uniqueness_of :name


end

# name cannot be blank
# name is unique
# should destroy child saved movies when destroying self
