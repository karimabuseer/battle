
RSpec.feature "Battle" do
  scenario "expect homepage to contain text" do
    visit "/"
    expect(page).to have_current_path('/start_battle')
  end

  scenario "prints input names on screen" do
    sign_in_and_play
    expect(page).to have_text('Player 1 (Karim)')
    expect(page).to have_text('Player 2 (Pav)')
  end

  scenario "print's player 2's HP" do
    sign_in_and_play
    expect(page).to have_text('Player 2 (Pav): 30HP')
  end
  
  feature 'Attacking the opponent!' do
    scenario 'attacking Player 2' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_text('Karim attacked Pav!')
    end
  end


end