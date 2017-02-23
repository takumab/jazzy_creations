require 'rails_helper'

RSpec.describe 'Cards', type: :request do
  # Initialize test data
  let!(:cards) { create( :card) }
  let(:card_id) { cards.first.id }

  # Test suite for GET /cards
  describe 'GET /' do
    # Make HTTP requests before each example
    before { get '/' }

    context 'when user comes to site' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns all cards' do
        expect(:card.size).to eq(10)
      end
    end
  end
end
