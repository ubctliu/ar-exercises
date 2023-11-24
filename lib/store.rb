class Store < ActiveRecord::Base
has_many :employees
validates :name, presence: true, length: { minimum: 3 }   
validates :annual_revenue, presence: true, numericality: { greater_than_or_equal_to: 0 }
validates :carries_mens_or_womens_apparel
end

def carries_mens_or_womens_apparel
  if mens.apparel == false && womens.apparel == false
    errors.add(:base, "Must carry at least men's or women's apparel")
  end
end