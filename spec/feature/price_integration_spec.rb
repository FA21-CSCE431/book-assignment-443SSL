# location: spec/feature/price_integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    fill_in 'Author', with: 'JK Rowling'
    fill_in 'Price', with: 6.5
    select'06', from: 'book[published_date(3i)]'
    select '04', from: 'book[published_date(2i)]'
    select '1997', from: 'book[published_date(1i)]'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end