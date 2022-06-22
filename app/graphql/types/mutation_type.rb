module Types
  class MutationType < Types::BaseObject
    field :create_author, mutation: Mutations::CreateAuthor, null: true
  end
end
