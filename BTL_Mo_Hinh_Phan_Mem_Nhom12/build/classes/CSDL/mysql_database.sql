-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 28, 2022 lúc 03:41 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mysql_database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhoi`
--

CREATE TABLE `cauhoi` (
  `ID` int(30) NOT NULL,
  `MaSV` int(30) NOT NULL,
  `CauHoi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cautraloi`
--

CREATE TABLE `cautraloi` (
  `IDCauHoi` int(30) NOT NULL,
  `IDAD` int(30) NOT NULL,
  `CauTraLoi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangnhap`
--

CREATE TABLE `dangnhap` (
  `ID` int(15) NOT NULL,
  `TaiKhoan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhapdiem`
--

CREATE TABLE `nhapdiem` (
  `MaSV` int(50) NOT NULL,
  `MaHP` int(50) NOT NULL,
  `Diem` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinadmin`
--

CREATE TABLE `thongtinadmin` (
  `ID` int(30) NOT NULL,
  `IDTK` int(30) NOT NULL,
  `IDCauHoi` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtingiaovien`
--

CREATE TABLE `thongtingiaovien` (
  `MaGV` int(15) NOT NULL,
  `IDTK` int(30) NOT NULL,
  `MaLop` int(15) NOT NULL,
  `TenGV` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` int(20) NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinhocphan`
--

CREATE TABLE `thongtinhocphan` (
  `MaHP` int(15) NOT NULL,
  `TenHP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SoTinChi` int(2) NOT NULL,
  `DonGia` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinlop`
--

CREATE TABLE `thongtinlop` (
  `MaLop` int(30) NOT NULL,
  `MaGV` int(30) NOT NULL,
  `SoLuong` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thongtinsinhvien`
--

CREATE TABLE `thongtinsinhvien` (
  `MaSV` int(15) NOT NULL,
  `IDTK` int(30) NOT NULL,
  `TenSV` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` int(20) NOT NULL,
  `DiaChi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Lop` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`);

--
-- Chỉ mục cho bảng `cautraloi`
--
ALTER TABLE `cautraloi`
  ADD KEY `IDCauHoi` (`IDCauHoi`),
  ADD KEY `IDAD` (`IDAD`);

--
-- Chỉ mục cho bảng `dangnhap`
--
ALTER TABLE `dangnhap`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `nhapdiem`
--
ALTER TABLE `nhapdiem`
  ADD KEY `nhapdiem_ibfk_1` (`MaHP`),
  ADD KEY `MaSV` (`MaSV`);

--
-- Chỉ mục cho bảng `thongtinadmin`
--
ALTER TABLE `thongtinadmin`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDTK` (`IDTK`),
  ADD KEY `IDCauHoi` (`IDCauHoi`);

--
-- Chỉ mục cho bảng `thongtingiaovien`
--
ALTER TABLE `thongtingiaovien`
  ADD PRIMARY KEY (`MaGV`),
  ADD KEY `IDTK` (`IDTK`),
  ADD KEY `MaLop` (`MaLop`);

--
-- Chỉ mục cho bảng `thongtinhocphan`
--
ALTER TABLE `thongtinhocphan`
  ADD PRIMARY KEY (`MaHP`);

--
-- Chỉ mục cho bảng `thongtinlop`
--
ALTER TABLE `thongtinlop`
  ADD PRIMARY KEY (`MaLop`),
  ADD KEY `MaGV` (`MaGV`);

--
-- Chỉ mục cho bảng `thongtinsinhvien`
--
ALTER TABLE `thongtinsinhvien`
  ADD PRIMARY KEY (`MaSV`),
  ADD KEY `IDTK` (`IDTK`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cautraloi`
--
ALTER TABLE `cautraloi`
  ADD CONSTRAINT `cautraloi_ibfk_1` FOREIGN KEY (`IDCauHoi`) REFERENCES `cauhoi` (`ID`),
  ADD CONSTRAINT `cautraloi_ibfk_2` FOREIGN KEY (`IDAD`) REFERENCES `thongtinadmin` (`ID`);

--
-- Các ràng buộc cho bảng `nhapdiem`
--
ALTER TABLE `nhapdiem`
  ADD CONSTRAINT `nhapdiem_ibfk_1` FOREIGN KEY (`MaHP`) REFERENCES `thongtinhocphan` (`MaHP`),
  ADD CONSTRAINT `nhapdiem_ibfk_2` FOREIGN KEY (`MaSV`) REFERENCES `thongtinsinhvien` (`MaSV`);

--
-- Các ràng buộc cho bảng `thongtinadmin`
--
ALTER TABLE `thongtinadmin`
  ADD CONSTRAINT `thongtinadmin_ibfk_1` FOREIGN KEY (`IDTK`) REFERENCES `dangnhap` (`ID`),
  ADD CONSTRAINT `thongtinadmin_ibfk_2` FOREIGN KEY (`IDCauHoi`) REFERENCES `cauhoi` (`ID`);

--
-- Các ràng buộc cho bảng `thongtingiaovien`
--
ALTER TABLE `thongtingiaovien`
  ADD CONSTRAINT `thongtingiaovien_ibfk_1` FOREIGN KEY (`IDTK`) REFERENCES `dangnhap` (`ID`),
  ADD CONSTRAINT `thongtingiaovien_ibfk_2` FOREIGN KEY (`MaLop`) REFERENCES `thongtinlop` (`MaLop`);

--
-- Các ràng buộc cho bảng `thongtinlop`
--
ALTER TABLE `thongtinlop`
  ADD CONSTRAINT `thongtinlop_ibfk_1` FOREIGN KEY (`MaGV`) REFERENCES `thongtingiaovien` (`MaGV`);

--
-- Các ràng buộc cho bảng `thongtinsinhvien`
--
ALTER TABLE `thongtinsinhvien`
  ADD CONSTRAINT `thongtinsinhvien_ibfk_1` FOREIGN KEY (`IDTK`) REFERENCES `dangnhap` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
