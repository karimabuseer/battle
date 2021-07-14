
RSpec.feature "Battle" do
  scenario "expect homepage to contain text" do
    visit "/"
    expect(page).to have_text('Testing infrastructure working!')
  end

  scenario "prints input names on screen" do
    visit "/start_battle"
    fill_in('player1', with: 'Karim')
    fill_in('player2', with: 'Pav')
    click_button('Submit')
    expect(page).to have_text('Player 1: Karim')
    expect(page).to have_text('Player 2: Pav')
  end

  describe '/enter_hp' do
    scenario "print's player 2's HP" do
      visit "/enter_hp"
      fill_in('player2hp', with: '30')
      click_button('Submit')
      expect(page).to have_text('Player 2 HP: 30')
    end
  end
end