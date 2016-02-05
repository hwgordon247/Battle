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

feature 'displays who is attacking' do
  scenario 'player 1 starts' do
    sign_in_and_play
    expect(page).to have_content('Heather turn to attack')
  end


end
