-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 01, 2022 at 04:30 PM
-- Server version: 10.3.30-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fatties_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `name` varchar(99) NOT NULL,
  `background_image` varchar(999) NOT NULL,
  `total_pic` int(11) NOT NULL,
  `link` varchar(999) NOT NULL,
  `type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `name`, `background_image`, `total_pic`, `link`, `type`) VALUES
(72, 'Ảnh tập thể lớp', '\"background-image: url(\'media/thumbnail/c4k60_cbh_1878831282831955294.jpg\')\"', 46, 'anhtapthe.php', 'ảnh'),
(73, 'Ảnh kỷ yếu', '\"background-image: url(\'media/thumbnail/PHQ_2410-min.jpg\')\"', 25, 'anhkyyeu.php', 'ảnh'),
(74, 'Ảnh dìm', '\"background-image: url(\'media/thumbnail/c4k60_cbh_2176776038695420108.jpg\')\"', 20, 'anhdim.php', 'ảnh'),
(75, 'Video', '\"background-image: url(\'media/thumbnail/c4k60_cbh_1900897167654465674.jpg\')\"', 13, 'video.php', 'video'),
(77, 'Ảnh thẻ', '\"background-image: url(\'media/thumbnail/1C6B8618-5702-4EB2-8485-D841153E850E.jpeg\')\"', 34, 'Anhthe.php', 'ảnh');

-- --------------------------------------------------------

--
-- Table structure for table `btvn`
--

CREATE TABLE `btvn` (
  `id` int(11) NOT NULL,
  `title` varchar(999) NOT NULL,
  `content` varchar(999) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `btvn`
--

INSERT INTO `btvn` (`id`, `title`, `content`, `date`) VALUES
(1, 'Bài tập về nhà cuối cùng', '<p style=\"margin-bottom: 1rem;\">Bắt đầu từ ngày: 19/06/2021</p><p style=\"margin-bottom: 1rem;\">Hạn nộp: Không có</p><p style=\"margin-bottom: 1rem;\">Đề bài: Hãy sống thật hạnh phúc nhé!</p>', '2021-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `c4_user`
--

CREATE TABLE `c4_user` (
  `id` int(6) NOT NULL,
  `name` varchar(99) NOT NULL,
  `firstname` varchar(99) NOT NULL,
  `lastname` varchar(99) NOT NULL,
  `username` varchar(99) NOT NULL,
  `password` varchar(99) NOT NULL,
  `dayofbirth` varchar(2) NOT NULL,
  `monthofbirth` varchar(2) NOT NULL,
  `yearofbirth` varchar(4) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'student',
  `avatar` varchar(999) NOT NULL DEFAULT 'default_avatar',
  `gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `c4_user`
--

