require 'bookmark_manager'

describe BookmarkManager do

  before(:each) do
    Link.create(title: "Example Page", url: "http://example.com")
  end

  describe '#get_all_links' do
    it 'should get the database collection of links' do
      expect(subject.get_all_links).to be_an_instance_of DataMapper::Collection
    end
  end

  describe '#links_list' do
    it 'should list out all the links' do
      expect(subject.links_list).to be_an_instance_of Array
      expect(subject.links_list[0]).to be_an_instance_of Hash
    end
  end

  describe '#link_formatter' do
    it 'should convert a Link in to a Hash' do
      link = subject.get_all_links[0]
      expect(subject.link_formatter(link)).to be_an_instance_of Hash
    end
  end

  describe '#show_links' do
    it 'should show all the links' do
      expect(subject.show_links).to be_an_instance_of Array
      expect(subject.show_links[0]).to be_an_instance_of Hash
    end
  end

  describe '#add_link' do
    it 'should add new link to the database' do
      expect{subject.add_link({"title"=>"Stackoverflow", "url"=>"http://stackoverflow.com"})}.to change{subject.links_list.length}.by 1
    end
  end

end
