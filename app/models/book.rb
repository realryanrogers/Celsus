class Book < ApplicationRecord

	def self.booksearch(book)

		booktemp = book
		isbn = book.isbn
		if isbn != nil
			data = Openlibrary::Data
			book_data = book_data = data.find_by_isbn(isbn)
			booktemp.author = book_data.authors.first["name"]
			booktemp.title = book_data.title
			booktemp.cover_image_url = book_data.cover["medium"]
		end
		return booktemp

	end

end
