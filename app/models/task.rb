class Task < ApplicationRecord
    has_many :lists, dependent: :destroy
    has_many :boards, through: :lists
end
