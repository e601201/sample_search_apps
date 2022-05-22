class SearchPostsForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :status, :integer
  attribute :title, :string
  attribute :body, :string

  def search
    relation = Post.distinct
    relation = relation.by_status(status) if status.present?

    title_words.each do |word|
      relation = relation.title_contain(word)
    end

    body_words.each do |word|
      relation = relation.body_contain(word)
    end

    relation
  end

  private

  def title_words
    title.present? ? title.split(nil) : []
  end

  def body_words
    body.present? ? body.split(nil) : []
  end

end