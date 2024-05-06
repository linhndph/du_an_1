-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 06, 2024 lúc 03:54 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duan1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_dat_san`
--

CREATE TABLE `chi_tiet_dat_san` (
  `id_ctdatsan` int(10) NOT NULL,
  `ma_dat_san` varchar(255) NOT NULL,
  `tong_don_hang` int(10) NOT NULL,
  `id_tai_khoan` int(10) NOT NULL,
  `ten_kh` varchar(255) NOT NULL,
  `sdt_kh` int(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dia_chi_kh` text NOT NULL,
  `ten_san` varchar(255) NOT NULL,
  `ca_san` varchar(255) NOT NULL,
  `trang_thaihd` varchar(255) NOT NULL,
  `ngay_su_dung` date NOT NULL DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_dat_san`
--

INSERT INTO `chi_tiet_dat_san` (`id_ctdatsan`, `ma_dat_san`, `tong_don_hang`, `id_tai_khoan`, `ten_kh`, `sdt_kh`, `email`, `dia_chi_kh`, `ten_san`, `ca_san`, `trang_thaihd`, `ngay_su_dung`) VALUES
(182, '#PolyScoccer60284', 300000, 6, 'linh04hb', 333333333, 'linh@fpt.edu.vn', 'Bắc Giang', 'Sân số 1', 'Ca 2', 'Đã đá xong', '2024-01-21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_bien_the`
--

