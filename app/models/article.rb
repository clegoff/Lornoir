class Article < ApplicationRecord
    has_one :title
    has_one :body
    has_one :price
    has_one :img
end
