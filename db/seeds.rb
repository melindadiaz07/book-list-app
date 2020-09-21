require "faker"

Book.destroy_all
ReadingList.destroy_all
BookReadingList.destroy_all

10.times do 
    Book.create(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, description: Faker::Quote.robin)
    ReadingList.create(name: Faker::Coffee.blend_name, book_club: Faker::Sports::Basketball.team)
end

10.times do
    book_id_array = Book.all.map{|book| book.id}
    reading_list_ids = ReadingList.all.map {|rl| rl.id }
    BookReadingList.create(book_id: book_id_array.sample, reading_list_id: reading_list_ids.sample)
end


