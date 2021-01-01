class Todo < ApplicationRecord
    has_and_belongs_to_many :tags, :join_table => "tags_todos"
end
