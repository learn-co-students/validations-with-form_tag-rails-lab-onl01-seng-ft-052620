class Post < ActiveRecord::Base

    validates :title, presence: true
    validates :content, length: {minimum: 100}

    VALID_CATEGORIES = ["Fiction","Non-Fiction"]
    validates :category, inclusion: {in: VALID_CATEGORIES}

end
