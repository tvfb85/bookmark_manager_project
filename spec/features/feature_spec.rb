feature App do

  scenario "logging into homepage gives list of bookmarks" do
    LinkTag.create(:link => Link.create(title: "Example Page", url: "http://example.com"), tag: Tag.first_or_create(:name => "misc"))
    visit '/'
    expect(page).to have_content("http://example.com")
  end
end
