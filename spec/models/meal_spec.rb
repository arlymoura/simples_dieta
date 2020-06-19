require 'rails_helper'

RSpec.describe Meal, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_presence_of(:kind) }
    it { is_expected.to validate_presence_of(:hour) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:dietary) }
  end
end
