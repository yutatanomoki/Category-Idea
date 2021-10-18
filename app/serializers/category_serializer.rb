class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :body, :created_at
end
