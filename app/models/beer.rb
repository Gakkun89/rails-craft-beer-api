class Beer < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_term, against: [:name, :brewery, :style, :desc],
    using: {
      tsearch: {
        any_word: true,
        prefix: true
      }
    }
  def self.filter_by_abv(options)
    beers = options[:beers]
    max = options[:max].to_i
    min = options[:min].to_i

    beers = beers.select do |beer|
      beer[:abv] <= max && beer[:abv] >= min
    end
    beers
  end
end
