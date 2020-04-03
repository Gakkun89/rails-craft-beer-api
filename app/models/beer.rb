class Beer < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_term, against: [:name, :brewery, :style, :desc],
    using: {
      tsearch: {
        any_word: true,
        prefix: true
      }
    }
end
