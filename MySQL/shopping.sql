create database shopping;

drop database shopping;

use shopping;

select * from CauHinh;

create table CauHinh(
MaCauHinh int primary key AUTO_INCREMENT,
ManHinh nvarchar(500) null,
HeDieuHanh nvarchar(500) null,
CameraSau nvarchar(500) null,
CameraTruoc nvarchar(500) null,
CPU nvarchar(500) null,
Ram nvarchar(500) null,
Rom nvarchar(500) null,
TheSim nvarchar(500) null,
DungLuongPin nvarchar(500) null,
MaSP int null
);


insert into CauHinh values(1, '6.5, Super Retina XDR', 'IOS 13', '12 MP','12 MP',N'Apple A13 Bionic 6 nhân',
'4GB','512GB','2 SIM','3500 mAh',1);

insert into CauHinh values(2, '6.5, Super Retina XDR', 'IOS 13', '12 MP','12 MP',N'Apple A13 Bionic 6 nhân',
'4GB','256GB','2 SIM','3300 mAh',2);

insert into CauHinh values(3, '6.5, Super Retina', 'IOS 12', '12 MP','12 MP',N'Apple A12 Bionic 6 nhân',
'4GB','256GB','2 SIM','3300 mAh',3);

insert into CauHinh values(4, '5.8, Super Retina', 'IOS 12', '12 MP','7 MP',N'Apple A11 Bionic 6 nhân',
'3GB','256GB','2 SIM','3100 mAh',4);

insert into CauHinh values(5, '5.8, Super Retina', 'IOS 12', '12 MP','7 MP',N'Apple A12 Bionic 6 nhân',
'4GB','64GB','2 SIM','3500 mAh',5);

insert into CauHinh values(6, '6.1, Liquid Retina', 'IOS 12', '12 MP','7 MP',N'Apple A12 Bionic 6 nhân',
'3GB','128GB','2 SIM','3300 mAh',6);

insert into CauHinh values(7, '5.5, Retina HD', 'IOS 12', '12 MP','7 MP',N'Apple A11 Bionic 6 nhân',
'3GB','64GB','1 SIM','2900 mAh',7);

insert into CauHinh values(8, '5.5, Retina HD', 'IOS 13', '12 MP','7 MP',N'Apple A10 Fusion 4 nhân 64-bit',
'3GB','32GB','2 SIM','2800 mAh',8);

insert into CauHinh values(9, '4.7, Retina HD', 'IOS 12', '12 MP','7 MP',N'Apple A10 Fusion 4 nhân 64-bit',
'2GB','32GB','1 SIM','2800 mAh',9);

insert into CauHinh values(10, '5.5, Retina HD', 'IOS 12', '12 MP','7 MP',N'Apple A9 2 nhân 64-bit',
'2GB','32GB','1 SIM','2500 mAh',10);

insert into CauHinh values(11, '6.4, Quad HD+ (2K+)', 'Android 9.0 (Pie)', N'Chính 12 MP & Phụ 12 MP, 16 MP',
'Chính 10 MP & Phụ 8 MP',N'Exynos 9820 8 nhân 64-bit',
'8GB','512GB','2 SIM','4500 mAh',11);

insert into CauHinh values(12, '6.8, Quad HD+ (2K+)', 'Android 9.0 (Pie)', N'Chính 12 MP & Phụ 12 MP, 16 MP, TOF 3D',
'10 MP',N'Exynos 9825 8 nhân 64-bit',
'12GB','256GB','2 SIM','4300 mAh',12);

insert into CauHinh values(13, '6.4, Quad HD+ (2K+)', 'Android 8.1 (Oreo)', N'Chính 12 MP & Phụ 12 MP', N'12 MP','Exynos 9810 8 nhân 64-bit',
'6GB','128GB','2 SIM','4500 mAh',13);

insert into CauHinh values(14, '6.4, Full HD+', 'Android 9.0 (Pie)', N'Chính 12 MP & Phụ 12 MP','10 MP',N'Exynos 9825 8 nhân 64-bit',
'8GB','256GB','2 SIM','4100 mAh',14);

insert into CauHinh values(15, '6.4, Quad HD+ (2K+)', 'Android 9.0 (Pie)', N'Chính 12 MP & Phụ 12 MP',
N'Chính 10 MP & Phụ 8 MP',N'Exynos 9820 8 nhân 64-bit',
'8GB','128GB','2 SIM','4500 mAh',15);

insert into CauHinh values(16, '6.1, Quad HD+ (2K+)', 'Android 9.0 (Pie)3', N'Chính 12 MP & Phụ 12 MP, 16 MP',
'10 MP',N'Exynos 9820 8 nhân 64-bit',
'8GB','128GB','2 SIM','4400 mAh',16);

