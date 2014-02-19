class Product < ActiveRecord::Base

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Product.create! row.to_hash
		end
	end

	def self.search(term)
		where("description ILIKE :term or keyword ILIKE :term", term: "%#{term}%")
	end

end
