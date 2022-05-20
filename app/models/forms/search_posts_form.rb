class SearchPostsForm
  include ActiveModel::Model
  include ActiveModel::Attributes

  attribute :status, :integer
  attribute :title, :string
  attribute :body, :string

  def search
  end
end