insert into CauHinh values(17, '6.6, Full HD+', 'Android 9.0 (Pie)', N'Chính 48 MP & Phụ 13 MP, 8 MP',
'16 MP',N'Snapdragon 855 8 nhân 64-bit',
'8GB','256GB','2 SIM','4700 mAh',17);

insert into CauHinh values(18, '6.5, Full HD+', 'IOS 13', N'Chính 48 MP & Phụ 13 MP, 8 MP, 2 MP',
'16 MP',N'Snapdragon 730G 8 nhân',
'8GB','256GB','2 SIM', '4600 mAh',18);

insert into CauHinh values(19, '6.4, Full HD+', 'Android 9.0 (Pie)', N'Chính 48 MP & Phụ 5 MP','16 MP',N'Snapdragon 710 8 nhân 64-bit',
'6GB','256GB','2 SIM','4000 mAh',19);

insert into CauHinh values(20, '6.5, Full HD+', 'Android 9.0 (Pie)', N'Chính 48 MP & Phụ 5 MP','16 MP',N'MediaTek Helio P70 8 nhân',
'6GB','128GB','2 SIM','4100 mAh',20);

create table ChiTietDonHang(
MaCTDH int primary key AUTO_INCREMENT,
MaDH int null,
MaSP int null,
SoLuong int null,
GiaTien float null,
TrangThai bit
);



create table DanhGia(
MaDG int primary key AUTO_INCREMENT,
Noidung int null,
MaSP int null,
MaKH int null
);


create table DonHang(
MaDH int primary key AUTO_INCREMENT,
TenKH nvarchar(500) null,
Email nvarchar(500) null,
DiaChi nvarchar(500) null,
SDT nvarchar(500) null,
TongTien float null,
NgayMua Date null,
TrangThai bit null,
MaKH int null,
MaTT int null,
MaVC int null
);


create table KhachHang(
MaKH int primary key AUTO_INCREMENT,
TenKH nvarchar(500) null,
TenTK nvarchar(50) null,
MatKhau nvarchar(50) null,
DiaChi nvarchar(500) null,
SDT nvarchar(20) null,
Email nvarchar(500) null,
TrangThai bit null
);

insert into KhachHang(MaKH, TenKH, TenTK, MatKhau, DiaChi, SDT, Email) values (1,"Nam","nam","123","HCM","0166222568","nam@gmail.com");
insert into KhachHang(MaKH, TenKH, TenTK, MatKhau, DiaChi, SDT, Email) values (2,"Như","nhu","456","HCM","0951333885","nhu@gmail.com");
insert into KhachHang(TenKH, TenTK, MatKhau, DiaChi, SDT, Email) values ("Thanh","thanh","789","HCM","0021515478","thanh@gmail.com");

create table NhaCungCap(
MaNCC int primary key AUTO_INCREMENT,
TenNCC nvarchar(500) null,
TrangThai bit null,
MaNhomSP int null
);

insert into NhaCungCap(MaNCC, TenNCC, MaNhomSP) values(1, N'Thế giới di động',1);
insert into NhaCungCap(MaNCC, TenNCC, MaNhomSP) values(2, N'Thế giới di động',2);
insert into NhaCungCap(MaNCC, TenNCC, MaNhomSP) values(3, N'Công Ty TNHH Thương Mại Công Nghệ Bạch Long',3);

create table NhomSanPham(
MaNhomSP int primary key AUTO_INCREMENT,
TenNhomSP nvarchar(500) null,
TrangThai bit null
);

insert into NhomSanPham(MaNhomSP, TenNhomSP) values(1,'Apple');
insert into NhomSanPham(MaNhomSP, TenNhomSP) values(2,'SamSung');
insert into NhomSanPham(MaNhomSP, TenNhomSP) values(3,'Oppo');

create table QuangCao(
MaQC int primary key AUTO_INCREMENT,
TenQC nvarchar(500) null,
Anh nvarchar(500) null,
Gia float null,
NhaSanXuat nvarchar(500) null,
MoTa nvarchar(500) null,
TrangThai bit null
);

