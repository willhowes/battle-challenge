feature "Switch Player" do
    scenario 'Attak will switch players' do
        sign_in_and_play
        click_link "Attack"
        expect(page).to have_content "Kay you may now attack Will"
    end
end
