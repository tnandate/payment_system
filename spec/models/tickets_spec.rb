require 'rails_helper'

RSpec.describe Ticket, type: :model do
  it 'can move to waiting' do
    user   = create(:user)
    ticket = build(:ticket, status: 'unsold', performance: create(:performance, event: create(:event)))
    ticket.place_in_cart_for(user)
    expect(ticket.user).to eq(user)
    expect(ticket.status).to eq('waiting')
  end
end
