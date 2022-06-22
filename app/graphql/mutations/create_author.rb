module Mutations
	class CreateAuthor < BaseMutation
    field :author, Types::AuthorType, null: false
		argument :name, String, required: true

    def resolve(args)
			author = Author.create(name: args[:name])
			if author.save
				{author: author}
			else
				raise Errors::Invalid, author.errors[:name].join('')
			end
		end
	end
end