class Book < ApplicationRecord
    has_many :book_reading_lists
    has_many :reading_lists, through: :book_reading_lists

    def self.all_genres
        self.all.map {|book| book.genre}.uniq
    end

end
