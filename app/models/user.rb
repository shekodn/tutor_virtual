class User < ApplicationRecord
	def self.import(file)
		CSV.foreach(file.path, headers: true, quote_char: '"', skip_blanks: true) do |row|
			User.create! row.to_hash
		end
	end
end
