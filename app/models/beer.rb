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
    max = options[:max].to_i if max.nil?
    min = options[:min].to_i if min.nil?
    p max
    p min
    p options
    if !max.zero? && !min.zero?
      beers = beers.select do |beer|
        beer[:abv] <= max && beer[:abv] >= min
      end
    elsif !max.zero?
      beers = beers.select do |beer|
        beer[:abv] <= max
      end
    elsif !min.zero?
      beers = beers.select do |beer|
        beer[:abv] >= min
      end
    else
      beers
    end
    beers
  end
end
