require 'spec_helper'

feature 'the fight page' do
  scenario 'shows which player was attacked' do
    sign_in_and_play
    click_button "Attack Birthday!"
    expect(page).to have_content 'You attacked Birthday'
  end

  scenario 'shows the new health of the player that has been attacked' do
    sign_in_and_play
    click_button "Attack Birthday!"
    expect(page).to have_content 'Birthday\'s health has been reduced to 50HP'
  end
end
