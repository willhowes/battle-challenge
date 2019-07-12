feature "Attack player" do
  
    scenario 'HP points reduce when player attacked' do
        sign_in_and_play
        click_button "ATTACK!"
        expect(page).to have_content "Kay: 50HP"
    end
end
