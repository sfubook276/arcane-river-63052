class Course < ApplicationRecord
    # belongs_to :user
    # include PgSearch
    # pg_search_scope :search, against: [:name]

    def self.search(search)
        if search
            where(["title LIKE ?", "%#{search}%"])
        else
            all
        end
    end 
end