require 'rails_helper'

RSpec.describe Performance, type: :model do
  describe 'finders' do
    let(:user) { create(:user) }
    let(:event) { create(:event) }
    let(:performance) { create(:performance, event: event) }
    let(:unsold_ticket) { create(:ticket, status: 'unsold', performance: performance, user: user) }
    let(:sold_ticket) { create(:ticket, status: 'sold', performance: performance, user: user) }

    it '#unsold tickets' do
      expect(performance.unsold_tickets(1)).to eq([unsold_ticket])
    end
  end
end
