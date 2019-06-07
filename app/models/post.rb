class Post < ApplicationRecord
    has_many :comment
    :acts_as_paranoid
end
