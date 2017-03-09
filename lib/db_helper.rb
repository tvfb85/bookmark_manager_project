module DBHelper

  def get_all_links
    Link.all
  end

  def links_list
    link_array = []
    get_all_links.each { |link| link_array << link_formatter(link) }
    link_array
  end

  def link_formatter(link)
    {title: link.title, url: link.url}
  end

  def insert_into_db(params)
    LinkTag.create(:link => Link.create(:title => params[:title], :url => params[:url]), :tag => Tag.first_or_create(:name => params[:tags]))
  end

end
