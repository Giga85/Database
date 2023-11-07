CREATE TABLE KHOA(
	MaKhoa char(5) Primary key,
	TenKhoa nvarchar(20) Not null unique,
	DienThoai nvarchar(12)
)

CREATE TABLE LOP(
	MaLop char(10) Primary key,			--Khoa chinh
	TenLop nvarchar(50) Not null unique,--Ten lop khong trung nhau
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
	Diem Decimal(4,1) check (Diem >=0 AND Diem <=10),
	primary key (MaHocPhan, MaSV,LanThi)						--Tao khoa chinh bao gom 3 truong
)


INSERT INTO KHOA
VALUES('cnud', N'Công nghệ Thông tin', '962962-445'),
		('daic', N'Đại cương','962962-401'),
		('khmt', N'Khoa học Máy tính', '962962-479'),
		('tmdt', N'Thương mại Điện tử', '962962-414')


INSERT INTO LOP
VALUES ('dh01', N'Đồ họa 1', '1', N'Chính quy', 2020, 'cnud'),
	('dh02', N'Đồ họa 2', '2', N'Chính quy', 2021, 'cnud'),
	('dh03', N'Đồ họa 3', '3',  N'Chính quy', 2022, 'cnud'),
	('dl01', N'Dữ liệu 1', '1', N'Chính quy', 2023, 'khmt'),
	('dl02', N'Dữ liệu 2', '2', N'Chính quy', 2021, 'khmt'),
	('kt01', N'Kiến trúc 1', '1', N'Chính quy', 2022, 'cnud'),
	('lt01a', N'Lập trình 1 A', '1', N'Chính quy', 2020, 'khmt'),
	('lt01b', N'Lập trình 1 B', '1', N'Chính quy', 2021, 'khmt'),
	('lt02', N'Lập trình 2', '2', N'Chính quy', 2023, 'khmt'),
	('mm01', N'Mạng máy tính 1', '1', N'Chính quy', 2022, 'khmt'),
	('qc02a', N'Quảng cáo 2A', '2', N'Chính quy', 2020, 'tmdt'),
	('tm01', N'Thương mại điện tử 1', '1', N'Chính quy', 2021, 'tmdt'),
	('tm02', N'Thương mại điện tử 2', '2', N'Chính quy', 2022, 'tmdt')


INSERT INTO SINHVIEN
	VALUES
	('dh02-002', N'Mai Thị', N'Kiều', 0, '1-1-1999', N'Điện Bàn, Quảng Nam', 'dh02'),
	('dh03-001', N'Nguyễn Như', N'Vũ', 0, '3-1-1990', N'Hải Châu, Đà Nẵng', 'dh03'),
	('dl01-001', N'Trần Tuấn', N'Anh', 1, '11-4-1991', N'Sơn Trà, Đà Nẵng', 'dl01'),
	('dl01-002', N'Nguyễn Thị', N'Lan',0, '12-11-1990', N'Mộ Đức, Quảng Ngãi', 'dl01'),
	('dl01-003', N'Đào Thị', N'Cúc', 0, '2-6-1989', N'Sơn Tịnh, Quảng Ngãi', 'dl01'),
	('dl02-007', N'Nguyễn Thị', N'Đào',0, '11-10-1987',  N'Phú Thượng, Huế', 'dl02'),
	('lt01-001', N'Nguyễn Văn',N'Nghĩa', 1, '9-10-1988', N'Điện Bàn, Quảng Nam','lt01a'),
	('lt01-002', N'Ngô Phương', N'Thảo', 0,'8-9-1992',  N'Vĩnh Linh, Quảng Trị', 'lt01b'),
	('mm01-010', N'Lê Văn', N'Bằng', 1,'8-5-1991',  N'Kỳ Anh - Hà Tĩnh', 'mm01'),
	('tm01-020', N'Hà Ngọc', N'Anh', 1, '3-3-1990',  N'Thăng Bình, Quảng Nam', 'tm01')

INSERT INTO HOCPHAN
	VALUES
	('hoa', N'Hóa đại cương', 3),
	('javacb', N'Java cơ bản', 3),
	('ltc', N'Lập trình C++', 3),
	('nlhdh', N'Nguyên lý hệ điều hành', 3),
	('nlkt', N'Nguyên lý kế toán', 3),
	('orac', N'Oracle', 3),
	('sql', N'HQTCSDL SQL Sever', 3),
	('tindc', N'Tin học đại cương', 4),
	('Tinvp', N'Tin học văn phòng', 3),
	('tkms', N'Thiết kế màu sắc', 2),
	('triet', N'Triết học', 3),
	('trr', N'Toán rời rạc', 3)

	INSERT INTO DIEMTHI
	VALUES
	('sql', 'dl01-001', 1, 8),
	('sql', 'dl01-002', 1, 5),
	('sql', 'dl01-003', 1, 3),
	('sql', 'dl01-003', 2, 7),
	('tindc', 'dl01-001', 1, 7),
	('tindc', 'dl01-002', 1, 4),
	('tindc', 'dl01-002', 2, 6),
	('tindc', 'dl01-003', 1, 9),
	('tindc', 'tm01-020', 1, 8),
	('tinvp', 'dl01-002', 1, 3),
	('tinvp', 'dl01-002', 2, 4),
	('tinvp', 'dl01-001', 1, 9),
	('tinvp', 'dl02-007', 1, 6),
	('tinvp', 'dl01-003', 1, 9)

	DELETE FROm DIEMTHI
		DELETE FROm SINHVIEN
