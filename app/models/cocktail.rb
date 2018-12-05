class Cocktail < ApplicationRecord
  has_many :doses
  has_many :ingredients, through: :doses, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  include PgSearch

  pg_search_scope :global_search,
    against: [:name],
    associated_against: {
      ingredients: [:name]
    },
    using: {
      tsearch: {prefix: true}
    }

  validates :name, presence: true, uniqueness: true
end
