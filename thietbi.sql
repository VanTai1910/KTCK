-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 27, 2022 lúc 06:41 AM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thietbi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Điện thoại'),
(2, 'Laptop');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` int(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `diachi` varchar(500) NOT NULL,
  `trangthai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `sodienthoai`, `email`, `diachi`, `trangthai`) VALUES
(74, 'asdi', 143452342, 'zxcvb@gmail.com', '22khank', ''),
(75, 'qe', 213341, 'erw@gmail.com', '21uyt', ''),
(76, 'nm', 455444, 'cvb@gmail.com', '342khmn', ''),
(78, 'nam', 145234134, 'khanh@gmail.com', '123abc', ''),
(79, 'daa', 1132, 'nam@gmail.com', '12312', ''),
(80, 'qc', 7213123, 'zcbc@gmail.com', 'xzc123', ''),
(81, '12312', 2334234, '2423@gmail.com', 'qewdqw', ''),
(82, 'q12', 131231, 'tyu@gmail.com', 'zcbn1123', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhangchitiet`
--

CREATE TABLE `donhangchitiet` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(10000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL,
  `ngay` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `donhangchitiet`
--

INSERT INTO `donhangchitiet` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`, `ngay`) VALUES
(53, 63, 12, 'Laptop MSI Modern 14 B11MOL 420VN i3', 27400000, 2, ''),
(54, 64, 24, 'Asus Zenbook UX425EA KI429T i5 1135G7/8GB/512GB SSD/Win 10', 21599000, 1, ''),
(55, 65, 18, 'Laptop Asus Gaming ROG Flow Z13 GZ301Z-LD110W i7 12700H/16GB/512GB', 47499000, 1, ''),
(56, 66, 20, 'Laptop CHUWI GemiBook Pro Celeron N5100/8GB/256GB', 8599000, 1, ''),
(57, 66, 21, 'TECNO POVA 2 4GB-64GB', 3490000, 1, ''),
(58, 67, 20, 'Laptop CHUWI GemiBook Pro Celeron N5100/8GB/256GB', 8599000, 1, ''),
(59, 67, 21, 'TECNO POVA 2 4GB-64GB', 3490000, 1, ''),
(60, 68, 20, 'Laptop CHUWI GemiBook Pro Celeron N5100/8GB/256GB', 8599000, 1, ''),
(61, 68, 21, 'TECNO POVA 2 4GB-64GB', 3490000, 1, ''),
(62, 69, 20, 'Laptop CHUWI GemiBook Pro Celeron N5100/8GB/256GB', 8599000, 1, ''),
(63, 69, 21, 'TECNO POVA 2 4GB-64GB', 3490000, 1, ''),
(64, 70, 25, 'iPhone 13 Pro Max 128GB', 30990000, 1, ''),
(65, 71, 24, 'Asus Zenbook UX425EA KI429T i5 1135G7/8GB/512GB SSD/Win 10', 21599000, 1, ''),
(66, 71, 21, 'TECNO POVA 2 4GB-64GB', 3490000, 1, ''),
(67, 72, 24, 'Asus Zenbook UX425EA KI429T i5 1135G7/8GB/512GB SSD/Win 10', 21599000, 1, ''),
(68, 72, 21, 'TECNO POVA 2 4GB-64GB', 3490000, 1, ''),
(69, 73, 24, 'Asus Zenbook UX425EA KI429T i5 1135G7/8GB/512GB SSD/Win 10', 21599000, 1, ''),
(70, 73, 21, 'TECNO POVA 2 4GB-64GB', 3490000, 1, ''),
(71, 73, 25, 'iPhone 13 Pro Max 128GB', 30990000, 1, ''),
(72, 74, 21, 'TECNO POVA 2 4GB-64GB', 3490000, 1, ''),
(73, 75, 24, 'Asus Zenbook UX425EA KI429T i5 1135G7/8GB/512GB SSD/Win 10', 21599000, 1, ''),
(74, 76, 24, 'Asus Zenbook UX425EA KI429T i5 1135G7/8GB/512GB SSD/Win 10', 21599000, 1, ''),
(75, 76, 25, 'iPhone 13 Pro Max 128GB', 30990000, 1, ''),
(76, 77, 22, 'Vertu Signature S Dragon Bespoke', 225000000, 1, ''),
(77, 78, 25, 'iPhone 13 Pro Max 128GB', 30990000, 1, ''),
(78, 79, 14, 'Laptop Dell Inspiron N3511 i5 1135G7/4GB/512GB', 18999000, 1, ''),
(79, 79, 7, 'Điện Thoại iPhone XS MAX 256GB', 23500000, 2, ''),
(80, 80, 24, 'Asus Zenbook UX425EA KI429T i5 1135G7/8GB/512GB SSD/Win 10', 21599000, 1, ''),
(81, 81, 22, 'Vertu Signature S Dragon Bespoke', 225000000, 1, ''),
(82, 81, 19, 'Microsoft Surface Laptop Go i5 1035G1/8GB/128GB', 17099000, 1, ''),
(83, 82, 10, 'Vivo Y21 4GB+1GB - 64GB', 3990000, 1, ''),
(84, 83, 14, 'Laptop Dell Inspiron N3511 i5 1135G7/4GB/512GB', 37998000, 2, ''),
(85, 84, 7, 'Điện Thoại iPhone XS MAX 256GB', 11750000, 1, ''),
(86, 85, 22, 'Vertu Signature S Dragon Bespoke', 225000000, 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Điện thoại', 'https://cdn.tgdd.vn/Files/2021/06/10/1359136/h2_1280x720-800-resize.jpg'),
(2, 'Laptop', 'https://cdn.tgdd.vn/Files/2020/09/09/1288573/gimebookthumb_800x450.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(200) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idsanpham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`) VALUES
(1, 'Vertu Signature S Clous de Paris Rose Gold Full Box Đã Sử Dụng', 560000000, 'https://vertu.com.vn/images/products/2021/11/15/small/Vertu-Signature-S-Clous-de-Paris-Rose-Gold-Full-Box-Da-Su-Dung-1636947478.png', 'Tổng quan	\r\nBăng tần	\r\nGSM 850 / 900 / 1800 / 1900 \r\nUMTS 850 / 2100\r\n\r\nNgôn ngữ	\r\nĐa ngôn ngữ\r\n\r\nMàu sắc	\r\nVàng hồng\r\n\r\nKích cỡ	\r\nKích thước	\r\n130 x 42 x 13 mm, 65 cc\r\n\r\nTrọng lượng	\r\n166g to 238g\r\n\r\nHiển thị	\r\nLoại màn hình	\r\nTFT, 16M colors\r\n\r\nKích thước	\r\n240 x 320 pixels, 2.0 inches (~200 ppi pixel density)\r\n\r\nNhạc chuông	\r\nLoại	\r\nĐa âm sắc\r\n\r\nTải nhạc	\r\nCó\r\n\r\nRung	\r\nCó\r\n\r\nBộ nhớ	\r\nDanh bạ	\r\n2000 contacts\r\n\r\nBộ nhớ trong	\r\n4GB\r\n\r\nThẻ nhớ ngoài	\r\n--\r\n\r\nDữ liệu	\r\nGPRS	\r\nCó\r\n\r\nHSCSD	\r\nCó\r\n\r\nEDGE	\r\nCó\r\n\r\n3G	\r\n384 kbps\r\n\r\nWifi	\r\nWi-Fi 802.11 b/g\r\n\r\nWCDMA	\r\nCó\r\n\r\nBluetooth	\r\nCó\r\n\r\nHồng ngoại	\r\nKhông\r\n\r\nUSB	\r\nmicroUSB\r\n\r\nĐặc tính	\r\nHệ điều hành	\r\n--\r\n\r\nTin nhắn	\r\nSMS, MMS, Email\r\n\r\nĐồng hồ	\r\nCó\r\n\r\nBáo thức	\r\nCó\r\n\r\nFM Radio	\r\nKhông\r\n\r\nTrò chơi	\r\nCài sẵn trong máy\r\n\r\nTrình duyệt	\r\nWAP, xHTML\r\n\r\nJava	\r\nKhông\r\n\r\nMáy ảnh	\r\nKhông\r\n\r\nQuay phim	\r\nKhông\r\n\r\nGhi âm	\r\nTuỳ thuộc bộ nhớ\r\n\r\nNghe nhạc	\r\nMP3\r\n\r\nXem phim	\r\nMP4, 3GP\r\n\r\nGhi âm cuộc gọi	\r\nKhông\r\n\r\nLoa ngoài	\r\nCó\r\n\r\nKhác	\r\n- Organizer\r\n- Vertu Fortress Wireless synchronization service\r\n- Vertu Concierge service\r\n- Front made of sapphire\r\n- 4.75 carats ruby bearings for the keys\r\n- Voice memo\r\n- Predictive text input\r\n\r\nLoại Pin	\r\nLoại pin	\r\nStandard battery, Li-Ion\r\n\r\nThời gian chờ	\r\n300 h\r\n\r\nThời gian thoại	\r\n5 h (2G) / 3 h (3G)', 1),
(2, 'Laptop Acer Nitro Gaming AN515-57-5669 i5 11400H/8GB/512GB SSD/Nvidia GTX1650 4GB/Win11 ', 19199000, 'https://cdn.tgdd.vn/Products/Images/44/263983/acer-nitro-5-gaming-an515-57-5669-i5-11400h-8gb-512gb-144hz-4gb-gtx1650-win11-nhqehsv001-031221-100506-600x600.jpg', 'Màn hình 15.6 inch, 1920 x 1080 Pixels, IPS, 144 Hz, Acer ComfyView LED-backlit\r\nCPU Intel, Core i5, 11400H\r\nRAM 8 GB, DDR4, 3200 MHz\r\nỔ cứng	SSD 512 GB\r\nĐồ họa	NVIDIA GeForce GTX 1650 4GB; Intel Iris Xe Graphics\r\nHệ điều hành Windows 11 Home\r\nTrọng lượng 2.2 kg\r\nKích thước 363.4 x 255 x 23.9 mm\r\nXuất xứ	Trung Quốc\r\nNăm ra mắt 2021', 2),
(3, 'HP Gaming Victus 16-e0179AX R5', 23499000, 'https://cf.shopee.vn/file/51250eaf20fbfe37171aeaeba0adf108', 'CPU:Ryzen 55600H3.3GHz\r\nRAM:8 GBDDR4 2 khe (1 khe 4GB + 1 khe 4GB)3200 MHz\r\nỔ cứng:512 GB SSD NVMe PCIe (Có thể tháo ra, lắp thanh khác tối đa 1TB)Hỗ trợ thêm 1 khe cắm SSD M.2 PCIe mở rộng (nâng cấp tối đa 1TB)\r\nMàn hình:16.1\"Full HD (1920 x 1080)144Hz\r\nCard màn hình:Card rờiRTX 3050Ti 4GB\r\nCổng kết nối:1x SuperSpeed USB Type-C3x SuperSpeed USB AHDMIJack tai nghe 3.5 mmLAN (RJ45)\r\nĐặc biệt:Có đèn bàn phím\r\nHệ điều hành:Windows 11 Home SL\r\nThiết kế:Vỏ nhựa\r\nKích thước, trọng lượng:Dài 370 mm - Rộng 260 mm - Dày 23.5 mm - Nặng 2.46 kg\r\nThời điểm ra mắt:2021', 2),
(4, 'OPPO Reno7 Z 5G 8GB - 128GB ', 10490000, 'https://lapvui.com/wp-content/uploads/2022/02/oppo-reno7-va-reno7-5g-thumb-min.jpg', 'OPPO Reno7 Z 5G chinh phục người dùng ngay từ ánh nhìn đầu tiên với thiết kế thời thượng bậc nhất. Bên trong điện thoại còn có nội lực mạnh mẽ từ công nghệ cải tiến, hệ thống camera chân dung tuyệt đỉnh, vi xử lý Snapdragon 695 5G và sạc siêu tốc 33W, giúp bạn sẵn sàng khám phá cuộc sống tràn đầy màu sắc.\r\nThông số kỹ thuật\r\nMàn hình Chính: 6.43 inch, Chính: AMOLED, FHD+, 1080 x 2400 Pixels\r\nCamera sau 64.0 MP + 2.0 MP + 2.0 MP\r\nCamera Selfie	16.0 MP\r\nRAM 8 GB\r\nBộ nhớ trong	128 GB\r\nCPU Snapdragon 695 5G\r\nGPU Adreno 619\r\nDung lượng pin	4500 mAh\r\nHệ điều hành	Android 11 (ColorOS 12)\r\nThời gian ra mắt	03/2022\r\n', 1),
(5, 'Xiaomi 11 Lite 5G NE 8GB - 256GB', 8490000, 'https://cdn.thongsokythuat.vn/wp-content/uploads/Dien-thoai-Xiaomi-11-Lite-5G-NE-2021-600x600.png', 'Trong khi smartphone đang dần có xu hướng dày hơn, Xiaomi 11 Lite 5G NE lại mỏng nhẹ đáng kinh ngạc với trọng lượng chỉ 158 gram và độ mỏng 6,81mm. Kiểu dáng siêu mỏng cùng chất liệu kính và kim loại cao cấp, kết hợp với những đường nét bo cong tinh tế tạo nên một chiếc điện thoại đẹp thanh tú, khác biệt với các đối thủ trên thị trường. Thiết kế camera gọn gàng, vòng hào quang lấp lánh, mặt lưng kính mờ sang trọng, từng chi tiết trên Xiaomi 11 Lite 5G NE đều toát lên vẻ cao cấp và thời trang.\r\n\r\n', 1),
(6, 'Nokia G21 6GB-128GB', 4090000, 'https://miratran.com/wp-content/uploads/2022/03/Nokia-G21.jpeg', 'Đến từ thương hiệu nổi danh bậc nhất thế giới điện thoại, Nokia G21 đem đến cho bạn trải nghiệm vượt trội với thời lượng pin lên đến 3 ngày, camera 50MP kết hợp cùng công nghệ AI xuất sắc. Ngoài ra, sản phẩm còn được trang bị bộ khung vỏ polycarbonate bóng bẩy, siêu bền cùng hệ điều hành cập nhật liên tục suốt 2 năm.\r\n', 1),
(7, 'Điện Thoại iPhone XS MAX 256GB', 11750000, 'https://www.techone.vn/wp-content/uploads/2019/04/iphone-xs-max-256gb-white.jpg', 'Màu Vàng của iPhone Xs Max không giống với các màu Vàng trên smartphone các hãng khác, cũng không giống với màu Rose Gold quen thuộc, nó chỉ hơi Vàng nhẹ nhưng nhờ mặt kính nên khá nổi khi có ánh sáng chiếu vào.\r\n\r\nMàn hình lớn luôn đem đến trải nghiệm xem thoải mái hơn, các nội dung hiển thị sẽ được phóng lớn giúp chúng trông rõ ràng và dễ nhìn. Tuy nhiên, phần tai thỏ trên iPhone Xs Max nói riêng và dòng iPhone X nói chung, đều có một khuyết điểm nhỏ mà chưa thấy Apple thay đổi.\r\n\r\n', 1),
(8, 'Samsung Galaxy Z Fold3 5G 256GB', 33990000, 'http://phuongtung.vn/pt/images/detailed/22/Zfold3-black.jpg', 'Khi bạn mở ra màn hình gập lớn tới 7,6 inch trên Samsung Galaxy Z Fold3 5G là lúc bạn đã mở ra một tương lai hoàn toàn mới cho thế giới smartphone, nơi công nghệ vượt qua mọi giới hạn, cho trải nghiệm hoàn hảo nhất ở một thiết bị di động nhỏ gọn.\r\nThông số kỹ thuật\r\nMàn hình Phụ: 6.2 inch, Chính: 7.6 inch, Dynamic AMOLED 2X, HD+, 1768 x 2208 Pixels\r\nCamera sau 12.0 MP + 12.0 MP + 12.0 MP\r\nCamera Selfie	10.0 MP\r\nRAM 12 GB\r\nBộ nhớ trong	256 GB\r\nCPU Snapdragon 888\r\nDung lượng pin	4400 mAh\r\nThẻ sim	2 - 2 Nano SIM hoặc 1 eSIM, 1 Nano SIM\r\nHệ điều hành Android 11\r\nXuất xứ	Trung Quốc / Việt Nam\r\nThời gian ra mắt 08/2021', 1),
(9, 'Samsung Galaxy Z Fold2 5G', 50000000, 'https://images.fpt.shop/unsafe/fit-in/filters:quality(90)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/samsung-galaxy-zfold2.jpg', 'Không giống bất kỳ chiếc điện thoại nào khác, Samsung Galaxy Z Fold 2 5G sở hữu màn hình gập kỳ diệu mà mỗi khi mở màn hình, bạn đã mở ra tương lai của ngành công nghiệp smartphone.\r\nKhông chỉ là một chiếc điện thoại màn hình gập, Galaxy Z Fold 2 5G còn là chiếc điện thoại có tới 2 màn hình. Trong trạng thái gập, màn hình ngoài của máy với kích thước 6,2 inch, viền mỏng cho trải nghiệm smartphone thông thường, nơi bạn có thể thao tác dễ dàng bằng một tay. Còn muốn trải nghiệm một màn hình lớn hơn, tương đương máy tính bảng, bạn có thể mở ra màn hình gập, điều kỳ diệu sẽ xuất hiện.', 1),
(10, 'Vivo Y21 4GB+1GB - 64GB', 3990000, 'https://cdn.tgdd.vn/Products/Images/42/115343/vivo-y21-white-01-1-600x600.jpg', 'Điện thoại vivo Y21 có thiết kế siêu mỏng thời thượng, vân kim cương độc đáo, mang trên mình viên pin dung lượng cao 5000 mAh, sạc siêu tốc 18W và công nghệ RAM mở rộng, đem tới sự năng động, ngập tràn cảm hứng cho giới trẻ hiện đại.\r\nVivo Y21 vô cùng mỏng nhẹ với độ mỏng chỉ 8.0mm và trọng lượng 182 gram, dễ dàng thao tác và sử dụng bằng một tay. Máy có thiết kế tuyệt đẹp với ngôn ngữ thiết kế phẳng cùng mặt lưng tỏa sáng theo phong cách riêng biệt.\r\nLà chiếc điện thoại màn hình lớn với kích thước lớn tới 6,51 inch, thiết kế dạng tràn viền Halo, cho hình ảnh chi tiết và sống động. Độ phân giải HD+ đủ để truyền tải những nội dung hấp dẫn, dù là đọc báo, xem phim hay chơi game', 1),
(11, 'Samsung Galaxy A32', 6090000, 'https://images.samsung.com/is/image/samsung/p6pim/sg/feature/116470958/sg-feature-minimalist-design-with-striking-style-395975000?$FB_TYPE_A_MO_JPG$', 'Sở hữu màn hình 90Hz, 4 camera 64MP, pin dung lượng 5000 mAh và những thông số hàng đầu trong tầm giá, Samsung Galaxy A32 sẽ để bạn khám phá cuộc sống theo cách thú vị của riêng bạn.. Nhưng A32 không chỉ có số lượng mà chất lượng mới là điều đáng nói. Nổi bật nhất là camera chính độ phân giải lên tới 64MP, chụp ảnh sắc nét đến từng chi tiết, khả năng chụp thiếu sáng ấn tượng. Bạn có thể ghi lại những khoảnh khắc đáng nhớ thường ngày bằng các bức ảnh, đoạn video chất lượng.\r\n\r\nGiống như tầm mắt người trong thực tế, camera 8MP góc siêu rộng của Samsung Galaxy A32 mang đến khung hình rộng tới 123 độ. Bạn sẽ có thể thu lại nhiều cảnh vật hơn, nhiều người hơn trong một bức hình. Hãy thử khám phá thế giới qua một góc nhìn mới của ống kính camera siêu rộng.', 1),
(12, 'Laptop Asus Gaming TUF FX506HCB-HN144W i5 11400H/8GB/512GB', 13700000, 'https://cdn.tgdd.vn/Products/Images/44/269834/asus-tuf-gaming-fx506hcb-i5-hn144w-3-2.jpg', 'ASUS Gaming TUF FX506HCB-HN144W thuộc dòng TUF F15 2021 với sự nâng cấp mạnh mẽ về cấu hình khi sử dụng CPU Intel Gen 11 và GPU RTX 30 series, mang đến trải nghiệm chơi game không giới hạn dành cho bạn ở mọi lúc mọi nơi.\r\nKhí chất game thủ được toát lên ngay khi bạn nhìn vào ASUS Gaming TUF FX506HCB-HN144W. Phiên bản màu Đen Graphite Black cực ngầu với màu sắc chủ đạo là đen tuyền cổ điển nhưng không hề nhàm chán nhờ họa tiết phay xước cùng những hình khối phá cách\r\nASUS TUF Gaming F15 mang trên mình GPU NVIDIA GeForce RTX 3050, card đồ họa sử dụng kiến trúc Ampere – kiến trúc RTX thế hệ thứ 2 của NVIDIA. Bạn sẽ được tận hưởng những công nghệ hàng đầu như nhân RT mới, nhân Tensor mới và các tính năng AI tiên tiến.', 2),
(13, 'Laptop Lenovo Ideapad Slim 3 14ITL6 i3 1115G4/8GB/512GB', 12399000, 'https://images.fpt.shop/unsafe/filters:quality(5)/fptshop.com.vn/Uploads/images/2015/0511/Lenovo-Ideapad-Slim-3-14ITL6-gold-1.jpg', 'Lenovo Ideapad Slim 3 14ITL6 (IdeaPad Slim 3i Gen 6 14) là dòng laptop cơ bản dành cho sinh viên, nhân viên văn phòng đời mới nhất. Sức mạnh từ bộ vi xử lý Intel thế hệ thứ 11, các tính năng thông minh giúp bạn có được thiết bị làm việc hiệu quả hơn.\r\nHiệu năng của Lenovo Ideapad Slim 3 14ITL6 được cải tiến rõ rệt so với thế hệ trước khi được trang bị bộ vi xử lý Intel thế hệ thứ 11 mới nhất. Con chip Intel Core i3 1115G4 có xung nhịp lên tới 4.10GHz, sản xuất trên tiến trình 10nm SuperFin tiết kiệm năng lượng, giúp bạn chạy tốt mọi ứng dụng văn phòng một cách mượt mà. Hơn nữa, Ideapad Slim 3 14ITL6 còn có sẵn tới 8GB RAM DDR4 3200MHz và 512GB SSD', 2),
(14, 'Laptop Dell Inspiron N3511 i5 1135G7/4GB/512GB', 18999000, 'https://cdn.tgdd.vn/Products/Images/44/265469/dell-inspiron-15-3511-i5-1135g7-4gb-512gb-600x600.jpg', 'Dell Inspiron N3511 thuộc dòng Inspiron 15 3000 mới 2021 từ Dell với thiết kế nhỏ gọn hơn nhưng mang đến nhiều trải nghiệm hơn. Màn hình lớn tràn viền sắc nét, bộ vi xử lý Intel Core i5 thế hệ thứ 11 mạnh mẽ cùng rất nhiều nâng cấp sẽ giúp bạn tự tin hoàn thành công việc.\r\nDell Inspiron N3511 có kích thước nhỏ gọn hơn hẳn thế hệ trước. Nhờ viền màn hình mỏng hơn, thiết kế tinh giản hơn mà chiếc laptop 15,6 inch của bạn giờ đây vô cùng gọn nhẹ. Máy chỉ mỏng 18,9mm và trọng lượng 1,73kg\r\nSo với thế hệ trước, Dell Inspiron N3511 đã có một bước tiến mạnh mẽ với bộ vi xử lý Intel Core i5, con chip thuộc thế hệ thứ 11 Tiger Lake mới nhất. Intel Core i5 1135G7 bao gồm 4 nhân 8 luồng, tốc độ tối đa 4.20 GHz và sản xuất trên tiến trình 10nm SuperFin tiên tiến. Laptop sẽ đảm bảo duy trì tốc độ xử lý đa nhân mạnh mẽ trong thời gian dài. Kết hợp cùng 4GB RAM DDR4 và 512GB ổ cứng SSD, mọi ứng dụng đều chạy rất mượt mà trên Dell Inspiron N3511.\r\n\r\n\r\n', 2),
(15, 'Laptop Dell XPS 13 9310/i5 1135G7/8GB/512GB', 37999000, 'https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/dell-xps-13-9310-16.jpg', 'Dòng laptop cao cấp siêu di động Dell XPS 13 9310 đã có bước nhảy vọt về hiệu năng với sự xuất hiện của bộ vi xử lý Intel thế hệ thứ 11. Giờ đây bạn có thể làm những công việc đồ họa chuyên nghiệp, các tác vụ nặng trên chiếc laptop mang vẻ đẹp xứng tầm kiệt tác.\r\nDell XPS 13 9310 được chế tác từ khung nhôm cứng cáp và 100% cắt CNC chính xác đến từng mm.\r\nKết quả là chiếc laptop cao cấp trên tay bạn chỉ nặng có 1,3 kg và độ mỏng 1,47 cm, siêu mỏng nhẹ.\r\nMàn hình tỉ lệ 16:10 cho không gian hiển thị lớn hơn 6,8% so với màn hình laptop 13 inch thông thường, nhưng máy lại được làm gọn hơn 2% thế hệ trước nhờ viền mỏng 4 cạnh tuyệt đẹp\r\nDell XPS 13 9310 sở hữu bộ vi xử lý Intel thế hệ thứ 11 mới nhất, không chỉ cho tốc độ nhanh chóng mà còn nâng tầm khả năng xử lý đồ họa. Con chip Intel Core i5 1135G7 với 4 lõi 8 luồng, tốc độ tối đa 4.20 GHz, cho hiệu suất đa nhân mạnh mẽ và ổn định. GPU đồ họa tích hợp Intel Iris Xe Graphics mạnh không thua gì một số card rời trên laptop hiện nay', 2),
(16, 'MacBook Air 13\" 2020 M1 16GB/256GB', 30990000, 'https://hoanghamobile.com/Uploads/2021/01/15/air1.jpg', 'Phiên bản MacBook Air M1 với tùy chọn bộ nhớ RAM lên tới 16GB sẽ giúp cho khả năng làm việc đa nhiệm của bạn hiệu quả hơn, công việc trôi chảy hơn khi bạn có thể làm rất nhiều việc cùng lúc. Bộ vi xử lý Apple M1 với 16 tỉ bóng bán dẫn, bao gồm 8 nhân cực mạnh, trong đó có 4 nhân hiệu năng cao và 4 nhân tiết kiệm điện, mang đến cho MacBook Air tốc độ xử lý tuyệt vời, đồng thời kéo dài thời lượng pin. Nhờ vậy MacBook Air 13 2020 M1 có hiệu suất nhanh gấp 3,5 lần thế hệ cũ, cho bạn làm việc với cả những công việc chuyên nghiệp, những tác vụ nặng mà không thể chạy được trên MacBook Air trước đây.\r\nKhông cần phải mất thời gian nhập mật khẩu, trên MacBook Air 13 2020 M1, cảm biến vân tay Touch ID sẽ đăng nhập mọi thứ chỉ với một cú chạm. Mở khóa máy tính hay mở khóa tài liệu bảo mật, truy cập cài đặt hệ thống, bạn đều có thể sử dụng vân tay một cách nhanh chóng và an toàn.', 2),
(17, 'MacBook Pro 16\" 2021 M1 Max 1TB', 92990000, 'https://cdn.tgdd.vn/Products/Images/44/253582/apple-macbook-pro-16-m1-max-2021-2-1.jpg', 'MacBook Pro 16 inch 2021 đích thực là một con quái vật về cấu hình với bộ vi xử lý Apple M1 Max mạnh nhất, cho bạn làm việc ở năng suất vượt trội trên màn hình Liquid Retina XDR tuyệt đẹp. Đi cùng với đó là thời lượng pin lên tới 21 giờ, hệ thống âm thanh hình ảnh chuyên nghiệp và tất cả các cổng kết nối bạn cần.\r\nBộ vi xử lý M1 Max mạnh nhất thế giới laptop hiện nay với CPU lên tới 10 lõi, GPU lên tới 32 lõi, hỗ trợ RAM tối đa 64GB\r\nMacBook Pro M1 Max mới có hiệu suất CPU nhanh hơn 3,7 lần, GPU nhanh hơn tới 13 lần. Chiếc laptop di động của bạn có thể hỗ trợ tới 4 màn hình ngoài, lên đến 7 luồng phát video 8K ProRes hoặc 20 luồng phát video 4K ProRes', 2),
(18, 'Laptop Asus Gaming ROG Flow Z13 GZ301Z-LD110W i7 12700H/16GB/512GB', 47499000, 'https://anphat.com.vn/media/product/41308_laptop_asus_rog_flow_z13_gz301zc_ld110w__core____i7_12700h__16gb__512gb__rtx____3050_4gb__13__1_.jpg', 'ASUS ROG Flow Z13 cho bạn một cái nhìn hoàn toàn khác biệt về laptop gaming, nơi bạn được tận hưởng sự linh hoạt đến khó tin với chiếc máy tính trọng lượng chỉ 1,1 kg, có thể tháo rời bàn phím để sử dụng đa năng. Tất nhiên bên trong ROG Flow Z13 là cấu hình đỉnh nhất hiện nay khi trang bị bộ vi xử lý Intel thế hệ thứ 12.\r\nASUS Gaming ROG Flow Z13 GZ301Z-LD110W vẫn tích hợp cấu hình cực khủng với bộ vi xử lý Intel Core i7 12700H. Đây là con chip thuộc thế hệ thứ 12 Alder Lake mới nhất, có tới 14 lõi 20 luồng, tốc độ Turbo tối đa 4.70 GHz, 24MB Intel Smart Cache. Sức mạnh của Intel Core i7 12700H có thể đáp ứng được những công việc chuyên nghiệp', 2),
(19, 'Microsoft Surface Laptop Go i5 1035G1/8GB/128GB', 17099000, 'https://anphat.com.vn/media/lib/20-05-2021/maxresdefault-10-16015609798582128319254.jpg', 'Nếu bạn đang tìm kiếm một chiếc laptop văn phòng nhỏ gọn, mỏng, nhẹ, sang chảnh và xịn xò nhưng mức giá lại dễ tiếp cận thì Microsoft Surface Laptop Go là một trong những lựa chọn tốt nhất mà bạn không thể bỏ qua.\r\nMicrosoft Surface Laptop Go có màn hình kích thước 12.4 inch, độ phân giải 1536 x 1024 với mật độ điểm ảnh 148PPI đủ để đáp ứng tốt mọi nhu cầu làm việc văn phòng\r\nMặc dù có mức giá dễ tiếp cận nhưng Microsoft lại trang bị cho Surface Laptop Go một cấu hình rất tốt với con chip Intel Core i5 1035G1 Ice Lake thế hệ thứ 10 với 4 nhân xử lý và 8 luồng, cùng với công nghệ Turbo Boost 2.0 tốc độ tối đa lên đến 3.6GHz, một mức rất cao so với nhu cầu làm việc văn phòng hay so với những chiếc laptop ultra nhỏ gọn và siêu mỏng, siêu nhẹ. Với bộ vi xử lý Intel Core i5 1035G1, Surface Laptop Go có thể cân tốt mọi công việc văn phòng và cả giải trí cơ bản với những tựa game hay các tác vụ đồ họa thông thường. Máy được trang bị RAM onboard LPDDR4X thế hệ mới, dung lượng 8 GB thoải mái cho công việc. Tốc độ RAM cũng hết sức ấn tượng với 3733 MHz giúp bạn xử lý công việc nhanh chóng.', 2),
(20, 'Laptop CHUWI GemiBook Pro Celeron N5100/8GB/256GB', 8599000, 'https://images.fpt.shop/unsafe/filters:quality(5)/fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/CHUWI-GemiBook-Pro-14-11.jpg', 'CHUWI GemiBook Pro 14 là mẫu laptop doanh nhân với kiểu dáng sang trọng hiện đại, màn hình độ phân giải 2K siêu nét cùng hiệu suất ấn tượng trong một mức giá rẻ đến khó tin.\r\nCHUWI GemiBook Pro 14 còn có tỉ lệ khung hình 3:2, cho không gian hiển thị lớn hơn, mang đến nhiều nội dung hơn, đặc biệt là ở các hoạt động văn phòng. Màn hình 14 inch IPS 2K của CHUWI GemiBook Pro 14 thực sự đưa trải nghiệm laptop của bạn lên một tầm cao mới.\r\nCHUWI GemiBook Pro 14 trang bị bộ vi xử lý Intel Celeron N5100 Jasper Lake với 4 lõi 4 luồng, tốc độ 1.1 – 2.8 GHz, có thể chạy tốt mọi ứng dụng văn phòng', 2),
(21, 'TECNO POVA 2 4GB-64GB', 3490000, 'https://stcv4.hnammobile.com/uploads/products/details/2664450458-tecno-pova-2-64gb-ram-4gb.jpg', 'Tecno Pova 2 toát lên vẻ đẹp độc đáo, lịch lãm và đẳng cấp từ mọi góc cạnh hay từng chi tiết nhỏ trên máy. Điện thoại có kiểu dáng hiện đại, các góc bo cong tinh tế, vừa mang tính thẩm mỹ cao lại vừa dễ dàng cầm nắm thao tác sử dụng. Bạn có thể thấy rất nhiều chi tiết ấn tượng trên Tecno Pova 2 như cụm camera bóng bẩy, sắp xếp ống kính hợp lý; logo Pova cá tính; dải màu lấp lánh cuốn hút và đặc biệt là lớp hoàn thiện vân nhám sang trọng. Tecno Pova 2 là một chiếc điện thoại ngập tràn cảm hứng.\r\nBộ vi xử lý Helio G85 chuyên game cùng tính năng tăng tốc hệ thống v2.0 cũng mang lại trải nghiệm mượt mà và ổn định hơn. Tecno Pova 2 còn có một loạt tính năng tạo môi trường riêng cho game thủ, tối ưu hiệu năng, loại bỏ thông báo, công cụ trò chơi ET và nền tảng mạng LAN để trải nghiệm game trở nên vô cùng tuyệt vời.\r\n', 1),
(22, 'Vertu Signature S Dragon Bespoke', 225000000, 'https://vertu.com.vn/images/products/2021/12/25/small/Vertu-Signature-S-Dragon-Bespoke-1640428515.jpg', 'Rồng - biểu tượng của sự thịnh vượng trong văn hóa Á Đông, linh vật mang đến may mắn, là huy hiệu của đỉnh cao danh vọng. \r\nNăm 2012 Vertu đã cho ra mẫu Signature S Dragon với một số lượng giới hạn, ngay lập tức được giới sưu tập và đam mê săn lùng dẫn đến cháy hàng. \r\nNay 2021 chúng tôi kết hợp với những nghệ nhân lành nghề trình độ chế tác đồ xa xỉ siêu phức tạp đạt tiệm cận hoàn hảo đã đưa trở lại phiên bản Vertu Rồng Vàng được khao khát nhất. \r\nVới cải tiến bộ vỏ vàng hồng, lưng rồng mắt kim cương đến những chi tiết huy hiệu trên kính phím mọi thứ đều được trau chuốt tỉ mỉ để làm nên một tác phẩm cuốn hút ngay từ ánh nhìn đầu tiên. Một món quà biếu vô cùng ý nghĩa trong những dịp lễ tết sắp tới, cũng như một sản phẩm tôn vinh chủ nhân xứng tầm. Và chúng tôi hiểu luôn phải đưa sản phẩm tốt nhất với giá thành tối ưu nhất tới tay khách hàng nên thành phẩm chỉ bằng 1/4 giá phiên bản trước kia. Vô cùng hợp lý???? Quý khách quan tâm xin gọi hotline để được tư vấn chi tiết hơn. Xin cảm ơn!\r\n\r\n', 1),
(23, 'Asus ROG Phone 5S 5G 8GB-128GB', 16990000, 'https://ae01.alicdn.com/kf/Hb4d410268ed34e66a0db6198eb6ee547H/Phi-n-B-n-To-n-C-u-ASUS-ROG-5-5G-Ch-i-Game-Smartphone.jpg', 'Với chip xử lý Qualcomm Snapdragon 888+ 5G cực mạnh, màn hình AMOLED tần số quét 144Hz/1ms và viên pin dung lượng pin 6.000 mAh, chiếc điện thoại Asus ROG Phone 5S sẽ đem đến trải nghiệm gaming mà không một mẫu smartphone nào trên thị trường có thể đạt được. Ngoài ra, loạt tính năng như AirTrigger 5 kết hợp cùng âm thanh GameFX cao cấp cũng hứa hẹn những trải nghiệm hàng đầu thế giới hiện tại.\r\n', 1),
(24, 'Asus Zenbook UX425EA KI429T i5 1135G7/8GB/512GB SSD/Win 10', 21599000, 'https://laptopxachtay.com.vn/kcfinder/upload/images/Laptop/Asus/ux/UX425JA/zb13.jpg', 'Asus ZenBook UX425EA KI429T thuộc dòng Asus ZenBook cao cấp của Asus, là chiếc laptop mang đến cho bạn trải nghiệm hoàn toàn khác biệt, từ thiết kế đỉnh cao cho đến hiệu năng xuất sắc và những giá trị hàng đầu của một siêu phẩm công nghệ.\r\n Asus ZenBook thậm chí còn đạt chuẩn quân đội Mỹ MIL-STD-810G. Máy đã trải qua rất nhiều thử nghiệm trong môi trường khắc nghiệt, bao gồm cả độ cao; thả rơi; rung lắc; nhiệt độ cao thấp, … để có được độ bền cứng cáp, hoạt động ổn định trong thời gian dài\r\nAsus ZenBook UX425EA trang bị bộ vi xử lý Intel Core i5 1135G7 sản xuất trên tiến trình 10nm với 4 lõi 8 luồng, tốc độ tối đa 4.20GHz cực mạnh. Ngoài ra GPU đồ họa cũng được nâng cấp lên Intel Iris Xe Graphics, cho hiệu năng đồ họa vượt trội. Bên cạnh đó ZenBook 14 còn có sẵn 8GB RAM LPDDR4X 4266 MHz và ổ cứng SSD 512GB PCIe 3.0 siêu tốc', 2),
(25, 'iPhone 13 Pro Max 128GB', 30990000, 'https://cdn.tgdd.vn/Products/Images/42/230529/iphone-13-pro-max-sierra-blue-600x600.jpg', 'Điện thoại iPhone 13 Pro Max 128 GB - siêu phẩm được mong chờ nhất ở nửa cuối năm 2021 đến từ Apple. Máy có thiết kế không mấy đột phá khi so với người tiền nhiệm, bên trong đây vẫn là một sản phẩm có màn hình siêu đẹp, tần số quét được nâng cấp lên 120 Hz mượt mà, cảm biến camera có kích thước lớn hơn, cùng hiệu năng mạnh mẽ với sức mạnh đến từ Apple A15 Bionic, sẵn sàng cùng bạn chinh phục mọi thử thách.', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(44, 'a123', 'a1@gmail.com', '12345'),
(50, 'hi nam', 'nam@gmail.com', '1234'),
(53, '12a', '1111@gmail.com', 'abc11'),
(56, 'vantai', 'vantai@gmail.com', 'vantai123');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product` (`idsanpham`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
