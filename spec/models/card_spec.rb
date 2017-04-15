require 'rails_helper'

RSpec.describe Card, type: :model do

	it "has a valid factory" do 
		expect(build(:card)).to be_valid
	end

	let(:title) { build(:card) }
	let(:description) { build(:card) }
	let(:price) { build(:card) }
	let(:c_image) { build(:card) }


	describe "ActiveModel validations" do
		it { expect(title).to validate_presence_of(:title) }
		it { expect(description).to validate_presence_of(:description) }
		it { expect(description).to validate_presence_of(:price) }
		xit { expect(description).to validate_acceptance_of(:c_image) }
	end
end
