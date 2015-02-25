class User

	attr_reader :name, :password

	def initialize(args)
		@name = args.fetch(:name)
		@password = args.fetch(:password)
	end

end
