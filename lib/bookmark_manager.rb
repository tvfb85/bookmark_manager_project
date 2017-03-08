require './lib/db_helper'

class BookmarkManager
  include DBHelper

  def show_links
    links_list
  end

  def add_link(params)
    insert_into_db(format_for_db(params))
  end

private
  def format_for_db(params)
    params.inject({}) { |params, (k, v)| params[k.to_sym] = v; params }
  end

end
