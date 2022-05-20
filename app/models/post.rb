class Post < ApplicationRecord
  enum status: { draft:0, publish_wait:1, published:2}, _prefix: :status
end
