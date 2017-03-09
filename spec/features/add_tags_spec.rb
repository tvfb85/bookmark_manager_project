feature 'Adding tags' do
  scenario 'add a tag to a new link' do
    visit '/'
    visit '/links/new'
    fill_in 'title', with: 'Guardian website'
    fill_in 'url', with: 'https://www.theguardian.com'
    fill_in 'tags', with: 'news'
    click_button 'Add Bookmark'
    expect(page).to have_content('news')

  end
end
