--CREATE DATABASE QLDiemSV1

CREATE TABLE KHOA(
	MaKhoa char(5) Primary key,
	TenKhoa nvarchar(20) Not null unique,
	DienThoai nvarchar(12)
)

CREATE TABLE LOP(
	MaLop char(10) Primary key,			--Khoa chinh
	TenLop nvarchar(20) Not null unique,--Ten lop khong trung nhau
	KhoaHoc tinyint CHECK(KhoaHoc >0),	--Khoa hoc phai la so duong
	HeDaoTao nvarchar(50) default N'Chính quy',	--Mac dinh nhan chinh quy
	NamNhapHoc smallint default 2023,
	MaKhoa char(5) REFERENCES KHOA(MaKhoa) -- Tao quan he voi bang KHOA
)

CREATE TABLE SINHVIEN(	-- Lenh tao bang
	MaSV char(10) not null primary key,
	HoDem nvarchar(50) not null,
	Ten nvarchar(20) not null,
	GioiTinh bit,
	NgaySinh Date,
	NoiSinh nvarchar(100),
	MaLop char(10) references LOP(MaLop)	--Lien ket den bang Lop
)
CREATE TABLE HOCPHAN(	-- Lenh tao bang
	MaHocPhan char(10) not null primary key,
	TenHocPhan nvarchar(50) not null,
	SoTinChi int check (SotinChi >0)
)
CREATE TABLE DIEMTHI(	-- Lenh tao bang
	MaHocPhan char(10) not null references HOCPHAN(MaHocPhan),	--Lien ket den bang HocPhan
	MaSV char(10) not null references SINHVIEN(MaSV),			--Lien ket den bang SINHVIEN
	LanThi tinyint Check(LanThi =1 OR LanThi =2),
	Diem Decimal(2,1) check (Diem >=0 AND Diem <=10),
	primary key (MaHocPhan, MaSV,LanThi)						--Tao khoa chinh bao gom 3 truong
)


--Them 1 cot co ten DiaChi vao bang Khoa
--Thay doi kieu DL SoDienThoai thanh char(12)
--Xoa cot DiaChi
