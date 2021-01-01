class Tag < ApplicationRecord
    has_and_belongs_to_many :todos, :join_table => "tags_todos"
    validates :name, uniqueness: true
end
