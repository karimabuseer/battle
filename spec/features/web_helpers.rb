def sign_in_and_play
  visit "/"
  fill_in('player1', with: 'Karim')
  fill_in('player2', with: 'Pav')
  click_button('Submit')
end

def attack_and_proceed
  click_link 'Attack'
  click_link 'Next turn'
end
