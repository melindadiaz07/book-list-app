class Book < ApplicationRecord
    has_many :book_reading_lists
    has_many :reading_lists, through: :book_reading_lists

    def self.all_genres
        self.all.map {|book| book.genre}.uniq
    end

    def add_to_reading_list(lists)
        lists.each do |list_id| 
            if list_id.length == 0
                next
            else
                list = ReadingList.find(list_id.to_i)
                self.reading_lists << list
            end
        end
    end

end
