# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nv = Nhanvien.create(tennv:'Chí Minh')
Phongban.create(tenpb:'Phong nhan su', truongphong: Nhanvien.first)
nv.phongban = Phongban.first
nv2 = Nhanvien.new(tennv:'Hào', phongban: Phongban.first)
nv.quanly = nv2
nv2.quanly = nv
nv.save!
nv2.save!
Dean.create(phongban: Phongban.first)
Phancong.create(nhanvien: Nhanvien.first, dean: Dean.first)
Phancong.create(nhanvien: nv2, dean: Dean.first)
