feature 'attacking' do

  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'reduce player 2 health by 10 HP' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Mittens HP: 100'
    expect(page).to have_content 'Mittens HP: 90'
  end

  scenario 'reduce Dave\'s health after a switch' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Switch turn'
    click_button 'Attack'
    expect(page).to have_content 'Dave HP: 90'

  end

end
