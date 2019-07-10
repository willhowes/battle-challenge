feature 'Enter names' do

  scenario 'Players enter their names' do
    visit('/')
    fill_in :player_1_name, with: 'Will'
    fill_in :player_2_name, with: 'Anastasiia'
    click_button 'Submit'
    expect(page).to have_content 'Will vs. Anastasiia'
  end
end
