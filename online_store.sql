-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 06, 2023 lúc 02:03 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `online_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_muc_gio_hang`
--

CREATE TABLE `chi_muc_gio_hang` (
  `id` bigint(20) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `ma_gio_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hang`
--

CREATE TABLE `chi_tiet_don_hang` (
  `id` bigint(20) NOT NULL,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) DEFAULT NULL,
  `ma_don_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  `so_luong_dat` int(11) NOT NULL,
  `so_luong_nhan_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hang`
--

INSERT INTO `chi_tiet_don_hang` (`id`, `don_gia`, `so_luong`, `ma_don_hang`, `ma_san_pham`, `so_luong_dat`, `so_luong_nhan_hang`) VALUES
(4, 1599000, NULL, 35, 144, 1, 0),
(5, 1599000, NULL, 35, 145, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` bigint(20) NOT NULL,
  `ten_danh_muc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `ten_danh_muc`) VALUES
(1, 'Laptop'),
(2, 'Máy tính bảng'),
(3, 'PC'),
(4, 'Linh kiện'),
(5, 'Phụ kiện'),
(10, 'Laptop cũ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hang`
--

CREATE TABLE `don_hang` (
  `id` bigint(20) NOT NULL,
  `dia_chi_nhan` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `ho_ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ngay_dat_hang` datetime DEFAULT NULL,
  `ngay_giao_hang` datetime DEFAULT NULL,
  `ngay_nhan_hang` datetime DEFAULT NULL,
  `sdt_nhan_hang` varchar(255) DEFAULT NULL,
  `trang_thai_don_hang` varchar(255) DEFAULT NULL,
  `ma_nguoi_dat` bigint(20) DEFAULT NULL,
  `ma_shipper` bigint(20) DEFAULT NULL,
  `tong_gia_tri` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hang`
--

INSERT INTO `don_hang` (`id`, `dia_chi_nhan`, `ghi_chu`, `ho_ten_nguoi_nhan`, `ngay_dat_hang`, `ngay_giao_hang`, `ngay_nhan_hang`, `sdt_nhan_hang`, `trang_thai_don_hang`, `ma_nguoi_dat`, `ma_shipper`, `tong_gia_tri`) VALUES
(31, 'bd', 'asdf', 'aaa', '2018-12-01 14:38:26', NULL, NULL, 'dsf', 'Đang chờ duyệt', NULL, NULL, 0),
(32, 'fadf', 'asdf', 'aaa', '2018-12-05 21:58:24', NULL, NULL, '13', 'created', 2, NULL, 0),
(33, 'a', NULL, 'a', '2022-12-03 13:38:22', NULL, NULL, '12312315', 'Đã bị hủy', 1, NULL, 3198000),
(34, 'a', NULL, 'a', '2022-12-03 13:38:43', NULL, NULL, '12312315', 'Đã bị hủy', 1, NULL, 3198000),
(35, 'a', NULL, 'a', '2022-12-03 13:41:03', '2022-12-03 13:41:39', NULL, '12312315', 'Đang giao', 1, 3, 3198000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` bigint(20) NOT NULL,
  `tong_tien` varchar(255) DEFAULT NULL,
  `ma_nguoi_dung` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `gio_hang`
--

INSERT INTO `gio_hang` (`id`, `tong_tien`, `ma_nguoi_dung`) VALUES
(1, NULL, 2),
(2, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_san_xuat`
--

CREATE TABLE `hang_san_xuat` (
  `id` bigint(20) NOT NULL,
  `ten_hang_san_xuat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hang_san_xuat`
--

INSERT INTO `hang_san_xuat` (`id`, `ten_hang_san_xuat`) VALUES
(2, 'Asus'),
(3, 'Acer'),
(4, 'MSI'),
(5, 'HP'),
(6, 'Lenovo'),
(7, 'Dell'),
(11, 'Macbook');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `id` bigint(20) NOT NULL,
  `email_lien_he` varchar(255) DEFAULT NULL,
  `ngay_lien_he` datetime DEFAULT NULL,
  `ngay_tra_loi` datetime DEFAULT NULL,
  `noi_dung_lien_he` varchar(255) DEFAULT NULL,
  `noi_dung_tra_loi` varchar(255) DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `ma_nguoi_tra_loi` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`id`, `email_lien_he`, `ngay_lien_he`, `ngay_tra_loi`, `noi_dung_lien_he`, `noi_dung_tra_loi`, `trang_thai`, `ma_nguoi_tra_loi`) VALUES
(1, 'tieulang2k2@gmail.com', '2022-12-03 13:17:23', '2022-12-03 13:18:17', 'Em cần đổi hàng', 'oke em\n', 'Đã trả lời', NULL),
(2, 'tieulang2k2@gmail.com', '2022-12-03 13:20:20', '2022-12-03 13:20:45', 'HELLO', 'Hi', 'Đã trả lời', NULL),
(3, 'tuankhongden@gmail.com', '2022-12-03 13:22:38', '2022-12-03 13:23:04', 'a', 'a', 'Đã trả lời', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung_vaitro`
--

CREATE TABLE `nguoidung_vaitro` (
  `ma_nguoi_dung` bigint(20) NOT NULL,
  `ma_vai_tro` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung_vaitro`
--

INSERT INTO `nguoidung_vaitro` (`ma_nguoi_dung`, `ma_vai_tro`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoi_dung`
--

CREATE TABLE `nguoi_dung` (
  `id` bigint(20) NOT NULL,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoi_dung`
--

INSERT INTO `nguoi_dung` (`id`, `dia_chi`, `email`, `ho_ten`, `password`, `so_dien_thoai`) VALUES
(1, 'a', 'admin@gmail.com', 'PHẠM VĂN TUẤN', '$2a$10$/VFMNUPBKNVRMjxPFCYKZ.lKahoLQda0EaAxdqoun1w3DqwNLa2me', '123456789'),
(2, NULL, 'member@gmail.com', NULL, '$2a$10$j7Upgupou72GBmukz0G6pOATk3wlCAgaoFCEqAhSvLToD/V/1wlpu', NULL),
(3, NULL, 'shipper@gmail.com', NULL, '$2a$10$u2B29HDxuWVYY3fUJ8R2qunNzXngfxij5GpvlFAEtIz3JpK/WFXF2', NULL),
(4, 'Ha Noi', 'jvgiveup@gmail.com', 'Pham Tuan', '$2a$10$ZCqCO9gSWt8A8HNXAWq8luqfNbJm0uG3PsUlzry0aRLwO3VHQZTmy', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` bigint(20) NOT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `don_gia` bigint(20) NOT NULL,
  `don_vi_ban` int(11) NOT NULL,
  `don_vi_kho` int(11) NOT NULL,
  `dung_luong_pin` varchar(255) DEFAULT NULL,
  `he_dieu_hanh` varchar(255) DEFAULT NULL,
  `man_hinh` varchar(255) DEFAULT NULL,
  `ram` varchar(255) DEFAULT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `thiet_ke` varchar(255) DEFAULT NULL,
  `thong_tin_bao_hanh` varchar(255) DEFAULT NULL,
  `thong_tin_chung` varchar(255) DEFAULT NULL,
  `ma_danh_muc` bigint(20) DEFAULT NULL,
  `ma_hang_sx` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `cpu`, `don_gia`, `don_vi_ban`, `don_vi_kho`, `dung_luong_pin`, `he_dieu_hanh`, `man_hinh`, `ram`, `ten_san_pham`, `thiet_ke`, `thong_tin_bao_hanh`, `thong_tin_chung`, `ma_danh_muc`, `ma_hang_sx`) VALUES
(144, 'Intel® Core™ i7-12700H', 27990000, 0, 50, '2.5kg', 'Windown 11', '15.6\"FHD - 144Hz', '8GB', 'Laptop Gaming Acer Nitro 5 Tiger AN515-58-773Y', 'RTX 3050Ti 4GB', '1 năm', ' Đối với những ai là fan của nhà Acer và bạn đang tìm hiểu về những dòng laptop gaming Nitro 5 Tiger 2022 mới nhất thì đây sẽ cỗ máy với bộ vi xử lý Intel tuyệt vời dành cho bạn.', 1, 3),
(145, 'AMD Ryzen™ 5-5500U ', 52490000, 0, 50, '2.1Kg', 'Windown 11', '15.6 inch FHD (1920 x 1080) Acer ComfyView IPS LED LCD, 144Hz', '8GB DDR4 3200MHz', ' Laptop Acer Aspire 7 2021 A715-42G-R6ZR', 'NVIDIA® GeForce® GTX 1650 4GB ', '24 tháng', 'a', 1, 3),
(158, 'Intel Core i5 - 1240P', 13990000, 0, 20, '2kg', 'Windown 11', '14.0 inch FHD IPS 100% sRGB', '16 GB LPDDR4X', '[New Outlet] Laptop Acer Swift 3 SF314-512-52MZ', 'Intel Iris Xe Graphics', '24 tháng', 'Không chỉ có ưu thế về ngoại hình, màn hình chuẩn màu cực đỉnh mà còn sở hữu chip gen 12 đời mới nhất hiện nay - từ đó mang đến hiệu năng vượt tầm giá, sẵn sàng đáp ứng tốt mọi nhu cầu làm việc, giải trí đa nhiệm hiện nay.', 1, 3),
(159, 'Intel® Core™ i5-11400H', 15590000, 0, 50, '2.3kg', 'Windown 11', '15.6\"FHD - 144Hz', '8GB DDR4 3200MHz', 'Laptop Acer Nitro 5 Eagle AN515-57-536Q / 56FC', 'NVIDIA® GeForce® GTX 1650 4GB ', '24 tháng', 'Đam mê những chiếc laptop gaming thì chắc chắn các bạn không còn xa lạ gì với Acer Nitro 5 - chiến binh SIÊU KHỎE - SIÊU NGẦU - TẢN SIÊU MÁT được rất nhiều game thủ săn lùng', 1, 3),
(160, 'Intel Core i5 11320H', 35490000, 0, 50, '1,9Kg', 'Windown 11', '16.1\" FHD IPS Slim Bezel Acer ComfyView™ IPS LED LCD 60Hz', '16 GB LPDDR4X', 'Laptop Acer Swift X SFX16-51G-516Q NX.AYKSV.002 ', 'NVIDIA® GeForce RTX™ 3050 4G DDR6', '24 tháng', 'Dòng laptop đồ họa của hãng laptop Acer  bởi hiệu năng cực kỳ mạnh mẽ, độ bền cao nhưng thiết kế lại vô cùng mỏng nhẹ mang tính di động cao.', 1, 3),
(161, 'Intel Core i5 - 1240P', 16290000, 0, 50, '1.38Kg', 'Windown 11', '14 Inch OLED, 2.8K (2880x1800), IPS 100% sRGB', '8GB LPDDR5 bus 5200MHz', 'Laptop Asus Zenbook Q409ZA-90NB0WC1 (2022)', 'Intel® Iris® Xe Graphics', '24 tháng', 'Asus Zenbook Q409ZA - Siêu phẩm Ultrabook thời đại mới - Siêu mỏng nhẹ - Màn OLED chuẩn màu siêu đẹp - Chip gen 12 mới nhất cực khỏe', 1, 2),
(162, ' AMD Ryzen™ 5-4600H', 17490000, 0, 20, '2.3kg', 'Windown 11', '15.6\"FHD - 144Hz', '8GB DDR4 3200MHz', 'Laptop Gaming ASUS TUF Gaming A15 FA506ICB-HN355W', 'NVIDIA® GeForce RTX™ 3050 4GB GDDR6', '24 tháng', 'Dòng sản phẩm laptop gaming của Asus từ khi ra mắt đến nay đã luôn được giới game thủ đánh giá cao, ưa chuộng và tìm mua. Bởi các mẫu laptop, máy tính xách tay của dòng laptop Asus TUF luôn có khả năng cân bằng giữa hiệu năng trên giá thành rất tốt.', 1, 2),
(163, 'Intel Core i5-12500H Processor', 18490000, 0, 20, '1,9Kg', 'Windown 11', '15.6 Inch OLED Full HD', '8GB DDR4 ', 'Laptop Asus Vivobook 15X OLED A1503ZA-L1421W', 'Intel UHD Grapchis | Intel® Iris Xe Graphics (khi chạy dual)', '24 tháng', 'Chiếc laptop văn phòng Asus Vivobook này không chỉ sở hữu ngoại hình thời trang, \"bắt trend\" màn OLED CHUẨN MÀU 100%DCI-P3 siêu đẹp của năm 2022 mà còn sở hữu cấu hình vượt trội với chip intel Gen 12 đời mới nhất có số nhân số luồng cực khủng.', 1, 2),
(164, 'AMD Ryzen™ 7 6800H ', 22990000, 0, 20, '2.3kg', 'Windown 11', '15.6\"FHD - 144Hz', '8GB DDR5-4800 SO-DIMM ', 'Laptop Gaming Asus TUF A15 2022 FA507RC-HN051W', 'NVIDIA® GeForce RTX™ 3050', '24 tháng', 'Chiếc Asus TUF này không chỉ sở hữu ngoại hình cao cấp bậc nhất trong dòng laptop gaming mà còn có hiệu năng cực khủng với chip Ryzen 7 đời mới nhất hiện nay và hệ thống tản nhiệt cực mát mẻ', 1, 2),
(165, 'Intel Core i7-12700H', 26790000, 0, 20, '2.3kg', 'Windown 11', '15.6 Inch Full HD 144Hz IPS', '8GB DDR5', 'Laptop Gaming Asus TUF 2022 F15 FX507ZC-HN124W', 'NVIDIA® GeForce RTX™ 3050 4G DDR6', '24 tháng', 'Asus Tuf với trang bị chip Intel mới nhất cho hiệu năng cực khủng. Bên cạnh đó tản nhiệt và thiết kế của dòng máy tính xách tay / laptop này cũng được cải tiến đáng kể mang đến cho người dùng trải nghiệm chiến game tuyệt vời nhất', 1, 2),
(166, 'M2 (8-Core CPU)', 29290000, 0, 5, '1.5Kg', 'macOS', '13.6 inch Retina display with True Tone', '8GB', '[New 100%] Macbook Air M2 2022 - 8 Core GPU ', '8-Core GPU', '24 tháng', 'Macbook Air M2 2022 - Thay đổi “chóng mặt” từ ngoại hình đến hiệu năng', 1, 11),
(167, 'M1 8 Core', 20950000, 0, 5, '1.5Kg', 'macOS', '13.3 Inch Retina', '16GB', ' Macbook Air 13 Late 2020 (Z124000DF/Z127000DF)', '7-core GPU', '24 tháng', 'Apple tuyên bố rằng Macbook Air thế hệ mới này có hệ thống đủ mạnh để người dùng chỉnh sửa nhiều luồng video 4K ProRes trong Final Cut Pro, nhờ các thông số kỹ thuật mới của nó.', 1, 11),
(168, 'Chip M1 8 Core', 22490000, 0, 6, '1.5Kg', 'macOS', '13.3 Inch Retina', '8GB', '[New 100%] Macbook Pro 13 Late 2020 - M1', '8-Core GPU', '24 tháng', 'Macbook Pro 13 Late 2020 là một trong những dòng máy tính xách tay đầu tiên của Apple sở hữu chip M1 độc quyền với hiệu suất cực mạnh mẽ, được ra mắt vào cuối năm 2020, đầu 2021 này. Là Fan của Apple thì chắc chắn bạn sẽ không thể bỏ lỡ chiếc máy tính này', 1, 11),
(169, 'Chip M1 8 Core', 20950000, 0, 7, '1.5Kg', 'macOS', '13.3 Inch Retina', '16GB', '[New 100%] Macbook Pro 13 Late 2020 Z11B000CT', '8-Core GPU', '24 tháng', 'Macbook Pro 13 Late 2020 là một trong những dòng máy tính xách tay đầu tiên của Apple sở hữu chip M1 độc quyền với hiệu suất cực mạnh mẽ, được ra mắt vào cuối năm 2020, đầu 2021 này. Là Fan của Apple thì chắc chắn bạn sẽ không thể bỏ lỡ chiếc máy tính này', 1, 11),
(170, 'Ryzen 75800H - 3.2GHz', 32490000, 0, 9, '2.3kg', 'Windown 11', '15.6\", Full HD (1920 x 1080) 144Hz', '16GB DDR4 2 khe', 'Laptop MSI Gaming Alpha 15 B5EEK R7 5800H', 'AMD Radeon RX 6600M, 8 GB', '24 tháng', 'Sở hữu nguồn sức mạnh bộc phá đến từ bộ vi xử lý AMD 5800H cùng card đồ họa rời RX 6600M 8 GB, luôn sẵn sàng cùng mình khuấy động mọi chiến trường ảo.', 1, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `vai_tro`
--

CREATE TABLE `vai_tro` (
  `id` bigint(20) NOT NULL,
  `ten_vai_tro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `vai_tro`
--

INSERT INTO `vai_tro` (`id`, `ten_vai_tro`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_MEMBER'),
(3, 'ROLE_SHIPPER');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK49lmmclnjgb7eck20lwhv0cks` (`ma_gio_hang`),
  ADD KEY `FKkd69a7wiulr4xgohxl0rlhth4` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK9wl3houbukbxpixsut6uvojhy` (`ma_don_hang`),
  ADD KEY `FK3ry84nmdxgoarx53qjxd671tk` (`ma_san_pham`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKnwjiboxao1uvw1siemkvs1jb9` (`ma_nguoi_dat`),
  ADD KEY `FKgndcrlvetoudr3jaif9b7ay37` (`ma_shipper`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKitverect56puwr47y7tyvy6er` (`ma_nguoi_dung`);

--
-- Chỉ mục cho bảng `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6jm47uh7f94pc3wix0duvedde` (`ma_nguoi_tra_loi`);

--
-- Chỉ mục cho bảng `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD PRIMARY KEY (`ma_nguoi_dung`,`ma_vai_tro`),
  ADD KEY `FKig6jxd861mqv02a8pn68r43fr` (`ma_vai_tro`);

--
-- Chỉ mục cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKqss6n6gtx6lhb7flcka9un18t` (`ma_danh_muc`),
  ADD KEY `FKchvjvgjnq8lbt9mjtyfn5pksq` (`ma_hang_sx`);

--
-- Chỉ mục cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `hang_san_xuat`
--
ALTER TABLE `hang_san_xuat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `nguoi_dung`
--
ALTER TABLE `nguoi_dung`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT cho bảng `vai_tro`
--
ALTER TABLE `vai_tro`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_muc_gio_hang`
--
ALTER TABLE `chi_muc_gio_hang`
  ADD CONSTRAINT `FK49lmmclnjgb7eck20lwhv0cks` FOREIGN KEY (`ma_gio_hang`) REFERENCES `gio_hang` (`id`),
  ADD CONSTRAINT `FKkd69a7wiulr4xgohxl0rlhth4` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`);

--
-- Các ràng buộc cho bảng `chi_tiet_don_hang`
--
ALTER TABLE `chi_tiet_don_hang`
  ADD CONSTRAINT `FK3ry84nmdxgoarx53qjxd671tk` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `FK9wl3houbukbxpixsut6uvojhy` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`id`);

--
-- Các ràng buộc cho bảng `don_hang`
--
ALTER TABLE `don_hang`
  ADD CONSTRAINT `FKgndcrlvetoudr3jaif9b7ay37` FOREIGN KEY (`ma_shipper`) REFERENCES `nguoi_dung` (`id`),
  ADD CONSTRAINT `FKnwjiboxao1uvw1siemkvs1jb9` FOREIGN KEY (`ma_nguoi_dat`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `FKitverect56puwr47y7tyvy6er` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD CONSTRAINT `FK6jm47uh7f94pc3wix0duvedde` FOREIGN KEY (`ma_nguoi_tra_loi`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `nguoidung_vaitro`
--
ALTER TABLE `nguoidung_vaitro`
  ADD CONSTRAINT `FKig6jxd861mqv02a8pn68r43fr` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`id`),
  ADD CONSTRAINT `FKocavcnspu1wcvp2w0s4usfgbf` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `FKchvjvgjnq8lbt9mjtyfn5pksq` FOREIGN KEY (`ma_hang_sx`) REFERENCES `hang_san_xuat` (`id`),
  ADD CONSTRAINT `FKqss6n6gtx6lhb7flcka9un18t` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
