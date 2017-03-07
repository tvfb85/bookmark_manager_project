require 'data_mapper'
require 'dm-postgres-adapter'

require_relative '../models/link.rb'

def setup
  DataMapper.setup(:default, 'postgres://localhost/bookmark_manager_test')
  DataMapper.auto_upgrade!
  DataMapper.finalize
end

setup
