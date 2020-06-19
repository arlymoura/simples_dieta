require 'rails_helper'

RSpec.describe Dietary, type: :model do

  describe 'validations' do
    it { is_expected.to validate_presence_of(:weight) }
    it { is_expected.to validate_presence_of(:height) }
    it { is_expected.to validate_presence_of(:ideal_weight) }
    it { is_expected.to validate_presence_of(:start_date) }
    it { is_expected.to validate_presence_of(:end_date) }
  end

  context 'associations' do
    it { is_expected.to belong_to(:user) }
    it { should have_many(:meals) }
  end
end
