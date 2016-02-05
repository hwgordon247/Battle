def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Heather'
  fill_in :player_2, with: 'Birthday'
  click_button 'Submit'
end

def attack_confirm
  click_button "Attack!"
  click_button "Switch"
end
