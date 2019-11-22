class Task < ApplicationRecord
    has_many :lists
    has_many :boards, through: :lists
end
