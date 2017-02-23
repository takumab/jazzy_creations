require 'rails_helper'

RSpec.describe 'Cards', type: :request do
  # Initialize test data
  let!(:cards) { build_list(:card, 5) }
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
        expect(:cards.size).to eq(5)
      end
    end
  end

  # Test suite for GET /cards/:id
  describe "GET /cards/:id" do
    before { get "/cards/#{card_id}" }

    context 'when card exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end

      it 'returns the card' do
        expect(:card_id).to eq(:card_id)
      end

    end
  end

end
