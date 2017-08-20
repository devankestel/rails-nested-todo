class Task < ActiveRecord::Base
    has_many :completions
    belongs_to :category
end
