feature App do

  scenario "logging into homepage gives list of bookmarks" do
    Link.create(title: "Example Page", url: "http://example.com")
    visit '/'
    expect(page).to have_content("http://example.com")
  end
end
