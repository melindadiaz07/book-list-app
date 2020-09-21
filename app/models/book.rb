class Book < ApplicationRecord
    has_many :book_reading_lists
    has_many :reading_lists, through: :book_reading_lists
end
