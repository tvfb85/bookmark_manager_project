feature 'create a new link' do
  scenario 'adds a link title and url' do
    visit '/'
    visit '/links/new'
    fill_in('title', with: "Stackoverflow")
    fill_in('url', with: "http://stackoverflow.com")
    click_button 'Add Bookmark'
    expect(page).to have_content 'Stackoverflow'
  end
end