CREATE TABLE `tb_bien_the` (
  `id_bien_the` int(10) NOT NULL,
  `ten_bien_the` varchar(255) NOT NULL,
  `so_luong` int(10) NOT NULL,
  `gia` int(10) NOT NULL,
  `trang_thai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_bien_the`
--

INSERT INTO `tb_bien_the` (`id_bien_the`, `ten_bien_the`, `so_luong`, `gia`, `trang_thai`) VALUES
(1, 'Sân 5 người', 5, 300000, 'Còn sân'),
(2, 'Sân 7 người', 5, 500000, 'Còn sân'),
(3, 'Sân 9 người', 5, 800000, 'Còn sân'),
(4, 'Sân 11 người', 2, 1500000, 'Còn sân');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_binh_luan`
--

CREATE TABLE `tb_binh_luan` (
  `id_binh_luan` int(10) NOT NULL,
  `id_tai_khoan` int(10) NOT NULL,
  `id_san` int(10) NOT NULL,
  `ngay_binh_luan` datetime NOT NULL,
  `noi_dung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_binh_luan`
--

INSERT INTO `tb_binh_luan` (`id_binh_luan`, `id_tai_khoan`, `id_san`, `ngay_binh_luan`, `noi_dung`) VALUES
(1, 2, 1, '2023-11-25 17:07:38', 'ok'),
(3, 6, 3, '2023-11-26 14:14:27', 'sân đá ổn'),
(4, 6, 2, '2023-11-27 11:50:18', 'okkkkk'),
(5, 6, 2, '2023-11-27 11:51:47', 'okkkkk'),
(6, 6, 2, '2023-11-27 11:53:09', 'okkkkk'),
(7, 6, 17, '2023-11-27 11:54:11', 'ngungungu'),
(8, 6, 1, '2023-11-28 02:23:24', 'aaaa'),
(9, 6, 2, '2023-11-28 02:26:59', 'bbbbbbbbbbbbbb'),
(10, 6, 16, '2023-12-04 16:32:10', 'ok');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_ca_san`
--

CREATE TABLE `tb_ca_san` (
  `id_ca` int(10) NOT NULL,
  `ten_ca` varchar(255) NOT NULL,
  `thoi_gian_bd` time NOT NULL,
  `thoi_gian_kt` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_ca_san`
--

INSERT INTO `tb_ca_san` (`id_ca`, `ten_ca`, `thoi_gian_bd`, `thoi_gian_kt`) VALUES
(45, 'Ca 1', '07:00:00', '09:00:00'),
(46, 'Ca 2', '09:00:00', '11:00:00'),
(47, 'Ca 3', '12:00:00', '14:00:00'),
(48, 'Ca 4', '14:00:00', '16:00:00'),
(49, 'Ca 5', '16:00:00', '18:00:00'),
(50, 'Ca 6', '18:00:00', '20:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_chuc_vu`
--

CREATE TABLE `tb_chuc_vu` (
  `id_chuc_vu` int(10) NOT NULL,
  `ten_chuc_vu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_chuc_vu`
--

INSERT INTO `tb_chuc_vu` (`id_chuc_vu`, `ten_chuc_vu`) VALUES
(1, 'admin'),
(3, 'Người dùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_danh_muc`
--

CREATE TABLE `tb_danh_muc` (
  `id_danh_muc` int(10) NOT NULL,
  `ten_danh_muc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_danh_muc`
--

INSERT INTO `tb_danh_muc` (`id_danh_muc`, `ten_danh_muc`) VALUES
(1, 'Sân bóng 5 người'),
(2, 'Sân bóng 7 người'),
(3, 'Sân bóng 9 người'),
(4, 'Sân bóng 11 người');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_dat_san`
--

CREATE TABLE `tb_dat_san` (
  `id_dat_san` int(10) NOT NULL,
  `id_san` int(10) NOT NULL,
  `ngay_sudung` datetime NOT NULL,
  `id_bien_the` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_dat_san`
--

INSERT INTO `tb_dat_san` (`id_dat_san`, `id_san`, `ngay_sudung`, `id_bien_the`) VALUES
(1, 1, '2023-11-27 09:51:33', 1),
(8, 2, '2023-11-27 11:43:43', 1),
(9, 3, '2023-11-27 11:44:17', 1),
(10, 4, '2023-11-27 11:44:26', 1),
(11, 5, '2023-11-27 11:45:01', 1),
(12, 6, '2023-11-27 11:45:09', 2),
(13, 7, '2023-11-27 11:45:15', 2),
(14, 7, '2023-11-27 11:45:21', 2),
(15, 8, '2023-11-27 11:45:29', 2),
(16, 9, '2023-11-27 11:45:36', 2),
(17, 10, '2023-11-27 11:45:41', 2),
(18, 11, '2023-11-27 11:45:46', 3),
(19, 12, '2023-11-27 11:45:52', 3),
(20, 13, '2023-11-27 11:46:07', 3),
(21, 14, '2023-11-27 11:46:15', 3),
(22, 15, '2023-11-27 11:46:20', 3),
(23, 16, '2023-11-27 11:46:24', 4),
(24, 17, '2023-11-27 11:46:29', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_khuyen_mai`
--

CREATE TABLE `tb_khuyen_mai` (
  `id_khuyen_mai` int(10) NOT NULL,
  `id_san` int(10) NOT NULL,
  `ma_khuyen_mai` varchar(255) NOT NULL,
  `ngay_bat_dau` date NOT NULL,
  `ngay_ket_thuc` date NOT NULL,
  `gia_giam` int(10) NOT NULL,
  `mo_ta` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_khuyen_mai`
--

INSERT INTO `tb_khuyen_mai` (`id_khuyen_mai`, `id_san`, `ma_khuyen_mai`, `ngay_bat_dau`, `ngay_ket_thuc`, `gia_giam`, `mo_ta`) VALUES
(2, 1, '#sanbongpoly', '2023-11-22', '2023-11-26', 100000, 'Tri ân khách hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_lien_he`
--

CREATE TABLE `tb_lien_he` (
  `id_lien_he` int(10) NOT NULL,
  `id_tai_khoan` int(10) NOT NULL,
  `noidung` text NOT NULL,
  `trang_thai_lh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_lien_he`
--

INSERT INTO `tb_lien_he` (`id_lien_he`, `id_tai_khoan`, `noidung`, `trang_thai_lh`) VALUES
(2, 6, 'Tôi muốn mua sân', 'Đã phản hồi'),
(3, 6, 'ok', 'Chưa Phản Hồi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_ql_hethong`
--

CREATE TABLE `tb_ql_hethong` (
  `id` int(11) NOT NULL,
  `ten_img` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_ql_hethong`
--

INSERT INTO `tb_ql_hethong` (`id`, `ten_img`, `img`) VALUES
(1, 'banner', 'france-national-football-team-illustration-9dwj7q8v1cptebvj.jpg'),
(5, 'banner2', 'soccer-player-attack.jpg'),
(6, 'banner3', 'hinh-nen-world-cup-2018 (14).jpg'),
(7, 'banner4', '980891.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_san`
--

CREATE TABLE `tb_san` (
  `id_san` int(10) NOT NULL,
  `id_bien_the` int(10) NOT NULL,
  `id_danh_muc` int(10) NOT NULL,
  `ten_san` varchar(255) NOT NULL,
  `img_san` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_san`
--

INSERT INTO `tb_san` (`id_san`, `id_bien_the`, `id_danh_muc`, `ten_san`, `img_san`) VALUES
(1, 1, 1, 'Sân số 1', 'san-bong-da-co-nhan-tao-5-nguoi-2.jpg'),
(2, 1, 1, 'Sân số 2', 'san-bong-da-co-nhan-tao-5-nguoi-2.jpg'),
(3, 1, 1, 'Sân số 3', 'san-bong-da-co-nhan-tao-5-nguoi-2.jpg'),
(4, 1, 1, 'Sân số 4', 'san-bong-da-co-nhan-tao-5-nguoi-2.jpg'),
(5, 1, 1, 'Sân số 5', 'san-bong-da-co-nhan-tao-5-nguoi-2.jpg'),
(6, 2, 2, 'Sân số 6', 'sanbongxuantruong1.jpg'),
(7, 2, 2, 'Sân số 7', 'sanbongxuantruong1.jpg'),
(8, 2, 2, 'Sân số 8', 'sanbongxuantruong1.jpg'),
(9, 2, 2, 'Sân số 9', 'sanbongxuantruong1.jpg'),
(10, 2, 2, 'Sân số 10', 'sanbongxuantruong1.jpg'),
(11, 3, 3, 'Sân số 11', 'kich-thuoc-san-bong-da-2.jpg'),
(12, 3, 3, 'Sân số 12', 'kich-thuoc-san-bong-da-2.jpg'),
(13, 3, 3, 'Sân số 13', 'kich-thuoc-san-bong-da-2.jpg'),
(14, 3, 3, 'Sân số 14', 'kich-thuoc-san-bong-da-2.jpg'),
(15, 3, 3, 'Sân số 15', 'kich-thuoc-san-bong-da-2.jpg'),
(16, 4, 4, 'Sân số 16', 'pngtree-outdoor-aerial-photography-of-a-football-field-in-the-playground-during-image_823111.jpg'),
(17, 4, 4, 'Sân số 17', 'pngtree-outdoor-aerial-photography-of-a-football-field-in-the-playground-during-image_823111.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_tai_khoan`
--

CREATE TABLE `tb_tai_khoan` (
  `id_tai_khoan` int(10) NOT NULL,
  `ten_dang_nhap` varchar(255) NOT NULL,
  `mat_khau` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `id_chuc_vu` int(10) NOT NULL,
  `trang_thai` varchar(255) NOT NULL,
  `img_tai_khoan` varchar(255) NOT NULL,
  `ten_tai_khoan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_tai_khoan`
--

INSERT INTO `tb_tai_khoan` (`id_tai_khoan`, `ten_dang_nhap`, `mat_khau`, `sdt`, `email`, `address`, `id_chuc_vu`, `trang_thai`, `img_tai_khoan`, `ten_tai_khoan`) VALUES
(2, 'vuhuyphuc', '1234', '0767148662', 'hpking2020@gmail.com', 'Hà Nội', 1, '', '2022_07_10_22_43_IMG_0452.JPG', 'Huy Phúc'),
(6, 'duylinh', '12345', '0333333333', 'linh@fpt.edu.vn', 'Bắc Giang', 3, '', 'anh1.jpeg', 'linh04hb'),
(8, 'hoanglinh', '123456789', '0933333333', 'linh@fpt.edu.vn', '20 -Ngõ 2 - Bằng Trù -Hạ Bằng -Thạch Thất - Hà Nội', 3, '', 'ANH4.jpeg', 'maimaichat');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_tin_tuc`
--

CREATE TABLE `tb_tin_tuc` (
  `id_tin_tuc` int(10) NOT NULL,
  `tieu_de` varchar(255) NOT NULL,
  `noi_dung` text NOT NULL,
  `img_tin_tuc` varchar(255) NOT NULL,
  `ngay_dang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_tin_tuc`
--

INSERT INTO `tb_tin_tuc` (`id_tin_tuc`, `tieu_de`, `noi_dung`, `img_tin_tuc`, `ngay_dang`) VALUES
(1, 'Vòng loại World Cup 2026 khu vực Nam Mỹ: Nóng bỏng đại chiến Brazil và Argentina', 'Vòng loại World Cup 2026 khu vực Nam Mỹ đã chính thức diễn ra từ ngày 07/9/2023 và sẽ kết thúc vào tháng 9/2025, với 10 đội tuyển tham dự. Khác khu vực châu Á, vòng loại khu vực Nam Mỹ chỉ gồm 1 giai đoạn duy nhất, áp dụng thể thức thi đấu vòng tròn tính điểm. Sau 18 lượt trận, 6 đội dẫn đầu sẽ giành quyền tham dự World Cup 2026. Trong khi đó, đội xếp thứ 7 sẽ tham dự play-off liên lục địa để tìm kiếm vé vớt.', 'image4-1700548234-484-width1080height720.jpg', '2023-11-22'),
(2, 'HLV Troussier lặng người nhìn Iraq ăn mừng \"bàn thắng vàng\"', 'Những phút cuối trận đấu giữa Việt Nam và Iraq, ban huấn luyện lẫn các cầu thủ dự bị chủ nhà đứng ngồi không yên trong khu kỹ thuật. HLV Troussier và trợ lý Việt Thắng liên tục ra sát đường biên chỉ đạo các học trò. Tuy nhiên, bàn thắng ở những giây cuối cùng của Ali Kadhim khiến HLV Troussier lẫn hơn 2 vạn cổ động viên trên sân Mỹ Đình như “chết lặng”.', 'HLV-Troussier-lang-nguoi-nhin-Iraq-an-mung-13-1700580772-352-width740height518.jpg', '2023-11-21'),
(4, 'Harry Kane có cơ hội vượt Messi - Mbappe, ĐT Anh mơ lên số 1 thế giới', 'Vào lúc 2h45 ngày 21/11 (giờ Hà Nội), ĐT Anh sẽ bước vào trận đấu cuối cùng tại chiến dịch vòng loại EURO 2024 với Bắc Macedonia. Cuộc đọ sức này không còn nhiều ý nghĩa khi \"Tam sư\" đã giành vé tham dự vòng chung kết EURO 2024 cũng như chắc chắn đứng đầu bảng C.  Thế nhưng, ĐT Anh sẽ không coi đây là một cuộc dạo chơi. Trước trận đấu, HLV Gareth Southgate phát đi một thông điệp mang đầy tính răn đe với dàn sao \"Tam sư\". Bất kỳ cầu thủ nào chơi thiếu quyết tâm và chơi dưới phong độ đều có nguy cơ phải trả giá đắt.  Nên nhớ, chỉ còn vài tháng nữa là diễn ra vòng chung kết EURO 2024. Trận đấu với Bắc Macedonia là cơ hội để các ngôi sao tuyển Anh chứng minh năng lực với HLV Southgate, đặc biệt là với các cầu thủ trẻ cũng như dàn kép phụ.', 'Harry-Kane-co-co-hoi-vuot-mat-Messsi---Mbappe-dT-Anh-leo-len-so-1-the-gioi-anh-l---n-1700458499-736-width740height493.jpg', '2023-11-21'),
(5, 'Haaland không được dự EURO 2024, siêu sao có tiếc vì không khoác áo ĐT Anh?', 'ĐT Na Uy đã hoàn toàn hết cơ hội tham dự vòng chung kết EURO 2024. Tại bảng A vòng loại, Na Uy thất bại trong việc giành vé khi phải chung bảng với Tây Ban Nha và Scotland. Cánh cửa play-off thông qua giải Nations League cũng khép lại với Erling Haaland, Martin Odegaard và các đồng đội. Thực tế, Erling Haaland có cơ hội khoác áo ĐT Anh. Bản thân cầu thủ này cũng từng chia sẻ về việc đó trong cuộc phỏng vấn với tờ Goal. Tuy nhiên, trong lúc người hâm mộ tiếc nuối thì với Haaland, việc khoác áo ĐTQG Na Uy là một điều hết sức tự nhiên.  Erling Haaland chia sẻ trên tờ Goal: “Tôi đã sống ở Anh khoảng 3 năm rưỡi, sau đó chuyển đến Na Uy và sống ở đó trong một thời gian dài. Vì vậy việc khoác áo ĐT Na Uy là một điều tự nhiên”.  Haaland sinh ra tại Leeds vào thời điểm cha anh, hậu vệ Alf-Inge Haaland, khoác áo đội chủ sân Elland Road. Sau này, Haaland cùng cha mẹ trở về quê nhà Bryne, Na Uy sinh sống.', 'Haaland-khong-duoc-du-EURO-2024-Lo-co-hoi-khoac-ao-dT-Anh-sieu-sao-co-tiec-haaland---t-na-uy-1700452255-549-width740height444.jpg', '2023-11-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_trang_thai`
--

CREATE TABLE `tb_trang_thai` (
  `id` int(11) NOT NULL,
  `trang_thai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_trang_thai`
--

INSERT INTO `tb_trang_thai` (`id`, `trang_thai`) VALUES
(1, 'Còn Ca'),
(2, 'Hết Ca'),
(3, 'Đã đá xong');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_trang_thai_ca`
--

CREATE TABLE `tb_trang_thai_ca` (
  `id` int(11) NOT NULL,
  `id_trang_thai` int(11) NOT NULL,
  `id_ca` int(11) NOT NULL,
  `id_san` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tb_trang_thai_ca`
--

INSERT INTO `tb_trang_thai_ca` (`id`, `id_trang_thai`, `id_ca`, `id_san`) VALUES
(216, 2, 45, 1),
(217, 1, 45, 2),
(218, 1, 45, 3),
(219, 1, 45, 4),
(220, 1, 45, 5),
(221, 1, 45, 6),
(222, 1, 45, 7),
(223, 1, 45, 8),
(224, 1, 45, 9),
(225, 1, 45, 10),
(226, 1, 45, 11),
(227, 1, 45, 12),
(228, 1, 45, 13),
(229, 1, 45, 14),
(230, 1, 45, 15),
(231, 1, 45, 16),
(232, 1, 45, 17),
(233, 1, 46, 1),
(234, 1, 46, 2),
(235, 1, 46, 3),
(236, 1, 46, 4),
(237, 1, 46, 5),
(238, 1, 46, 6),
(239, 1, 46, 7),
(240, 1, 46, 8),
(241, 1, 46, 9),
(242, 1, 46, 10),
(243, 1, 46, 11),
(244, 1, 46, 12),
(245, 1, 46, 13),
(246, 1, 46, 14),
(247, 1, 46, 15),
(248, 1, 46, 16),
(249, 1, 46, 17),
(250, 1, 47, 1),
(251, 1, 47, 2),
(252, 1, 47, 3),
(253, 1, 47, 4),
(254, 1, 47, 5),
(255, 1, 47, 6),
(256, 1, 47, 7),
(257, 1, 47, 8),
(258, 1, 47, 9),
(259, 1, 47, 10),
(260, 1, 47, 11),
(261, 1, 47, 12),
(262, 1, 47, 13),
(263, 1, 47, 14),
(264, 1, 47, 15),
(265, 1, 47, 16),
(266, 1, 47, 17),
(267, 1, 48, 1),
(268, 1, 48, 2),
(269, 1, 48, 3),
(270, 1, 48, 4),
(271, 1, 48, 5),
(272, 1, 48, 6),
(273, 1, 48, 7),
(274, 1, 48, 8),
(275, 1, 48, 9),
(276, 1, 48, 10),
(277, 1, 48, 11),
(278, 1, 48, 12),
(279, 1, 48, 13),
(280, 1, 48, 14),
(281, 1, 48, 15),
(282, 1, 48, 16),
(283, 1, 48, 17),
(284, 1, 49, 1),
(285, 1, 49, 2),
(286, 1, 49, 3),
(287, 1, 49, 4),
(288, 1, 49, 5),
(289, 1, 49, 6),
(290, 1, 49, 7),
(291, 1, 49, 8),
(292, 1, 49, 9),
(293, 1, 49, 10),
(294, 1, 49, 11),
(295, 1, 49, 12),
(296, 1, 49, 13),
(297, 1, 49, 14),
(298, 1, 49, 15),
(299, 1, 49, 16),
(300, 1, 49, 17),
(301, 1, 50, 1),
(302, 1, 50, 2),
(303, 1, 50, 3),
(304, 1, 50, 4),
(305, 1, 50, 5),
(306, 1, 50, 6),
(307, 1, 50, 7),
(308, 1, 50, 8),
(309, 1, 50, 9),
(310, 1, 50, 10),
(311, 1, 50, 11),
(312, 1, 50, 12),
(313, 1, 50, 13),
(314, 1, 50, 14),
(315, 1, 50, 15),
(316, 1, 50, 16),
(317, 1, 50, 17),
(318, 1, 50, 27),
(319, 1, 49, 27),
(320, 1, 48, 27),
(321, 1, 47, 27),
(322, 1, 46, 27),
(323, 1, 45, 27),
(324, 1, 50, 28),
(325, 1, 49, 28),
(326, 1, 48, 28),
(327, 1, 47, 28),
(328, 1, 46, 28),
(329, 1, 45, 28),
(330, 1, 51, 1),
(331, 1, 51, 2),
(332, 1, 51, 3),
(333, 1, 51, 4),
(334, 1, 51, 5),
(335, 1, 51, 6),
(336, 1, 51, 7),
(337, 1, 51, 8),
(338, 1, 51, 9),
(339, 1, 51, 10),
(340, 1, 51, 11),
(341, 1, 51, 12),
(342, 1, 51, 13),
(343, 1, 51, 14),
(344, 1, 51, 15),
(345, 1, 51, 16),
(346, 1, 51, 17),
(347, 1, 51, 28);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_tiet_dat_san`
--
ALTER TABLE `chi_tiet_dat_san`
  ADD PRIMARY KEY (`id_ctdatsan`);

--
-- Chỉ mục cho bảng `tb_bien_the`
--
ALTER TABLE `tb_bien_the`
  ADD PRIMARY KEY (`id_bien_the`);

--
-- Chỉ mục cho bảng `tb_binh_luan`
--
ALTER TABLE `tb_binh_luan`
  ADD PRIMARY KEY (`id_binh_luan`);

--
-- Chỉ mục cho bảng `tb_ca_san`
--
ALTER TABLE `tb_ca_san`
  ADD PRIMARY KEY (`id_ca`);

--
-- Chỉ mục cho bảng `tb_chuc_vu`
--
ALTER TABLE `tb_chuc_vu`
  ADD PRIMARY KEY (`id_chuc_vu`);

--
-- Chỉ mục cho bảng `tb_danh_muc`
--
ALTER TABLE `tb_danh_muc`
  ADD PRIMARY KEY (`id_danh_muc`);

--
-- Chỉ mục cho bảng `tb_dat_san`
--
ALTER TABLE `tb_dat_san`
  ADD PRIMARY KEY (`id_dat_san`);

--
-- Chỉ mục cho bảng `tb_khuyen_mai`
--
ALTER TABLE `tb_khuyen_mai`
  ADD PRIMARY KEY (`id_khuyen_mai`);

--
-- Chỉ mục cho bảng `tb_lien_he`
--
ALTER TABLE `tb_lien_he`
  ADD PRIMARY KEY (`id_lien_he`);

--
-- Chỉ mục cho bảng `tb_ql_hethong`
--
ALTER TABLE `tb_ql_hethong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_san`
--
ALTER TABLE `tb_san`
  ADD PRIMARY KEY (`id_san`);

--
-- Chỉ mục cho bảng `tb_tai_khoan`
--
ALTER TABLE `tb_tai_khoan`
  ADD PRIMARY KEY (`id_tai_khoan`);

--
-- Chỉ mục cho bảng `tb_tin_tuc`
--
ALTER TABLE `tb_tin_tuc`
  ADD PRIMARY KEY (`id_tin_tuc`);

--
-- Chỉ mục cho bảng `tb_trang_thai`
--
ALTER TABLE `tb_trang_thai`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tb_trang_thai_ca`
--
ALTER TABLE `tb_trang_thai_ca`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_tiet_dat_san`
--
ALTER TABLE `chi_tiet_dat_san`
  MODIFY `id_ctdatsan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT cho bảng `tb_bien_the`
--
ALTER TABLE `tb_bien_the`
  MODIFY `id_bien_the` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tb_binh_luan`
--
ALTER TABLE `tb_binh_luan`
  MODIFY `id_binh_luan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `tb_ca_san`
--
ALTER TABLE `tb_ca_san`
  MODIFY `id_ca` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `tb_chuc_vu`
--
ALTER TABLE `tb_chuc_vu`
  MODIFY `id_chuc_vu` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tb_danh_muc`
--
ALTER TABLE `tb_danh_muc`
  MODIFY `id_danh_muc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tb_dat_san`
--
ALTER TABLE `tb_dat_san`
  MODIFY `id_dat_san` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `tb_khuyen_mai`
--
ALTER TABLE `tb_khuyen_mai`
  MODIFY `id_khuyen_mai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tb_lien_he`
--
ALTER TABLE `tb_lien_he`
  MODIFY `id_lien_he` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_ql_hethong`
--
ALTER TABLE `tb_ql_hethong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tb_san`
--
ALTER TABLE `tb_san`
  MODIFY `id_san` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tb_tai_khoan`
--
ALTER TABLE `tb_tai_khoan`
  MODIFY `id_tai_khoan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tb_tin_tuc`
--
ALTER TABLE `tb_tin_tuc`
  MODIFY `id_tin_tuc` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tb_trang_thai`
--
ALTER TABLE `tb_trang_thai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tb_trang_thai_ca`
--
ALTER TABLE `tb_trang_thai_ca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
