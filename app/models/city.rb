class City < ApplicationRecord
  validates_presence_of :name
  has_many :travels
  has_many :movies
  has_many :restaurants
  has_many :parks
  has_many :bars
  has_many :sports
  has_many :families
end
