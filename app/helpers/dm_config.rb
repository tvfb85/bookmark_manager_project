require 'data_mapper'
require 'dm-postgres-adapter'

require_relative '../models/tag.rb'
require_relative '../models/link.rb'
require_relative './model_helper'

def setup
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
end

setup
