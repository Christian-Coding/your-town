class City < ApplicationRecord
  # belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :projects

  include PgSearch::Model
pg_search_scope :search_by_city,
  against: [ :name ],
  using: {
    tsearch: { prefix: true }
  }
end
