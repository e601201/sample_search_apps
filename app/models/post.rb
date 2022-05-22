class Post < ApplicationRecord
  enum status: { draft:0, publish_wait:1, published:2}, _prefix: :status

  scope :title_start, ->(word){ where('title LIKE ?', "#{word}%") } 
  scope :body_contain, ->(word){ where('body LIKE ?', "%#{word}%") } 
  scope :by_status, ->(status) { where(status: status) }
end
