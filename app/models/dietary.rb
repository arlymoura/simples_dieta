class Dietary < ApplicationRecord
  belongs_to :user
  has_many :meals, dependent: :destroy
  accepts_nested_attributes_for :meals, allow_destroy: true, reject_if: proc { |attr| attr['description'].blank? || attr['hour'].blank?  }
  validates_presence_of :weight, :height, :ideal_weight, :start_date, :end_date
end
