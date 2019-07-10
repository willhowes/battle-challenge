#   As Player 1,
#   So I can see how close I am to winning
#   I want to see Player 2's Hit Points

feature 'Hit points' do
   scenario 'Player can see opponents hit points' do
     visit('/')
     fill_in :player_1_name, with: 'Will'
     fill_in :player_2_name, with: 'Anastasiia'
     click_button 'Submit'
     expect(page).to have_content "Anastasiia: 60HP"
   end
 end
