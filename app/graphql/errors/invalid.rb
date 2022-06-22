module Errors
	class Invalid < GraphQL::ExecutionError
		def to_h
				super.merge({ "extensions" => {"code" => "INVALID"} })
		end
	end
end
