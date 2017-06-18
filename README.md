Project ATBM_HTTT@HCMUS

*Using:

- Ruby-2.3.3
- Rails-5.1.1
- Oracle Instant Client 12.2

*Run at heroku on remote database oracle (Maybe not working when database offline):

*Setting:

-Tạo tài khoản 'ruby' để đăng nhập kết nối oracle = SQLPLUS
-SQLPLUS tìm trong thanh search/cortana của win 10/StartMenu hoặc trong thư mục cài đặt /product\11.2.0\dbhome_1\BIN
-Đăng nhập bằng tài khoản SYS:
*Username: SYS as SYSDBA
*Password: Khi cài oracle có nhập

SQL> GRANT CONNECT, RESOURCE TO ruby IDENTIFIED BY ruby;
SQL> ALTER USER ruby DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp;
SQL> EXIT

Sau đó chỉnh sửa file database.yml trong /config của project như sau:

development:
  adapter: oracle_enhanced
  database: //localhost:1521/orcl
  username: ruby
  password: ruby

Trong đó: 'orcl' là tên (SID) của database, sửa lại nếu khác.

- Open command at root directory project (Shilf + Rightclick -> OpenCommand here)
- bundle install
- rails s