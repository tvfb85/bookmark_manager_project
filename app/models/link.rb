class Link
  include DataMapper::Resource
  property :id, Serial
  property :title, Text
  property :url, Text
end
