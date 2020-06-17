class Dietary < ApplicationRecord
  belongs_to :user

  validates_presence_of :weight, :height, :ideal_weight, :start_date, :end_date
end
