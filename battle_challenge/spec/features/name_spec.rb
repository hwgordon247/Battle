# require 'capybara'
require 'spec_helper'
# visit('http://localhost:4567/')

feature 'Enter names' do
  scenario 'submitting names and display health points.' do
    sign_in_and_play
    expect(page).to have_content 'Heather vs. Birthday'
    expect(page).to have_content'Heather: 60HP'
  end
end
