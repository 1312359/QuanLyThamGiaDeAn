class Dean < ApplicationRecord
    belongs_to :phongban
    has_many :phancongs
    has_many :nhanviens, through: :phancongs
end
