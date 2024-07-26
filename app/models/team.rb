class Team < ApplicationRecord
    has_many :players
    has_many :matches
    validates :name, presence:true, uniqueness:true
    validates :country, presence:true
    validates :founded, presence:true, numericality: { only_integer: true, greater_than: 1901 }
    scope :from_country, ->(country){where(country: country)}
    scope :founded_after, ->(year){where('founded_year > ?',(year))}
end
