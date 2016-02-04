require 'spec_helper'

feature 'switches the player after attack' do
  scenario 'after player 1 attacks it player twos turn' do
    sign_in_and_play
    click_button('Attack Birthday!')
    click_button('Switch')
    expect(page).to have_button "Attack Heather!"
    end

  end
