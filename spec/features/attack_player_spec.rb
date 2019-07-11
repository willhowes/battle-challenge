feature "Attack player" do

    scenario 'Players can attack each other' do
        sign_in_and_play
        click_link "Attack"
        expect(page).to have_content "Kay: 50HP"
    end
end
