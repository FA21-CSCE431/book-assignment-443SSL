# location: spec/unit/price_unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'JK Rowling', price: 6.5, published_date: Date.new(1997, 6, 26))
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a value' do
    subject.price = nil
    expect(subject).not_to be_valid
  end
end