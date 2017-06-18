class Nhanvien < ApplicationRecord
    belongs_to :phongban, :foreign_key => "phg"
    belongs_to :quanly, :class_name => "Nhanvien", :foreign_key => "manql"
    has_many :phancongs
    has_many :deans, through: :phancongs
end
