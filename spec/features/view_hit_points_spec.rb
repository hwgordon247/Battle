feature 'view hit points' do
  scenario 'player 1 viewing player 2' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Mittens HP: 100'
  end
end
