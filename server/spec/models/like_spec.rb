require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'association' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:video) }
  end
end
