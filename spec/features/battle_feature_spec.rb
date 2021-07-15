
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

  scenario "print's current player turn" do
    sign_in_and_play
    expect(page).to have_text('Current turn: Player 1')
  end
  
  feature 'Attacking the opponent!' do
    scenario 'confirms I have attacked' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_text('Karim attacked Pav!')
    end

    scenario 'reduces opponent hp by 10' do
      sign_in_and_play
      expect { click_link 'Attack' } .to change { $game.player2.hp }.by(-10)
    end
  end


end