
INSERT INTO KHOA
VALUES('cnud', N'Công nghệ Thông tin ứng dụng', '962962-445'),
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
	('dh01-005', N'Phạm Duy', N'Phương', '1986/03/15 12:00:00 AM', 'True', 'Bổ Trạch, Quảng Bình', 'dh01'),
	('dh02-002', N'Mai Thị', N'Kiều', '1983/02/03 12:00:00 AM', 'False', N'Điện Bàn, Quảng Nam', 'dh02'),
	('dh03-001', N'Nguyễn Như', N'Vũ', '1986/07/25 12:00:00 AM', 'True', N'Hải Châu, Đà Nẵng', 'dh03'),
	('dl01-001', N'Trần Tuấn', N'Anh', '1983/01/01 12:00:00 AM', 'True', N'Sơn Trà, Đà Nẵng', 'dl01'),
	('dl01-002', N'Nguyễn Thị', N'Lan', '1986/03/13 12:00:00 AM', 'False', N'Mộ Đức, Quảng Ngãi', 'dl01'),
	('dl01-003', N'Đào Thị', N'Cúc', '1987/11/11 12:00:00 AM', 'False', N'Sơn Tịnh, Quảng Ngãi', 'dl01'),
	('dl02-007', N'Nguyễn Thị', N'Đào', '1984/03/26 12:00:00 AM', 'False', N'Phú Thượng, Huế', 'dl02'),
	('lt01-001', N'Nguyễn Văn',N'Nghĩa', '1985/08/23 12:00:00 AM', 'True', N'Điện Bàn, Quảng Nam','lt01a'),
	('lt01-002', N'Ngô Phương', N'Thảo', '1986/11/12 12:00:00 AM', 'False', N'Vĩnh Linh, Quảng Trị', 'lt01b'),
	('mm01-010', N'Lê Văn', N'Bằng', '1984/07/02 12:00:00 AM', 'True', N'Kỳ Anh - Hà Tĩnh', 'mm01'),
	('tm01-020', N'Hà Ngọc', N'Anh', '1982/12/12 12:00:00 AM', 'True', N'Thăng Bình, Quảng Nam', 'tm01')


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
	('nlkt', 'tm01-020', 1, '9.00'),
	('sql', 'dl01-001', 1, '8.00'),
	('sql', 'dl01-002', 1, '5.00'),
	('sql', 'dl01-003', 1, '3.00'),
	('sql', 'dl01-003', 2, '7.00'),
	('tindc', 'dl01-001', 1, '7.00'),
	('tindc', 'dl01-002', 1, '4.00'),
	('tindc', 'dl01-002', 2, '6.00'),
	('tindc', 'dl01-003', 1, '9.00'),
	('tindc', 'tm01-020', 1, '8.00'),
	('tinvp', 'dh01-005', 1, '3.00'),
	('tinvp', 'dh01-005', 2, '4.00'),
	('tinvp', 'dl01-001', 1, '10'),
	('tinvp', 'dl01-002', 1, '6.00'),
	('tinvp', 'dl01-003', 1, '10')



	