

feature 'gameover' do
  subject(:player) {Player.new 'Birthday'}
  scenario 'displays the winner' do
    sign_in_and_play
    10.times {attack_confirm}
    click_button 'Attack!'
    expect(page).to have_content'HEATHER WINS!!!'
  end
end
