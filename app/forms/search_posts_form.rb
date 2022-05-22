class SearchPostsForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :status, :integer
  attribute :title_start, :string
  attribute :body_cont, :string

  def search
    relation = Post.distinct
    relation = relation.by_status(status) if status.present?

    title_words.each do |title_word|
      relation = relation.title_start(title_word)
    end

    body_words.each do |body_word|
      relation = relation.body_contain(body_word)
    end

    relation
  end

  private

  def title_words
    title_start.present? ? title_start.split(nil) : []
  end

  def body_words
    body_cont.present? ? body_cont.split(nil) : []
  end

end