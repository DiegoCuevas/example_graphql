module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :all_authors, String, null: false, description: "All authors"
    field :get_author, String, null: false, description: "Find author" do 
      argument :id, Integer, required: true
    end
    field :get_book_by_author, String, null: false do
      argument :id, Integer, required: true
    end
    field :get_book_by_name, String, null: false do
      argument :name, String, required: true
    end

    def all_authors
      Author.all
    end

    def get_author(id: nil)
      Author.find(id)
    end

    def get_book_by_author(id: nil)
      Book.where(author_id: id)
    end

    def get_book_by_name(name: nil)
      Book.where(name: name)
    end
  end
end