insert into QuangCao(MaQC, TenQC, Anh, Gia, NhaSanXuat, MoTa) values (1, 'Iphone 12 Series','https://cdn.tgdd.vn/2021/11/banner/laptopdesk(3)-340x340.jpg', 25000000, N'Mỹ', 
N'Màn hình: 6.5, Super Retina XDR
HĐH: iOS 13
CPU: Apple A13 Bionic 6 nhân
RAM: 4 GB, ROM: 512 GB
Camera: 3 camera 12 MP, Selfie: 12 MP');

insert into QuangCao(MaQC, TenQC, Anh, Gia, NhaSanXuat, MoTa) values (2, 'Iphone 12 Series','https://www.xtmobile.vn/vnt_upload/news/06_2021/01/tt-sale-apple-2-6-min_1.jpg',
 30000000, N'Mỹ', 
N'Màn hình: 6.5, Super Retina XDR
HĐH: iOS 13
CPU: Apple A13 Bionic 6 nhân
RAM: 4 GB, ROM: 512 GB
Camera: 3 camera 12 MP, Selfie: 12 MP');
Update QuangCao set Anh = 'https://tintuc.dienthoaigiakho.vn/wp-content/uploads/2020/12/12-12-promax.jpg' where MaQC = 1;


create table QuanTri(
MaQT int primary key AUTO_INCREMENT,
TenQT nvarchar(500) null,
TaiKhoan nvarchar(500) null,
MatKhau nvarchar(500) null,
TrangThai bit null
);

insert into QuanTri(MaQT, TenQT, TaiKhoan, MatKhau) values (1,'quantrivien', 'admin', 'admin'); 

create table SanPham(
MaSP int primary key AUTO_INCREMENT,
TenSP nvarchar(500) null,
Anh nvarchar(500) null,
Gia nvarchar(500) null,
MaNCC int null,
MoTa nvarchar(500) null,
TrangThai bit null,
MaNhomSP int null, 
ThuongHieu nvarchar(500)
);

select * from SanPham where MaNhomSP = 1;

insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(1, N'Iphone 11 Pro Max 512GB',
'https://cdn.tgdd.vn/Products/Images/42/210654/iphone-11-pro-max-512gb-gold-600x600.jpg'
,43.990,1,N'Màn hình: 6.5", Super Retina XDR
HĐH: iOS 13
CPU: Apple A13 Bionic 6 nhân
RAM: 4 GB, ROM: 512 GB
Camera: 3 camera 12 MP, Selfie: 12 MP',1, 'Apple');

insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(2, N'IPhone 11 Pro Max 256GB',
'https://cdn.tgdd.vn/Products/Images/42/210653/iphone-11-pro-max-256gb-black-600x600.jpg',37.990,1,
N'Màn hình: 6.5", Super Retina XDR
HĐH: iOS 13
CPU: Apple A13 Bionic 6 nhân
RAM: 4 GB, ROM: 512 GB
Camera: 3 camera 12 MP, Selfie: 12 MP',1, 'Apple');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(3, N'IPhone Xs Max 256GB',
'https://cdn.tgdd.vn/Products/Images/42/190322/iphone-xs-max-256gb-white-600x600.jpg',32.990,1,
N'Màn hình: 6.5", Super Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 4 GB, ROM: 256 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',1, 'Apple');

insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(4, N'IPhone X 256GB',
'https://cdn.tgdd.vn/Products/Images/42/190324/iphone-xs-256gb-white-600x600.jpg',27.990,1,
N'Màn hình: 5.8", Super Retina
HĐH: iOS 12
CPU: Apple A11 Bionic 6 nhân
RAM: 3 GB, ROM: 256 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',1, 'Apple');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(5, N'IPhone Xs 64GB', 
'https://cdn.tgdd.vn/Products/Images/42/190321/iphone-xs-max-gold-600x600.jpg',24.990, 1,
N'Màn hình: 5.8", Super Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 4 GB, ROM: 64 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',1, 'Apple');

insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(6, N'IPhone XR 128GB', 
'https://cdn.tgdd.vn/Products/Images/42/191483/iphone-xr-128gb-red-600x600.jpg',17.990,1,
N'Màn hình: 6.1", Liquid Retina
HĐH: iOS 12
CPU: Apple A12 Bionic 6 nhân
RAM: 3 GB, ROM: 128 GB
Camera: 12 MP, Selfie: 7 MP',1, 'Apple');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(7, N'IPhone 8 Plus 64GB', 
'https://cdn.tgdd.vn/Products/Images/42/114110/iphone-8-plus-hh-600x600.jpg',16.590,1,
N'Màn hình: 5.5", Retina HD
HĐH: iOS 12
CPU: Apple A11 Bionic 6 nhân
RAM: 3 GB, ROM: 64 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',1, 'Apple');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC,  MoTa, MaNhomSP, ThuongHieu) values(8, N'IPhone 7 Plus 32GB',
'https://cdn.tgdd.vn/Products/Images/42/78124/iphone-7-plus-32gb-gold-600x600.jpg', 12.490,1,
N'Màn hình: 5.5", Retina HD
HĐH: iOS 12
CPU: Apple A10 Fusion 4 nhân 64-bit
RAM: 3 GB, ROM: 32 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 7 MP',1, 'Apple');

insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(9, N'IPhone 7 32GB',
'https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-gold-600x600.jpg', 10.490,1,
N'Màn hình: 4.7", Retina HD
HĐH: iOS 12
CPU: Apple A10 Fusion 4 nhân 64-bit
RAM: 2 GB, ROM: 32 GB
Camera: 12 MP, Selfie: 7 MP',1, 'Apple');

insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(10, N'IPhone 6s Plus 32GB',
'https://cdn.tgdd.vn/Products/Images/42/87846/iphone-6s-plus-32gb-600x600.jpg',8.490,1,
N'Màn hình: 5.5", Retina HD
HĐH: iOS 12
CPU: Apple A9 2 nhân 64-bit
RAM: 2 GB, ROM: 32 GB
Camera: 12 MP, Selfie: 5 MP',1, 'Apple');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(11, N'Samsung Galaxy S10+ (512GB)', 
'https://cdn.tgdd.vn/Products/Images/42/198986/sieu-pham-galaxy-s-moi-2-512gb-black-600x600.jpg',26.990,2,
N'Màn hình: 6.4", Quad HD+ (2K+)
HĐH: Android 9.0 (Pie)
CPU: Exynos 9820 8 nhân 64-bit
RAM: 8 GB, ROM: 512 GB
Camera: Chính 12 MP & Phụ 12 MP, 16 MP, Selfie: Chính 10 MP & Phụ 8 MP',2,'SamSung');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(12, N'Samsung Galaxy Note 10+',
'https://cdn.tgdd.vn/Products/Images/42/206176/samsung-galaxy-note-10-plus-white-600x600.jpg', 26.990,2,
N'Màn hình: 6.8", Quad HD+ (2K+)
HĐH: Android 9.0 (Pie)
CPU: Exynos 9825 8 nhân 64-bit
RAM: 12 GB, ROM: 256 GB
Camera: Chính 12 MP & Phụ 12 MP, 16 MP, TOF 3D, Selfie: 10 MP',2,'SamSung');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(13, N'Samsung Galaxy Note 9',
'https://cdn.tgdd.vn/Products/Images/42/154897/samsung-galaxy-note-9-black-600x600.jpg', 16.990,2,
N'Màn hình: 6.4", Quad HD+ (2K+)
HĐH: Android 8.1 (Oreo)
CPU: Exynos 9810 8 nhân 64-bit
RAM: 6 GB, ROM: 128 GB
Camera: Chính 12 MP & Phụ 12 MP, Selfie: 8 MP',2,'SamSung');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(14, N'Samsung Galaxy Note 10' ,
'https://cdn.tgdd.vn/Products/Images/42/191276/samsung-galaxy-note-10-pink-600x600.jpg',22.990,2,
N'Màn hình: 6.3", Full HD+
HĐH: Android 9.0 (Pie)
CPU: Exynos 9825 8 nhân 64-bit
RAM: 8 GB, ROM: 256 GB
Camera: Chính 12 MP & Phụ 12 MP, 16 MP, Selfie: 10 MP',2,'SamSung');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(15, N'Samsung Galaxy S10+', 
'https://cdn.tgdd.vn/Products/Images/42/179530/samsung-galaxy-s10-plus-black-600x600.jpg', 22.990,2,
N'Màn hình: 6.4", Quad HD+ (2K+)
HĐH: Android 9.0 (Pie)
CPU: Exynos 9820 8 nhân 64-bit
RAM: 8 GB, ROM: 128 GB
Camera: Chính 12 MP & Phụ 12 MP, 16 MP, Selfie: Chính 10 MP & Phụ 8 MP',2,'SamSung');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(16, N'Samsung Galaxy S10',
'https://cdn.tgdd.vn/Products/Images/42/161554/samsung-galaxy-s10-white-600x600.jpg', 17.990,2,
N'Màn hình: 6.1", Quad HD+ (2K+)
HĐH: Android 9.0 (Pie)
CPU: Exynos 9820 8 nhân 64-bit
RAM: 8 GB, ROM: 128 GB
Camera: Chính 12 MP & Phụ 12 MP, 16 MP, Selfie: 10 MP',2,'SamSung');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(17, N'OPPO Reno 10x Zoom Edition',
'https://cdn.tgdd.vn/Products/Images/42/201235/oppo-reno-10x-zoom-edition-black-600x600.jpg', 16.990,3,
N'Màn hình: 6.6", Full HD+
HĐH: Android 9.0 (Pie)
CPU: Snapdragon 855 8 nhân 64-bit
RAM: 8 GB, ROM: 256 GB
Camera: Chính 48 MP & Phụ 13 MP, 8 MP, Selfie: 16 MP',3,'Oppo');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(18, N'OPPO Reno2',
'https://cdn.tgdd.vn/Products/Images/42/209798/oppo-reno2-600x600.jpg',14.990,3,
N'Màn hình: 6.5", Full HD+
HĐH: Android 9.0 (Pie)
CPU: Snapdragon 730G 8 nhân
RAM: 8 GB, ROM: 256 GB
Camera: Chính 48 MP & Phụ 13 MP, 8 MP, 2 MP, Selfie: 16 MP',3,'Oppo');

insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(19, N'OPPO Reno', 
'https://cdn.tgdd.vn/Products/Images/42/200438/oppo-reno-pink-600x600.jpg', 10.990,3,
N'Màn hình: 6.4", Full HD+
HĐH: Android 9.0 (Pie)
CPU: Snapdragon 710 8 nhân 64-bit
RAM: 6 GB, ROM: 256 GB
Camera: Chính 48 MP & Phụ 5 MP, Selfie: 16 MP',3,'Oppo');


insert into SanPham(MaSP, TenSP, Anh, Gia, MaNCC, MoTa, MaNhomSP, ThuongHieu) values(20, N'OPPO F11 Pro 128GB', 
'https://cdn.tgdd.vn/Products/Images/42/202703/oppo-f11-pro-128gb-600x600.jpg', 7.490,3,
N'Màn hình: 6.5", Full HD+
HĐH: Android 9.0 (Pie)
CPU: MediaTek Helio P70 8 nhân
RAM: 6 GB, ROM: 128 GB
Camera: Chính 48 MP & Phụ 5 MP, Selfie: 16 MP',3,'Oppo');


create table ThanhToan(
MaTT int primary key AUTO_INCREMENT,
TenTT nvarchar(500) null,
MoTa nvarchar(500) null,
TrangThai bit null
);

insert into ThanhToan(MaTT, TenTT, MoTa) values(1,N'Thanh toán bằng thẻ tín dụng', N'Bạn có thể trả phí trực tiếp thông qua số tài khoản ATM');
insert into ThanhToan(MaTT, TenTT, MoTa) values(2,N'Thanh toán trực tiếp', N'Bạn có thể trả phí khi nhận được hàng');

create table UaThich(
MaUT int primary key AUTO_INCREMENT,
MaKH int null,
MaSP int null
);


create table VanChuyen(
MaVC int primary key AUTO_INCREMENT,
TenVC nvarchar(500) null,
Gia float null,
MoTa nvarchar(500) null,
TrangThai bit null
);

insert into VanChuyen(MaVC, TenVC, Gia, MoTa) values(1, N'Viettel port',30000, N'Giao Hàng từ 5 - 10 ngày');
insert into VanChuyen(MaVC, TenVC, Gia, MoTa) values(2, N'Speed Method',50000, N'Giao Hàng từ 3 - 5 ngày');
insert into VanChuyen(MaVC, TenVC, Gia, MoTa) values(3, N'Go Viet',70000, N'Giao Hàng từ 1 - 3 ngày');




-- Fk
-- bảng SanPham
alter table SanPham
add foreign key(MaNCC) references NhaCungCap(ManCC);

alter table SanPham
add foreign key(MaNhomSP) references NhomSanPham(MaNhomSP);

-- bảng CauHinh
alter table CauHinh
add foreign key(MaSP) references SanPham(MaSp);


-- bảng DanhGia
alter table DanhGia
add foreign key(MaSP) references SanPham(MaSP);

alter table DanhGia
add foreign key(MaKH) references KhachHang(MaKH);



-- bảng DonHang
alter table DonHang
add foreign key(MaKH) references KhachHang(MaKH);

alter table DonHang
add foreign key(MaTT) references ThanhToan(MaTT);

alter table DonHang
add foreign key(MaVC) references VanChuyen(MaVC);




-- bảng ChiTietDonHang
alter table ChiTietDonHang
add foreign key(MaDH) references DonHang(MaDH);

alter table ChiTietDonHang
add foreign key(MaSP) references SanPham(MaSP);



-- bảng UaThich
alter table UaThich
add foreign key(MaKH) references KhachHang(MaKH);

alter table UaThich
add foreign key(MaSP) references SanPham(MaSP);