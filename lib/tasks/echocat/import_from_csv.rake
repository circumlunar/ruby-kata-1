namespace :echocat do
  require 'csv'

  desc 'Import csv files into models'
  task import_from_csv: [:environment] do
    authors_file = File.read('data/authors.csv')
    authors_csv = CSV.parse(authors_file, col_sep: ";", headers: true) # encoding: ???

    authors_csv.each do |author_row|
      author_row = author_row.to_hash

      email = author_row['email']
      first_name = author_row['firstname']
      last_name = author_row['lastname']

      Author.where(email: email).first_or_create do |author|
        author.first_name = first_name
        author.last_name = last_name
      end
    end


    books_file = File.read('data/books.csv')
    books_csv = CSV.parse(books_file, col_sep: ";", headers: true) # encoding: ???

    books_csv.each do |book_row|
      book_row = book_row.to_hash

      title = book_row['title']
      isbn = book_row['isbn']
      authors = book_row['authors']
      description = book_row['description']

      Edition.where(isbn: isbn).first_or_create do |edition|
        # TODO: find_or_create authors
        edition.title = title
        edition.edition_type = 'book'
        edition.description = description
      end
    end

    # TODO: import from magazines
  end
end
