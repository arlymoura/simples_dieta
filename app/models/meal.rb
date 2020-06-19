class Meal < ApplicationRecord
  belongs_to :dietary
  validates_presence_of :kind, :description, :hour
end
