class Phongban < ApplicationRecord
    has_many :nhanviens
    has_one :truongphong, :class_name => "Nhanvien", :foreign_key => "trphg"
    has_many :deans
    has_one :diadiem_phg
end
