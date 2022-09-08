class BlogPost < ApplicationRecord
    validates :title, :content, presence: true
    validates_uniqueness_of :title
    validates :title, length: {minimum: 10}
end
