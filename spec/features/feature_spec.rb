feature App do

  Link.create(title: "Example Page", url: "http://example.com")

  scenario "logging into homepage gives list of bookmarks" do
    visit '/'
    expect(page).to have_content("http://example.com")
  end
end