INSERT INTO `c4_user` (`id`, `name`, `firstname`, `lastname`, `username`, `password`, `dayofbirth`, `monthofbirth`, `yearofbirth`, `role`, `avatar`, `gender`) VALUES
(1, 'Dương Huyền Anh', 'Dương', 'Huyền Anh', 'huyenanh', '1', '27', '08', '2003', 'student', 'https://c4k60.com/hoso/huyenanh.jpg', 'female'),
(2, 'Dương Tùng Anh', 'Dương', 'Tùng Anh', 'tunganh', '1', '21', '11', '2003', 'student', 'https://c4k60.com/hoso/tunganh.jpg', 'male'),
(3, 'Ngô Phương Anh', 'Ngô', 'Phương Anh', 'phuonganh', '1', '30', '06', '2003', 'student', 'https://c4k60.com/hoso/phuonganh.jpg', 'female'),
(4, 'Nguyễn Đạt Thái Dương', 'Nguyễn Đạt', 'Thái Dương', 'thaiduong', '1', '12', '12', '2003', 'student', 'https://c4k60.com/hoso/thaiduong.jpg', 'male'),
(5, 'Nguyễn Anh Bảo Hân', 'Nguyễn Anh', 'Bảo Hân', 'baohan', '1', '11', '12', '2003', 'student', 'https://c4k60.com/hoso/baohan.jpg', 'female'),
(6, 'Nguyễn Đặng Hải', 'Nguyễn', 'Đặng Hải', 'danghai', '1', '10', '12', '2003', 'student', 'https://c4k60.com/hoso/danghai.jpg', 'male'),
(7, 'Bùi Thu Hiền', 'Bùi', 'Thu Hiền', 'buithuhien', '1', '11', '10', '2003', 'student', 'https://c4k60.com/hoso/thuhien.jpg', 'female'),
(8, 'Nguyễn Thúy Hiền', 'Nguyễn', 'Thúy Hiền', 'thuyhien', '1', '17', '05', '2003', 'student', 'https://c4k60.com/hoso/thuyhien.jpg', 'female'),
(9, 'Phạm Thu Hiền', 'Phạm', 'Thu Hiền', 'phamthuhien', '1', '29', '12', '2003', 'student', 'https://c4k60.com/hoso/phamhien.jpg', 'female'),
(10, 'Hồ Trung Hiếu', 'Hồ', 'Trung Hiếu', 'trunghieu', '1', '21', '01', '2003', 'student', 'https://c4k60.com/hoso/hohieu.jpg', 'male'),
(11, 'Trần Thị Diệu Huyền', 'Trần Thị', 'Diệu Huyền', 'dieuhuyen', '1', '02', '01', '2003', 'student', 'https://c4k60.com/hoso/dieuhuyen.jpg', 'female'),
(12, 'Phạm Bảo Sơn Hoa', 'Phạm Bảo', 'Sơn Hoa', 'sonhoa', '1', '25', '12', '2003', 'student', 'https://c4k60.com/hoso/sonhoa.jpg', 'female'),
(13, 'Dư Thanh Hoài', 'Dư', 'Thanh Hoài', 'thanhhoai', '1', '13', '04', '2003', 'student', 'https://c4k60.com/hoso/thanhhoai.png', 'female'),
(14, 'Phạm Thị Thiên Hương', 'Phạm Thị', 'Thiên Hương', 'thienhuong', '1', '13', '11', '2003', 'student', 'https://c4k60.com/hoso/thienhuong.jpg', 'female'),
(15, 'Lã Kim Huệ', 'Lã', 'Kim Huệ', 'kimhue', '1', '23', '12', '2003', 'student', 'https://c4k60.com/hoso/huela.jpg', 'female'),
(16, 'Nguyễn Quang Huy', 'Nguyễn', 'Quang Huy', 'quanghuy', '1', '16', '12', '2003', 'student', 'https://c4k60.com/hoso/huynguyen.jpg', 'male'),
(17, 'Nguyễn Minh Khôi', 'Nguyễn', 'Minh Khôi', 'minhkhoi', '1', '01', '05', '2003', 'student', 'https://c4k60.com/hoso/nguyenkhoi.jpg', 'male'),
(18, 'Lê Hoàng Tùng Lâm', 'Lê Hoàng', 'Tùng Lâm', 'tunglam', '1', '02', '09', '2003', 'student', 'https://c4k60.com/hoso/lelam.jpg', 'male'),
(19, 'Bùi Ngọc Lĩnh', 'Bùi', 'Ngọc Lĩnh', 'ngoclinh', '1', '19', '01', '2003', 'student', 'https://c4k60.com/hoso/ngoclinh.jpg', 'female'),
(20, 'Lê Kim Liên', 'Lê', 'Kim Liên', 'kimlien', '1', '18', '05', '2003', 'student', 'https://c4k60.com/hoso/kimlien.png', 'female'),
(21, 'Đinh Thùy Linh', 'Đinh', 'Thùy Linh', 'thuylinh', '1', '25', '02', '2003', 'student', 'https://c4k60.com/hoso/dinhlinh.png', 'female'),
(22, 'Nguyễn Khánh Linh', 'Nguyễn', 'Khánh Linh', 'khanhlinh', '1', '13', '12', '2003', 'student', 'https://c4k60.com/hoso/khanhlinh.jpg', 'female'),
(23, 'Nguyễn Đức Mạnh', 'Nguyễn', 'Đức Mạnh', 'ducmanh', '1', '09', '08', '2003', 'student', 'https://c4k60.com/hoso/nguyenmanh.jpg', 'male'),
(24, 'Đỗ Thảo Nguyên', 'Đỗ', 'Thảo Nguyên', 'thaonguyen', '1', '13', '04', '2003', 'student', 'https://c4k60.com/hoso/annguyen.jpg', 'female'),
(25, 'Đào Thu Phương', 'Đào', 'Thu Phương', 'thuphuong', '1', '06', '08', '2003', 'student', 'https://c4k60.com/hoso/daophuong.jpg', 'female'),
(26, 'Vũ Minh Quang', 'Vũ', 'Minh Quang', 'minhquang', '1', '28', '04', '2003', 'student', 'https://c4k60.com/hoso/minhquang.jpg', 'male'),
(27, 'Đỗ Hồng Quân', 'Đỗ', 'Hồng Quân', 'hongquan', '1', '08', '11', '2003', 'student', 'https://c4k60.com/hoso/hongquan.jpg', 'male'),
(28, 'Đan Thị Phương Thảo', 'Đan Thị', 'Phương Thảo', 'danphuongthao', '1', '07', '10', '2003', 'student', 'https://c4k60.com/hoso/danthao.jpg', 'female'),
(29, 'Dương Phương Thảo', 'Dương', 'Phương Thảo', 'duongphuongthao', '1', '14', '12', '2003', 'student', 'https://c4k60.com/hoso/duongthao.png', 'female'),
(30, 'Nguyễn Minh Thư', 'Nguyễn', 'Minh Thư', 'minhthu', '1', '19', '08', '2003', 'student', 'https://c4k60.com/hoso/minhthu.jpg', 'female'),
(31, 'Vũ Huyền Trang', 'Vũ', 'Huyền Trang', 'huyentrang', '1', '21', '12', '2003', 'student', 'https://c4k60.com/hoso/huyentrang.jpg', 'female'),
(32, 'Nguyễn Thị Ánh Tuyết', 'Nguyễn Thị', 'Ánh Tuyết', 'anhtuyet', '1', '18', '04', '2003', 'student', 'https://c4k60.com/hoso/tuyet.jpg', 'female'),
(33, 'Trần Khánh Vân', 'Trần', 'Khánh Vân', 'khanhvan', '1', '25', '11', '2003', 'student', 'https://c4k60.com/hoso/khanhvan.jpg', 'female'),
(34, 'Hà Gia Văn', 'Hà', 'Gia Văn', 'giavan', '1', '16', '11', '2003', 'student', 'https://c4k60.com/hoso/giavan.jpg', 'male'),
(35, 'Đặng Thanh Huyền', 'Đặng', 'Thanh Huyền', 'danghuyen', '1', '12', '03', '1981', 'teacher', 'https://c4k60.com/hoso/danghuyen.jpeg', 'female'),
(36, 'Hoàng Phát', 'Hoàng', 'Phát', 'hoangphat', '1', '19', '05', '2003', 'guest', 'https://c4k60.com/assets/images/hoangphat.jpeg', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `thongbaolop`
--

CREATE TABLE `thongbaolop` (
  `id` int(11) NOT NULL,
  `title` varchar(99) COLLATE utf8mb4_bin DEFAULT NULL,
  `content` text COLLATE utf8mb4_bin DEFAULT NULL,
  `createdBy` varchar(99) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Admin C4K60',
  `image` varchar(999) COLLATE utf8mb4_bin NOT NULL DEFAULT 'no',
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `thongbaolop`
--

INSERT INTO `thongbaolop` (`id`, `title`, `content`, `createdBy`, `image`, `date`) VALUES
(2, 'Đòi tiền trà chanh 23k', 'mọi người ơii hôm đi chơi t có trích 1 số tiền trong lĩnh vực uống trà chanh và đi xe lúc mng đưa t tiền đông quá t ko kiểm soát hết hqua t kiểm lại tiền thì bị âm không biết ngoài TA thì còn ai quên chưa đưa t tiền ko thì bảo lại t nhé :((', 'Ngô Phương Anh', 'no', '2020-09-18 20:05:31'),
(9, 'Concept kỷ yếu', 'Lúc đầu định thuê bên Aloha, nhưng htrc t phân tích thì 480k/ người nhưng mất thêm chi phí phát sinh khá nhiều ( tiền xe, thuê trang phục ) và mng feedback k tốt về bên đó nên rcm mng sang Yolo hôm khai giảng đã về trường mình chụp ấy, 495k/ người đã bao gồm mọi phí, hình bên dưới cũng là bên Yolo luôn nhá', 'Ngô Phương Anh', 'https://c4k60.com/assets/images/1.jpeg,https://c4k60.com/assets/images/2.jpeg,https://c4k60.com/assets/images/3.jpeg,https://c4k60.com/assets/images/4.jpeg,https://c4k60.com/assets/images/5.jpeg,https://c4k60.com/assets/images/6.jpeg', '2021-01-23 13:54:30'),
(10, 'Nộp tiền chụp kỷ yếu', 'Tiền chụp kỉ yếu là 495k/ người lớp sẽ dc trừ 2tr tổng bill nhưng t nghĩ tiền đó cứ để hội phụ huynh cầm vì mình cũng phải bỏ tiền để thuê xe lên Hà Nội chụp và tiền đặt bánh ở Vincom nữa.\r\nMọi người xin phép phụ huynh chụp kỉ yếu và nộp tiền từ tuần sau nhé, có thể chuyển khoản luôn cho cô Thảo thủ quỹ nhá ( bạn nữ nào ko mặc áo dài của bên chụp thì trừ đi 30k )', 'Ngô Phương Anh', 'no', '2021-01-23 13:57:39'),
(11, 'Lịch trình buổi chụp ', '7-10h chụp ở trường\r\n10h-12h mng tự túc ăn trưa và nghỉ ngơi\r\n12h15 lên xe di chuyển đến vườn nhãn Long Biên\r\n14h-16h15 chụp tại vườn nhãn\r\n16h30 lên xe về Phủ Lý\r\n19h chụp party night tại Vinpearl\r\nMng đọc để nắm lịch và xin phép bố mẹ nhé', 'Ngô Phương Anh', 'no', '2021-01-23 13:58:59'),
(12, 'Thu quần áo thuê chụp', 'Ra chơi tiết 1 ngày mai t sẽ thu từng người từng bộ qao cmay thuê để chiều mai ship trả cho studio, ai thiếu đồ gì sẽ phải đền bù cho bên đó nhé', 'Ngô Phương Anh', 'no', '2021-01-23 14:02:51'),
(14, 'Tùng Anh đẹp trai vcl', 'Nhỉ?? :)))) ai cũng phải công nhận', 'Admin C4K60', 'https://c4k60.com/anhvavideo/media/original/%E1%BA%A2nh%20k%E1%BB%B7%20y%E1%BA%BFu/217707980348167410533151108516773PHQ_2379-min.jpg', '2021-12-11 14:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `thuvienanh`
--

CREATE TABLE `thuvienanh` (
  `id` int(11) NOT NULL,
  `image_name` varchar(999) NOT NULL,
  `path` varchar(999) NOT NULL,
  `thumb_path` varchar(999) NOT NULL,
  `album` varchar(99) NOT NULL,
  `imgtype` varchar(11) NOT NULL,
  `imgsize` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thuvienanh`
--

INSERT INTO `thuvienanh` (`id`, `image_name`, `path`, `thumb_path`, `album`, `imgtype`, `imgsize`) VALUES
(406, '08045274850165212882c4k60_cbh_1878831282831955294.jpg', 'media/original/Ảnh tập thể lớp/08045274850165212882c4k60_cbh_1878831282831955294.jpg', 'media/thumbnail/Ảnh tập thể lớp/08045274850165212882c4k60_cbh_1878831282831955294.jpg', '72', 'image/jpeg', 100730),
(407, '17466677181028217652c4k60_cbh_2181381466611841130.jpg', 'media/original/Ảnh tập thể lớp/17466677181028217652c4k60_cbh_2181381466611841130.jpg', 'media/thumbnail/Ảnh tập thể lớp/17466677181028217652c4k60_cbh_2181381466611841130.jpg', '72', 'image/jpeg', 111828),
(408, '214779885381752182549c4k60_cbh_2148603221588217418.jpg', 'media/original/Ảnh tập thể lớp/214779885381752182549c4k60_cbh_2148603221588217418.jpg', 'media/thumbnail/Ảnh tập thể lớp/214779885381752182549c4k60_cbh_2148603221588217418.jpg', '72', 'image/jpeg', 46864),
(409, '39522715172623365538c4k60_cbh_2326226019633377748.jpg', 'media/original/Ảnh tập thể lớp/39522715172623365538c4k60_cbh_2326226019633377748.jpg', 'media/thumbnail/Ảnh tập thể lớp/39522715172623365538c4k60_cbh_2326226019633377748.jpg', '72', 'image/jpeg', 47720),
(410, '41548401783966826123c4k60_cbh_2145074973096960579.jpg', 'media/original/Ảnh tập thể lớp/41548401783966826123c4k60_cbh_2145074973096960579.jpg', 'media/thumbnail/Ảnh tập thể lớp/41548401783966826123c4k60_cbh_2145074973096960579.jpg', '72', 'image/jpeg', 96782),
(411, '55346512895915172415c4k60_cbh_1880581914060286811.jpg', 'media/original/Ảnh tập thể lớp/55346512895915172415c4k60_cbh_1880581914060286811.jpg', 'media/thumbnail/Ảnh tập thể lớp/55346512895915172415c4k60_cbh_1880581914060286811.jpg', '72', 'image/jpeg', 97706),
(412, '67205590166150484768c4k60_cbh_1939255370316937315.jpg', 'media/original/Ảnh tập thể lớp/67205590166150484768c4k60_cbh_1939255370316937315.jpg', 'media/thumbnail/Ảnh tập thể lớp/67205590166150484768c4k60_cbh_1939255370316937315.jpg', '72', 'image/jpeg', 118657),
(413, '72467169147801601268c4k60_cbh_2181382401463443381.jpg', 'media/original/Ảnh tập thể lớp/72467169147801601268c4k60_cbh_2181382401463443381.jpg', 'media/thumbnail/Ảnh tập thể lớp/72467169147801601268c4k60_cbh_2181382401463443381.jpg', '72', 'image/jpeg', 74196),
(414, '87128051278959346834c4k60_cbh_1872636077250377366.jpg', 'media/original/Ảnh tập thể lớp/87128051278959346834c4k60_cbh_1872636077250377366.jpg', 'media/thumbnail/Ảnh tập thể lớp/87128051278959346834c4k60_cbh_1872636077250377366.jpg', '72', 'image/jpeg', 129826),
(415, '93597752249422941167c4k60_cbh_1894376636545485898.jpg', 'media/original/Ảnh tập thể lớp/93597752249422941167c4k60_cbh_1894376636545485898.jpg', 'media/thumbnail/Ảnh tập thể lớp/93597752249422941167c4k60_cbh_1894376636545485898.jpg', '72', 'image/jpeg', 79257),
(416, '10130802563912579386137c4k60_cbh_2181380258333716441.jpg', 'media/original/Ảnh tập thể lớp/10130802563912579386137c4k60_cbh_2181380258333716441.jpg', 'media/thumbnail/Ảnh tập thể lớp/10130802563912579386137c4k60_cbh_2181380258333716441.jpg', '72', 'image/jpeg', 57176),
(417, '1161503592514601143852c4k60_cbh_2181384274648017289.jpg', 'media/original/Ảnh tập thể lớp/1161503592514601143852c4k60_cbh_2181384274648017289.jpg', 'media/thumbnail/Ảnh tập thể lớp/1161503592514601143852c4k60_cbh_2181384274648017289.jpg', '72', 'image/jpeg', 84358),
(418, '1292373171816661007217c4k60_cbh_2442086618895822048.jpg', 'media/original/Ảnh tập thể lớp/1292373171816661007217c4k60_cbh_2442086618895822048.jpg', 'media/thumbnail/Ảnh tập thể lớp/1292373171816661007217c4k60_cbh_2442086618895822048.jpg', '72', 'image/jpeg', 66809),
(419, '1318319361621991319407c4k60_cbh_2442093423441066494.jpg', 'media/original/Ảnh tập thể lớp/1318319361621991319407c4k60_cbh_2442093423441066494.jpg', 'media/thumbnail/Ảnh tập thể lớp/1318319361621991319407c4k60_cbh_2442093423441066494.jpg', '72', 'image/jpeg', 107514),
(420, '1470110191623154052829c4k60_cbh_2497886474234986882.jpg', 'media/original/Ảnh tập thể lớp/1470110191623154052829c4k60_cbh_2497886474234986882.jpg', 'media/thumbnail/Ảnh tập thể lớp/1470110191623154052829c4k60_cbh_2497886474234986882.jpg', '72', 'image/jpeg', 88772),
(421, '15131443378741165392143c4k60_cbh_2181384239743091896.jpg', 'media/original/Ảnh tập thể lớp/15131443378741165392143c4k60_cbh_2181384239743091896.jpg', 'media/thumbnail/Ảnh tập thể lớp/15131443378741165392143c4k60_cbh_2181384239743091896.jpg', '72', 'image/jpeg', 57062),
(422, '161776983102111302159963c4k60_cbh_2181383037747859319.jpg', 'media/original/Ảnh tập thể lớp/161776983102111302159963c4k60_cbh_2181383037747859319.jpg', 'media/thumbnail/Ảnh tập thể lớp/161776983102111302159963c4k60_cbh_2181383037747859319.jpg', '72', 'image/jpeg', 92756),
(423, '172011551503132012070736c4k60_cbh_2181384272853054372.jpg', 'media/original/Ảnh tập thể lớp/172011551503132012070736c4k60_cbh_2181384272853054372.jpg', 'media/thumbnail/Ảnh tập thể lớp/172011551503132012070736c4k60_cbh_2181384272853054372.jpg', '72', 'image/jpeg', 74396),
(424, '181946965765151091447872c4k60_cbh_2363633292043215421.jpg', 'media/original/Ảnh tập thể lớp/181946965765151091447872c4k60_cbh_2363633292043215421.jpg', 'media/thumbnail/Ảnh tập thể lớp/181946965765151091447872c4k60_cbh_2363633292043215421.jpg', '72', 'image/jpeg', 47256),
(425, '191228409712171178545920c4k60_cbh_2442089212393305117.jpg', 'media/original/Ảnh tập thể lớp/191228409712171178545920c4k60_cbh_2442089212393305117.jpg', 'media/thumbnail/Ảnh tập thể lớp/191228409712171178545920c4k60_cbh_2442089212393305117.jpg', '72', 'image/jpeg', 116166),
(426, '20447192213181058050372c4k60_cbh_2442087378417169188.jpg', 'media/original/Ảnh tập thể lớp/20447192213181058050372c4k60_cbh_2442087378417169188.jpg', 'media/thumbnail/Ảnh tập thể lớp/20447192213181058050372c4k60_cbh_2442087378417169188.jpg', '72', 'image/jpeg', 83349),
(427, '21375547767191913422206c4k60_cbh_2476964181992409403.jpg', 'media/original/Ảnh tập thể lớp/21375547767191913422206c4k60_cbh_2476964181992409403.jpg', 'media/thumbnail/Ảnh tập thể lớp/21375547767191913422206c4k60_cbh_2476964181992409403.jpg', '72', 'image/jpeg', 94618),
(428, '22949413946201620257745c4k60_cbh_2442088625140400341.jpg', 'media/original/Ảnh tập thể lớp/22949413946201620257745c4k60_cbh_2442088625140400341.jpg', 'media/thumbnail/Ảnh tập thể lớp/22949413946201620257745c4k60_cbh_2442088625140400341.jpg', '72', 'image/jpeg', 78424),
(429, '23416650439221380860068c4k60_cbh_2348623292766060213.jpg', 'media/original/Ảnh tập thể lớp/23416650439221380860068c4k60_cbh_2348623292766060213.jpg', 'media/thumbnail/Ảnh tập thể lớp/23416650439221380860068c4k60_cbh_2348623292766060213.jpg', '72', 'image/jpeg', 78353),
(430, '241005296163241762730623c4k60_cbh_2348623060728630798.jpg', 'media/original/Ảnh tập thể lớp/241005296163241762730623c4k60_cbh_2348623060728630798.jpg', 'media/thumbnail/Ảnh tập thể lớp/241005296163241762730623c4k60_cbh_2348623060728630798.jpg', '72', 'image/jpeg', 75581),
(431, '2539104067251275931229c4k60_cbh_2363632110088344859.jpg', 'media/original/Ảnh tập thể lớp/2539104067251275931229c4k60_cbh_2363632110088344859.jpg', 'media/thumbnail/Ảnh tập thể lớp/2539104067251275931229c4k60_cbh_2363632110088344859.jpg', '72', 'image/jpeg', 35415),
(432, '261086558139262099548277c4k60_cbh_2497893935289426635.jpg', 'media/original/Ảnh tập thể lớp/261086558139262099548277c4k60_cbh_2497893935289426635.jpg', 'media/thumbnail/Ảnh tập thể lớp/261086558139262099548277c4k60_cbh_2497893935289426635.jpg', '72', 'image/jpeg', 66244),
(433, '2710072928800173762694317793932652anh2.jpg', 'media/original/Ảnh tập thể lớp/2710072928800173762694317793932652anh2.jpg', 'media/thumbnail/Ảnh tập thể lớp/2710072928800173762694317793932652anh2.jpg', '72', 'image/jpeg', 229505),
(434, '2816152619451062018372613519370551815604520119022163_957580378051329_8287703337346650348_o.jpg', 'media/original/Ảnh tập thể lớp/2816152619451062018372613519370551815604520119022163_957580378051329_8287703337346650348_o.jpg', 'media/thumbnail/Ảnh tập thể lớp/2816152619451062018372613519370551815604520119022163_957580378051329_8287703337346650348_o.jpg', '72', 'image/jpeg', 513717),
(435, '291821491707111625946214147779176272807663544118798729_360987831955208_403668198527137403_o.jpg', 'media/original/Ảnh tập thể lớp/291821491707111625946214147779176272807663544118798729_360987831955208_403668198527137403_o.jpg', 'media/thumbnail/Ảnh tập thể lớp/291821491707111625946214147779176272807663544118798729_360987831955208_403668198527137403_o.jpg', '72', 'image/jpeg', 229639),
(436, '3020808658051133418705618917432908IMG_5549.JPG', 'media/original/Ảnh tập thể lớp/3020808658051133418705618917432908IMG_5549.JPG', 'media/thumbnail/Ảnh tập thể lớp/3020808658051133418705618917432908IMG_5549.JPG', '72', 'image/jpeg', 152760),
(437, '3120279984821219846698531515923546493279330481107316869_319506822778195_2501697337343812667_n.jpg', 'media/original/Ảnh tập thể lớp/3120279984821219846698531515923546493279330481107316869_319506822778195_2501697337343812667_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/3120279984821219846698531515923546493279330481107316869_319506822778195_2501697337343812667_n.jpg', '72', 'image/jpeg', 72524),
(438, '32122500312413952757572168367892985135235576272531584_986740524991224_5450479039548489728_o.jpg', 'media/original/Ảnh tập thể lớp/32122500312413952757572168367892985135235576272531584_986740524991224_5450479039548489728_o.jpg', 'media/thumbnail/Ảnh tập thể lớp/32122500312413952757572168367892985135235576272531584_986740524991224_5450479039548489728_o.jpg', '72', 'image/jpeg', 284493),
(439, '331399095299147912700582155750584569606539_1269791653195351_5930817560479006720_n.jpg', 'media/original/Ảnh tập thể lớp/331399095299147912700582155750584569606539_1269791653195351_5930817560479006720_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/331399095299147912700582155750584569606539_1269791653195351_5930817560479006720_n.jpg', '72', 'image/jpeg', 240682),
(440, '3419662374391512224537503180534997169626735_388742038508147_1995829843131891712_n.jpg', 'media/original/Ảnh tập thể lớp/3419662374391512224537503180534997169626735_388742038508147_1995829843131891712_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/3419662374391512224537503180534997169626735_388742038508147_1995829843131891712_n.jpg', '72', 'image/jpeg', 176773),
(441, '3520448139981618141176235158471978469771621_2373343092742987_7579703205320196096_n.jpg', 'media/original/Ảnh tập thể lớp/3520448139981618141176235158471978469771621_2373343092742987_7579703205320196096_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/3520448139981618141176235158471978469771621_2373343092742987_7579703205320196096_n.jpg', '72', 'image/jpeg', 108883),
(442, '36457755348179057835358163293085170372437_717240788737736_4411381207737040896_n.jpg', 'media/original/Ảnh tập thể lớp/36457755348179057835358163293085170372437_717240788737736_4411381207737040896_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/36457755348179057835358163293085170372437_717240788737736_4411381207737040896_n.jpg', '72', 'image/jpeg', 92795),
(443, '3718445545601810049793349811626653010529103202W6A1131.jpg', 'media/original/Ảnh tập thể lớp/3718445545601810049793349811626653010529103202W6A1131.jpg', 'media/thumbnail/Ảnh tập thể lớp/3718445545601810049793349811626653010529103202W6A1131.jpg', '72', 'image/jpeg', 1053737),
(444, '3836168460421353448937021328219670750C6D2-A325-4901-9F46-D035557A4256.jpeg', 'media/original/Ảnh tập thể lớp/3836168460421353448937021328219670750C6D2-A325-4901-9F46-D035557A4256.jpeg', 'media/thumbnail/Ảnh tập thể lớp/3836168460421353448937021328219670750C6D2-A325-4901-9F46-D035557A4256.jpeg', '72', 'image/jpeg', 142309),
(445, '3913979059763510285493149957259469454493_370987120488441_6976030150114672640_n (1).jpg', 'media/original/Ảnh tập thể lớp/3913979059763510285493149957259469454493_370987120488441_6976030150114672640_n (1).jpg', 'media/thumbnail/Ảnh tập thể lớp/3913979059763510285493149957259469454493_370987120488441_6976030150114672640_n (1).jpg', '72', 'image/jpeg', 79703),
(446, '4098803855241884030396419558446669631570_1725272090949918_4367971195887288320_n.jpg', 'media/original/Ảnh tập thể lớp/4098803855241884030396419558446669631570_1725272090949918_4367971195887288320_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/4098803855241884030396419558446669631570_1725272090949918_4367971195887288320_n.jpg', '72', 'image/jpeg', 62916),
(447, '41110467254851894820709671089103969912138_2152269831541938_3934861595632467968_n.jpg', 'media/original/Ảnh tập thể lớp/41110467254851894820709671089103969912138_2152269831541938_3934861595632467968_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/41110467254851894820709671089103969912138_2152269831541938_3934861595632467968_n.jpg', '72', 'image/jpeg', 60168),
(448, '429909532461598763267770737352570153199_3480054395345479_635592792587894784_n.jpg', 'media/original/Ảnh tập thể lớp/429909532461598763267770737352570153199_3480054395345479_635592792587894784_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/429909532461598763267770737352570153199_3480054395345479_635592792587894784_n.jpg', '72', 'image/jpeg', 144662),
(449, '432085524849717018929141026307396901872666222122611087_991809334628433_6963852964256294189_o.jpg', 'media/original/Ảnh tập thể lớp/432085524849717018929141026307396901872666222122611087_991809334628433_6963852964256294189_o.jpg', 'media/thumbnail/Ảnh tập thể lớp/432085524849717018929141026307396901872666222122611087_991809334628433_6963852964256294189_o.jpg', '72', 'image/jpeg', 193742),
(450, '44165797066482122996830111502878355495983818475398383_515895812592428_205755807088771072_n.jpg', 'media/original/Ảnh tập thể lớp/44165797066482122996830111502878355495983818475398383_515895812592428_205755807088771072_n.jpg', 'media/thumbnail/Ảnh tập thể lớp/44165797066482122996830111502878355495983818475398383_515895812592428_205755807088771072_n.jpg', '72', 'image/jpeg', 121366),
(451, '45925292782972382473012522261791688464504772257952_733832943751823_5932493555502153728_o.jpg', 'media/original/Ảnh tập thể lớp/45925292782972382473012522261791688464504772257952_733832943751823_5932493555502153728_o.jpg', 'media/thumbnail/Ảnh tập thể lớp/45925292782972382473012522261791688464504772257952_733832943751823_5932493555502153728_o.jpg', '72', 'image/jpeg', 154008),
(452, '05723760290201396446611161831642JUL_7874-min.jpg', 'media/original/Ảnh kỷ yếu/05723760290201396446611161831642JUL_7874-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/05723760290201396446611161831642JUL_7874-min.jpg', '73', 'image/jpeg', 699891),
(453, '11267413991057774756701018633092FFA74DB0-A279-4FB4-913A-0E5C4CAD4D7B.jpeg', 'media/original/Ảnh kỷ yếu/11267413991057774756701018633092FFA74DB0-A279-4FB4-913A-0E5C4CAD4D7B.jpeg', 'media/thumbnail/Ảnh kỷ yếu/11267413991057774756701018633092FFA74DB0-A279-4FB4-913A-0E5C4CAD4D7B.jpeg', '73', 'image/jpeg', 683626),
(454, '2967742661101950713703027742139111099F06-9B4E-4618-AF6F-F7A2E48E1349.jpeg', 'media/original/Ảnh kỷ yếu/2967742661101950713703027742139111099F06-9B4E-4618-AF6F-F7A2E48E1349.jpeg', 'media/thumbnail/Ảnh kỷ yếu/2967742661101950713703027742139111099F06-9B4E-4618-AF6F-F7A2E48E1349.jpeg', '73', 'image/jpeg', 56568),
(455, '3181784228111141595223701677346481683202994PHQ_2665.jpg', 'media/original/Ảnh kỷ yếu/3181784228111141595223701677346481683202994PHQ_2665.jpg', 'media/thumbnail/Ảnh kỷ yếu/3181784228111141595223701677346481683202994PHQ_2665.jpg', '73', 'image/jpeg', 585089),
(456, '47723917811114409512801317549876JUL_7857-min.jpg', 'media/original/Ảnh kỷ yếu/47723917811114409512801317549876JUL_7857-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/47723917811114409512801317549876JUL_7857-min.jpg', '73', 'image/jpeg', 1057366),
(457, '518550959091214574014151131681963001990863471PHQ_2956.jpg', 'media/original/Ảnh kỷ yếu/518550959091214574014151131681963001990863471PHQ_2956.jpg', 'media/thumbnail/Ảnh kỷ yếu/518550959091214574014151131681963001990863471PHQ_2956.jpg', '73', 'image/jpeg', 2615850),
(458, '6100000956213914102476216927440972730169426PHQ_2663.jpg', 'media/original/Ảnh kỷ yếu/6100000956213914102476216927440972730169426PHQ_2663.jpg', 'media/thumbnail/Ảnh kỷ yếu/6100000956213914102476216927440972730169426PHQ_2663.jpg', '73', 'image/jpeg', 720394),
(459, '71681860292145130862016504339248A4F096C-E143-4C9E-AB13-A7E66A0C4B54.jpeg', 'media/original/Ảnh kỷ yếu/71681860292145130862016504339248A4F096C-E143-4C9E-AB13-A7E66A0C4B54.jpeg', 'media/thumbnail/Ảnh kỷ yếu/71681860292145130862016504339248A4F096C-E143-4C9E-AB13-A7E66A0C4B54.jpeg', '73', 'image/jpeg', 52049),
(460, '8973670138149287239353289505053220728963PHQ_2664.jpg', 'media/original/Ảnh kỷ yếu/8973670138149287239353289505053220728963PHQ_2664.jpg', 'media/thumbnail/Ảnh kỷ yếu/8973670138149287239353289505053220728963PHQ_2664.jpg', '73', 'image/jpeg', 788184),
(461, '94954786952107706942621831366293PHQ_2300-min.jpg', 'media/original/Ảnh kỷ yếu/94954786952107706942621831366293PHQ_2300-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/94954786952107706942621831366293PHQ_2300-min.jpg', '73', 'image/jpeg', 1548319),
(462, '1014383396129803122241685143404PHQ_2371-min.jpg', 'media/original/Ảnh kỷ yếu/1014383396129803122241685143404PHQ_2371-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/1014383396129803122241685143404PHQ_2371-min.jpg', '73', 'image/jpeg', 803198),
(463, '1118360028833148588343622044509943PHQ_2374-min.jpg', 'media/original/Ảnh kỷ yếu/1118360028833148588343622044509943PHQ_2374-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/1118360028833148588343622044509943PHQ_2374-min.jpg', '73', 'image/jpeg', 837729),
(464, '122026922436363695321501965762260PHQ_2369-min.jpg', 'media/original/Ảnh kỷ yếu/122026922436363695321501965762260PHQ_2369-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/122026922436363695321501965762260PHQ_2369-min.jpg', '73', 'image/jpeg', 1162902),
(465, '131610174294124739851631103662894PHQ_2353-min.jpg', 'media/original/Ảnh kỷ yếu/131610174294124739851631103662894PHQ_2353-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/131610174294124739851631103662894PHQ_2353-min.jpg', '73', 'image/jpeg', 2263959),
(466, '1410161158674180409108702075960806IMG_0366.jpg', 'media/original/Ảnh kỷ yếu/1410161158674180409108702075960806IMG_0366.jpg', 'media/thumbnail/Ảnh kỷ yếu/1410161158674180409108702075960806IMG_0366.jpg', '73', 'image/jpeg', 1078081),
(467, '159487026565141060310532119638094PHQ_2375-min.jpg', 'media/original/Ảnh kỷ yếu/159487026565141060310532119638094PHQ_2375-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/159487026565141060310532119638094PHQ_2375-min.jpg', '73', 'image/jpeg', 795599),
(468, '1658916963654340199214572359156IMG_0542-min.jpg', 'media/original/Ảnh kỷ yếu/1658916963654340199214572359156IMG_0542-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/1658916963654340199214572359156IMG_0542-min.jpg', '73', 'image/jpeg', 1647536),
(469, '17697759057616870813055369159658IMG_0553-min.jpg', 'media/original/Ảnh kỷ yếu/17697759057616870813055369159658IMG_0553-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/17697759057616870813055369159658IMG_0553-min.jpg', '73', 'image/jpeg', 1408600),
(470, '18250062245697178465741086378584PHQ_2356-min.jpg', 'media/original/Ảnh kỷ yếu/18250062245697178465741086378584PHQ_2356-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/18250062245697178465741086378584PHQ_2356-min.jpg', '73', 'image/jpeg', 1968876),
(471, '19124570246772458162856856075890JUL_7841-min.jpg', 'media/original/Ảnh kỷ yếu/19124570246772458162856856075890JUL_7841-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/19124570246772458162856856075890JUL_7841-min.jpg', '73', 'image/jpeg', 1078196),
(472, '20753424878738527460141242660244PHQ_2378-min.jpg', 'media/original/Ảnh kỷ yếu/20753424878738527460141242660244PHQ_2378-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/20753424878738527460141242660244PHQ_2378-min.jpg', '73', 'image/jpeg', 768471),
(473, '217707980348167410533151108516773PHQ_2379-min.jpg', 'media/original/Ảnh kỷ yếu/217707980348167410533151108516773PHQ_2379-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/217707980348167410533151108516773PHQ_2379-min.jpg', '73', 'image/jpeg', 759537),
(474, '2229358371184018292587383224672PHQ_2432-min.jpg', 'media/original/Ảnh kỷ yếu/2229358371184018292587383224672PHQ_2432-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/2229358371184018292587383224672PHQ_2432-min.jpg', '73', 'image/jpeg', 1666420),
(475, '23153188861694156440948816276730PHQ_2442-min.jpg', 'media/original/Ảnh kỷ yếu/23153188861694156440948816276730PHQ_2442-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/23153188861694156440948816276730PHQ_2442-min.jpg', '73', 'image/jpeg', 1598633),
(476, '242131230789970151521662116373674PHQ_2410-min.jpg', 'media/original/Ảnh kỷ yếu/242131230789970151521662116373674PHQ_2410-min.jpg', 'media/thumbnail/Ảnh kỷ yếu/242131230789970151521662116373674PHQ_2410-min.jpg', '73', 'image/jpeg', 1613860),
(477, '016020526210145257422305380147727B2A3F4-C194-4EB7-8095-384324C62B8F.jpeg', 'media/original/Ảnh dìm/016020526210145257422305380147727B2A3F4-C194-4EB7-8095-384324C62B8F.jpeg', 'media/thumbnail/Ảnh dìm/016020526210145257422305380147727B2A3F4-C194-4EB7-8095-384324C62B8F.jpeg', '74', 'image/jpeg', 28255),
(478, '1709752792103664173231189649780770163660_2515541238667724_4198841851991556096_n.jpg', 'media/original/Ảnh dìm/1709752792103664173231189649780770163660_2515541238667724_4198841851991556096_n.jpg', 'media/thumbnail/Ảnh dìm/1709752792103664173231189649780770163660_2515541238667724_4198841851991556096_n.jpg', '74', 'image/jpeg', 269816),
(479, '2136574042811103578702912196154397870267827_566212047518090_1053511780711530496_n.jpg', 'media/original/Ảnh dìm/2136574042811103578702912196154397870267827_566212047518090_1053511780711530496_n.jpg', 'media/thumbnail/Ảnh dìm/2136574042811103578702912196154397870267827_566212047518090_1053511780711530496_n.jpg', '74', 'image/jpeg', 40949),
(480, '330623364112043686241013409271881B5DE151-C4AC-47ED-BB9C-44745977F0C0.jpeg', 'media/original/Ảnh dìm/330623364112043686241013409271881B5DE151-C4AC-47ED-BB9C-44745977F0C0.jpeg', 'media/thumbnail/Ảnh dìm/330623364112043686241013409271881B5DE151-C4AC-47ED-BB9C-44745977F0C0.jpeg', '74', 'image/jpeg', 42482),
(481, '45873611891260251815613103782814770412830_514715166014394_4705585917757227008_n.jpg', 'media/original/Ảnh dìm/45873611891260251815613103782814770412830_514715166014394_4705585917757227008_n.jpg', 'media/thumbnail/Ảnh dìm/45873611891260251815613103782814770412830_514715166014394_4705585917757227008_n.jpg', '74', 'image/jpeg', 44700),
(482, '54803942411316516432984120119066269736145_518167775615935_6457183321775407104_n.jpg', 'media/original/Ảnh dìm/54803942411316516432984120119066269736145_518167775615935_6457183321775407104_n.jpg', 'media/thumbnail/Ảnh dìm/54803942411316516432984120119066269736145_518167775615935_6457183321775407104_n.jpg', '74', 'image/jpeg', 164585),
(483, '64436102591419413212106205819256269843028_2366646580268109_7995838725454036992_n.jpg', 'media/original/Ảnh dìm/64436102591419413212106205819256269843028_2366646580268109_7995838725454036992_n.jpg', 'media/thumbnail/Ảnh dìm/64436102591419413212106205819256269843028_2366646580268109_7995838725454036992_n.jpg', '74', 'image/jpeg', 47767),
(484, '712188477011517920807737194021678769905824_2016487671786025_350637522272911360_n.jpg', 'media/original/Ảnh dìm/712188477011517920807737194021678769905824_2016487671786025_350637522272911360_n.jpg', 'media/thumbnail/Ảnh dìm/712188477011517920807737194021678769905824_2016487671786025_350637522272911360_n.jpg', '74', 'image/jpeg', 24170),
(485, '81536221801610605113548193504427969933516_675235599619553_9221333679735832576_n.jpg', 'media/original/Ảnh dìm/81536221801610605113548193504427969933516_675235599619553_9221333679735832576_n.jpg', 'media/thumbnail/Ảnh dìm/81536221801610605113548193504427969933516_675235599619553_9221333679735832576_n.jpg', '74', 'image/jpeg', 68179),
(486, '921261609931713763839529151720499969980918_460922401424505_8568849807269953536_n.jpg', 'media/original/Ảnh dìm/921261609931713763839529151720499969980918_460922401424505_8568849807269953536_n.jpg', 'media/thumbnail/Ảnh dìm/921261609931713763839529151720499969980918_460922401424505_8568849807269953536_n.jpg', '74', 'image/jpeg', 93901),
(487, '10134015459621637071230057831357140AEDEFB-634B-4C1C-9DE4-D3EBB08D0C2A.jpeg', 'media/original/Ảnh dìm/10134015459621637071230057831357140AEDEFB-634B-4C1C-9DE4-D3EBB08D0C2A.jpeg', 'media/thumbnail/Ảnh dìm/10134015459621637071230057831357140AEDEFB-634B-4C1C-9DE4-D3EBB08D0C2A.jpeg', '74', 'image/jpeg', 13393),
(488, '111355751409317736201170209355222092C10942-DCA9-4AD5-9E34-3950DDEE0908.jpeg', 'media/original/Ảnh dìm/111355751409317736201170209355222092C10942-DCA9-4AD5-9E34-3950DDEE0908.jpeg', 'media/thumbnail/Ảnh dìm/111355751409317736201170209355222092C10942-DCA9-4AD5-9E34-3950DDEE0908.jpeg', '74', 'image/jpeg', 61825),
(489, '1215474799474198555255002055793513708DBEF9-7791-4614-B1D5-00B3242CBF4C.jpeg', 'media/original/Ảnh dìm/1215474799474198555255002055793513708DBEF9-7791-4614-B1D5-00B3242CBF4C.jpeg', 'media/thumbnail/Ảnh dìm/1215474799474198555255002055793513708DBEF9-7791-4614-B1D5-00B3242CBF4C.jpeg', '74', 'image/jpeg', 30267),
(490, '1396798538055092217951132490149629687A15-5E14-4545-90F3-5CA33194F0C1.jpeg', 'media/original/Ảnh dìm/1396798538055092217951132490149629687A15-5E14-4545-90F3-5CA33194F0C1.jpeg', 'media/thumbnail/Ảnh dìm/1396798538055092217951132490149629687A15-5E14-4545-90F3-5CA33194F0C1.jpeg', '74', 'image/jpeg', 6466),
(491, '141599615095635680629229428784369530343_356481631894280_6007327437875052544_n.jpg', 'media/original/Ảnh dìm/141599615095635680629229428784369530343_356481631894280_6007327437875052544_n.jpg', 'media/thumbnail/Ảnh dìm/141599615095635680629229428784369530343_356481631894280_6007327437875052544_n.jpg', '74', 'image/jpeg', 516110),
(492, '151016987062788925355336164312469668276_2596588223705383_5670527591560249344_n.jpg', 'media/original/Ảnh dìm/151016987062788925355336164312469668276_2596588223705383_5670527591560249344_n.jpg', 'media/thumbnail/Ảnh dìm/151016987062788925355336164312469668276_2596588223705383_5670527591560249344_n.jpg', '74', 'image/jpeg', 49508),
(493, '16138422288581066409496537132421769813713_554390955299043_5170506558362091520_n.jpg', 'media/original/Ảnh dìm/16138422288581066409496537132421769813713_554390955299043_5170506558362091520_n.jpg', 'media/thumbnail/Ảnh dìm/16138422288581066409496537132421769813713_554390955299043_5170506558362091520_n.jpg', '74', 'image/jpeg', 224129),
(494, '172256839829179675865810142028788270002509_2548600178496264_1028056677779243008_n.jpg', 'media/original/Ảnh dìm/172256839829179675865810142028788270002509_2548600178496264_1028056677779243008_n.jpg', 'media/thumbnail/Ảnh dìm/172256839829179675865810142028788270002509_2548600178496264_1028056677779243008_n.jpg', '74', 'image/jpeg', 93535),
(531, '020638343291.jpg', 'media/original/Ảnh thẻ/020638343291.jpg', 'media/thumbnail/Ảnh thẻ/020638343291.jpg', '77', 'image/jpeg', 209949),
(532, '119921813452.jpg', 'media/original/Ảnh thẻ/119921813452.jpg', 'media/thumbnail/Ảnh thẻ/119921813452.jpg', '77', 'image/jpeg', 226703),
(533, '211725412683.jpg', 'media/original/Ảnh thẻ/211725412683.jpg', 'media/thumbnail/Ảnh thẻ/211725412683.jpg', '77', 'image/jpeg', 211086),
(534, '31856410174.jpg', 'media/original/Ảnh thẻ/31856410174.jpg', 'media/thumbnail/Ảnh thẻ/31856410174.jpg', '77', 'image/jpeg', 171774),
(535, '418322126565.jpg', 'media/original/Ảnh thẻ/418322126565.jpg', 'media/thumbnail/Ảnh thẻ/418322126565.jpg', '77', 'image/jpeg', 180865),
(536, '516289958696.jpg', 'media/original/Ảnh thẻ/516289958696.jpg', 'media/thumbnail/Ảnh thẻ/516289958696.jpg', '77', 'image/jpeg', 268382),
(537, '612165333267..jpg', 'media/original/Ảnh thẻ/612165333267..jpg', 'media/thumbnail/Ảnh thẻ/612165333267..jpg', '77', 'image/jpeg', 233962),
(538, '71571360568..jpg', 'media/original/Ảnh thẻ/71571360568..jpg', 'media/thumbnail/Ảnh thẻ/71571360568..jpg', '77', 'image/jpeg', 258983),
(539, '88902627249..jpg', 'media/original/Ảnh thẻ/88902627249..jpg', 'media/thumbnail/Ảnh thẻ/88902627249..jpg', '77', 'image/jpeg', 204172),
(540, '9165958889110..jpg', 'media/original/Ảnh thẻ/9165958889110..jpg', 'media/thumbnail/Ảnh thẻ/9165958889110..jpg', '77', 'image/jpeg', 229083),
(541, '10136926791611..jpg', 'media/original/Ảnh thẻ/10136926791611..jpg', 'media/thumbnail/Ảnh thẻ/10136926791611..jpg', '77', 'image/jpeg', 258652),
(542, '1159860616112..jpg', 'media/original/Ảnh thẻ/1159860616112..jpg', 'media/thumbnail/Ảnh thẻ/1159860616112..jpg', '77', 'image/jpeg', 200219),
(543, '1256728697513.jpg', 'media/original/Ảnh thẻ/1256728697513.jpg', 'media/thumbnail/Ảnh thẻ/1256728697513.jpg', '77', 'image/jpeg', 236356),
(544, '1357216997914..jpg', 'media/original/Ảnh thẻ/1357216997914..jpg', 'media/thumbnail/Ảnh thẻ/1357216997914..jpg', '77', 'image/jpeg', 185793),
(545, '14135274181415..jpg', 'media/original/Ảnh thẻ/14135274181415..jpg', 'media/thumbnail/Ảnh thẻ/14135274181415..jpg', '77', 'image/jpeg', 193131),
(546, '1583285080516.jpg', 'media/original/Ảnh thẻ/1583285080516.jpg', 'media/thumbnail/Ảnh thẻ/1583285080516.jpg', '77', 'image/jpeg', 302859),
(547, '1675755611317..jpg', 'media/original/Ảnh thẻ/1675755611317..jpg', 'media/thumbnail/Ảnh thẻ/1675755611317..jpg', '77', 'image/jpeg', 184734),
(548, '17173488861518..jpg', 'media/original/Ảnh thẻ/17173488861518..jpg', 'media/thumbnail/Ảnh thẻ/17173488861518..jpg', '77', 'image/jpeg', 233563),
(549, '1895594235119..jpg', 'media/original/Ảnh thẻ/1895594235119..jpg', 'media/thumbnail/Ảnh thẻ/1895594235119..jpg', '77', 'image/jpeg', 252592),
(550, '1934336907120..jpg', 'media/original/Ảnh thẻ/1934336907120..jpg', 'media/thumbnail/Ảnh thẻ/1934336907120..jpg', '77', 'image/jpeg', 258037),
(551, '2043448672921.jpg', 'media/original/Ảnh thẻ/2043448672921.jpg', 'media/thumbnail/Ảnh thẻ/2043448672921.jpg', '77', 'image/jpeg', 239545),
(552, '21199260385022..jpg', 'media/original/Ảnh thẻ/21199260385022..jpg', 'media/thumbnail/Ảnh thẻ/21199260385022..jpg', '77', 'image/jpeg', 200955),
(553, '2287015670923..jpg', 'media/original/Ảnh thẻ/2287015670923..jpg', 'media/thumbnail/Ảnh thẻ/2287015670923..jpg', '77', 'image/jpeg', 223897),
(554, '2343831815224.jpg', 'media/original/Ảnh thẻ/2343831815224.jpg', 'media/thumbnail/Ảnh thẻ/2343831815224.jpg', '77', 'image/jpeg', 262391),
(555, '2453243861425.jpg', 'media/original/Ảnh thẻ/2453243861425.jpg', 'media/thumbnail/Ảnh thẻ/2453243861425.jpg', '77', 'image/jpeg', 188288),
(556, '2599053515426..jpg', 'media/original/Ảnh thẻ/2599053515426..jpg', 'media/thumbnail/Ảnh thẻ/2599053515426..jpg', '77', 'image/jpeg', 247576),
(557, '2648185600927..jpg', 'media/original/Ảnh thẻ/2648185600927..jpg', 'media/thumbnail/Ảnh thẻ/2648185600927..jpg', '77', 'image/jpeg', 212900),
(558, '27176483267928.jpg', 'media/original/Ảnh thẻ/27176483267928.jpg', 'media/thumbnail/Ảnh thẻ/27176483267928.jpg', '77', 'image/jpeg', 207877),
(559, '28144333966029.jpg', 'media/original/Ảnh thẻ/28144333966029.jpg', 'media/thumbnail/Ảnh thẻ/28144333966029.jpg', '77', 'image/jpeg', 252490),
(560, '29142193496130.jpg', 'media/original/Ảnh thẻ/29142193496130.jpg', 'media/thumbnail/Ảnh thẻ/29142193496130.jpg', '77', 'image/jpeg', 191337),
(561, '30156594139031.jpg', 'media/original/Ảnh thẻ/30156594139031.jpg', 'media/thumbnail/Ảnh thẻ/30156594139031.jpg', '77', 'image/jpeg', 266120),
(562, '31135969034132..jpg', 'media/original/Ảnh thẻ/31135969034132..jpg', 'media/thumbnail/Ảnh thẻ/31135969034132..jpg', '77', 'image/jpeg', 220391),
(563, '32126663265833..jpg', 'media/original/Ảnh thẻ/32126663265833..jpg', 'media/thumbnail/Ảnh thẻ/32126663265833..jpg', '77', 'image/jpeg', 190864),
(564, '3359099901034..jpg', 'media/original/Ảnh thẻ/3359099901034..jpg', 'media/thumbnail/Ảnh thẻ/3359099901034..jpg', '77', 'image/jpeg', 220799),
(565, '0819686156277662282_661969128365885_4098957993702918993_n.jpeg', 'media/original/Ảnh dìm/0819686156277662282_661969128365885_4098957993702918993_n.jpeg', 'media/thumbnail/Ảnh dìm/0819686156277662282_661969128365885_4098957993702918993_n.jpeg', '74', 'image/jpeg', 88320),
(566, '0781285873Capture.PNG', 'media/original/Ảnh dìm/0781285873Capture.PNG', 'media/thumbnail/Ảnh dìm/0781285873Capture.PNG', '74', 'image/png', 732220);

-- --------------------------------------------------------

--
-- Table structure for table `tkb`
--

CREATE TABLE `tkb` (
  `id` int(11) NOT NULL,
  `t2t1` varchar(11) NOT NULL,
  `t2t2` varchar(255) DEFAULT NULL,
  `t2t3` varchar(255) DEFAULT NULL,
  `t2t4` varchar(255) DEFAULT NULL,
  `t2t5` varchar(255) DEFAULT NULL,
  `t3t1` varchar(255) DEFAULT NULL,
  `t3t2` varchar(255) DEFAULT NULL,
  `t3t3` varchar(255) DEFAULT NULL,
  `t3t4` varchar(255) DEFAULT NULL,
  `t3t5` varchar(255) DEFAULT NULL,
  `t4t1` varchar(255) DEFAULT NULL,
  `t4t2` varchar(255) DEFAULT NULL,
  `t4t3` varchar(255) DEFAULT NULL,
  `t4t4` varchar(255) DEFAULT NULL,
  `t4t5` varchar(255) DEFAULT NULL,
  `t5t1` varchar(255) DEFAULT NULL,
  `t5t2` varchar(255) DEFAULT NULL,
  `t5t3` varchar(255) DEFAULT NULL,
  `t5t4` varchar(255) DEFAULT NULL,
  `t5t5` varchar(255) DEFAULT NULL,
  `t6t1` varchar(255) DEFAULT NULL,
  `t6t2` varchar(255) DEFAULT NULL,
  `t6t3` varchar(255) DEFAULT NULL,
  `t6t4` varchar(255) DEFAULT NULL,
  `t6t5` varchar(255) DEFAULT NULL,
  `t7t1` varchar(255) DEFAULT NULL,
  `t7t2` varchar(255) DEFAULT NULL,
  `t7t3` varchar(255) DEFAULT NULL,
  `t7t4` varchar(255) DEFAULT NULL,
  `t7t5` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `t2c` varchar(255) DEFAULT NULL,
  `t3c` varchar(255) DEFAULT NULL,
  `t4c` varchar(255) DEFAULT NULL,
  `t5c` varchar(255) DEFAULT NULL,
  `t6c` varchar(255) DEFAULT NULL,
  `t7c` varchar(255) DEFAULT NULL,
  `tuan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tkb`
--

INSERT INTO `tkb` (`id`, `t2t1`, `t2t2`, `t2t3`, `t2t4`, `t2t5`, `t3t1`, `t3t2`, `t3t3`, `t3t4`, `t3t5`, `t4t1`, `t4t2`, `t4t3`, `t4t4`, `t4t5`, `t5t1`, `t5t2`, `t5t3`, `t5t4`, `t5t5`, `t6t1`, `t6t2`, `t6t3`, `t6t4`, `t6t5`, `t7t1`, `t7t2`, `t7t3`, `t7t4`, `t7t5`, `date`, `t2c`, `t3c`, `t4c`, `t5c`, `t6c`, `t7c`, `tuan`) VALUES
(1, 'Sống', 'nhé', 'mãi', 'đẹp', 'mày', 'vui', 'tụi', 'về', 'bên', 'thi', 'vẻ', 'bây!', 'những', 'chúng', 'trung', 'và', 'Tao', 'ngày', 'mày.', 'học', 'hạnh', 'sẽ', 'tháng', 'Chúc', 'phổ', 'phúc', 'nhớ', 'tươi', 'tụi', 'thông', '2021-06-24', 'quốc', 'gia', 'đạt', 'kết', 'quả', 'cao!', 999);

-- --------------------------------------------------------

--
-- Table structure for table `tkb_color`
--

CREATE TABLE `tkb_color` (
  `id` int(11) NOT NULL,
  `t2t1` varchar(11) NOT NULL,
  `t2t2` varchar(255) DEFAULT NULL,
  `t2t3` varchar(255) DEFAULT NULL,
  `t2t4` varchar(255) DEFAULT NULL,
  `t2t5` varchar(255) DEFAULT NULL,
  `t3t1` varchar(255) DEFAULT NULL,
  `t3t2` varchar(255) DEFAULT NULL,
  `t3t3` varchar(255) DEFAULT NULL,
  `t3t4` varchar(255) DEFAULT NULL,
  `t3t5` varchar(255) DEFAULT NULL,
  `t4t1` varchar(255) DEFAULT NULL,
  `t4t2` varchar(255) DEFAULT NULL,
  `t4t3` varchar(255) DEFAULT NULL,
  `t4t4` varchar(255) DEFAULT NULL,
  `t4t5` varchar(255) DEFAULT NULL,
  `t5t1` varchar(255) DEFAULT NULL,
  `t5t2` varchar(255) DEFAULT NULL,
  `t5t3` varchar(255) DEFAULT NULL,
  `t5t4` varchar(255) DEFAULT NULL,
  `t5t5` varchar(255) DEFAULT NULL,
  `t6t1` varchar(255) DEFAULT NULL,
  `t6t2` varchar(255) DEFAULT NULL,
  `t6t3` varchar(255) DEFAULT NULL,
  `t6t4` varchar(255) DEFAULT NULL,
  `t6t5` varchar(255) DEFAULT NULL,
  `t7t1` varchar(255) DEFAULT NULL,
  `t7t2` varchar(255) DEFAULT NULL,
  `t7t3` varchar(255) DEFAULT NULL,
  `t7t4` varchar(255) DEFAULT NULL,
  `t7t5` varchar(255) DEFAULT NULL,
  `t2c` varchar(255) DEFAULT NULL,
  `t3c` varchar(255) DEFAULT NULL,
  `t4c` varchar(255) DEFAULT NULL,
  `t5c` varchar(255) DEFAULT NULL,
  `t6c` varchar(255) DEFAULT NULL,
  `t7c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tkb_color`
--

INSERT INTO `tkb_color` (`id`, `t2t1`, `t2t2`, `t2t3`, `t2t4`, `t2t5`, `t3t1`, `t3t2`, `t3t3`, `t3t4`, `t3t5`, `t4t1`, `t4t2`, `t4t3`, `t4t4`, `t4t5`, `t5t1`, `t5t2`, `t5t3`, `t5t4`, `t5t5`, `t6t1`, `t6t2`, `t6t3`, `t6t4`, `t6t5`, `t7t1`, `t7t2`, `t7t3`, `t7t4`, `t7t5`, `t2c`, `t3c`, `t4c`, `t5c`, `t6c`, `t7c`) VALUES
(1, 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info', 'info');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `btvn`
--
ALTER TABLE `btvn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c4_user`
--
ALTER TABLE `c4_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thongbaolop`
--
ALTER TABLE `thongbaolop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thuvienanh`
--
ALTER TABLE `thuvienanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkb`
--
ALTER TABLE `tkb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkb_color`
--
ALTER TABLE `tkb_color`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `c4_user`
--
ALTER TABLE `c4_user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `thongbaolop`
--
ALTER TABLE `thongbaolop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `thuvienanh`
--
ALTER TABLE `thuvienanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=567;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
