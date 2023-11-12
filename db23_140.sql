-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 12, 2023 at 11:03 PM
-- Server version: 5.7.33-0ubuntu0.16.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db23_140`
--

-- --------------------------------------------------------

--
-- Table structure for table `Agency`
--

CREATE TABLE `Agency` (
  `agency_id` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'รหัสหน่วยงาน',
  `agency_name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'ชื่อหน่วยงาน',
  `province_id` int(11) NOT NULL COMMENT 'รหัสจังหวัด',
  `ministry_id` int(11) NOT NULL COMMENT 'รหัสกระทรวง',
  `agency_phone` text CHARACTER SET utf8 NOT NULL COMMENT 'เบอร์ติดต่อหน่วยงาน'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Agency`
--

INSERT INTO `Agency` (`agency_id`, `agency_name`, `province_id`, `ministry_id`, `agency_phone`) VALUES
('AC001', 'สำนักงานปลัดสำนักนายกรัฐมนตรี', 11, 1, '02-283-4000 '),
('AC002', 'กองกลาง', 11, 1, '02-283-4248'),
('AC003', 'กองการเจ้าหน้าที่', 11, 1, '02-283-4292 '),
('AC004', 'กองคลัง', 11, 1, '02-283-4336 '),
('AC005', 'สำนักงานคณะกรรมการข้อมูลข่าวสารของราชการ', 11, 1, '0-2283-4698'),
('AC006', 'กลุ่มพัฒนาระบบบริหาร', 11, 1, '02-283-4842'),
('AC007', 'ศูนย์บริการประชาชน', 11, 1, '0-2283-1271-84'),
('AC008', 'สำนักกฎหมายและระเบียบกลาง', 11, 1, '02-283-4588'),
('AC009', 'สำนักงานคณะกรรมการกำกับและติดตามการปฏิบัติราชการในภูมิภาค', 11, 1, '02-283-4816-27  '),
('AC010', 'สำนักงานคณะกรรมการการกระจายอำนาจให้แก่องค์กรปกครองส่วนท้องถิ่น', 11, 1, '02-283-4641'),
('AC011', 'สำนักงานขับเคลื่อนการพัฒนาตามปรัชญาของเศรษฐกิจพอเพียง', 11, 1, '02-283-4849-80'),
('AC012', 'ศูนย์เทคโนโลยีสารสนเทศและการสื่อสาร', 11, 1, '02-283-4390'),
('AC013', 'สำนักงานเสริมสร้างเอกลักษณ์ของชาติ', 11, 1, '02-283-4751'),
('AC014', 'สำนักตรวจราชการ', 11, 1, '0-2282-3612'),
('AC015', 'สำนักแผนงานและกิจการพิเศษ', 11, 1, '02-283-4809'),
('AC016', 'ศูนย์ปฏิบัติการต่อต้านการทุจริต', 11, 1, '02-283-4923'),
('AC017', 'สำนักงานป้องกันและบรรเทาสาธาณภัย จ.นครปฐม', 1, 13, '0-3434-0233');

-- --------------------------------------------------------

--
-- Table structure for table `ColumnStorm`
--

CREATE TABLE `ColumnStorm` (
  `column_id` int(11) NOT NULL,
  `column_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ColumnStorm`
--

INSERT INTO `ColumnStorm` (`column_id`, `column_name`) VALUES
(1, 'ชุดที่1'),
(2, 'ชุดที่2'),
(3, 'ชุดที่3'),
(4, 'ชุดที่4'),
(5, 'ชุดที่5');

-- --------------------------------------------------------

--
-- Table structure for table `Country`
--

CREATE TABLE `Country` (
  `country_id` int(11) NOT NULL COMMENT 'id_ประเทศ',
  `country_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ประเทศ'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Country`
--

INSERT INTO `Country` (`country_id`, `country_name`) VALUES
(1, 'กัมพูชา'),
(2, 'จีน'),
(3, 'เกาหลีเหนือ'),
(4, 'ฮ่องกง'),
(5, 'ญี่ปุ่น'),
(6, 'ลาว'),
(7, 'มาเก๊า'),
(8, 'มาเลเซีย'),
(9, 'ไมโครนีเซีย'),
(10, 'ฟิลิปปินส์'),
(11, 'เกาหลีใต้'),
(12, 'ไทย'),
(13, 'สหรัฐอเมริกา'),
(14, 'เวียดนาม');

-- --------------------------------------------------------

--
-- Table structure for table `County`
--

CREATE TABLE `County` (
  `county_id` int(11) NOT NULL COMMENT 'id_เขต',
  `county_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'เขต',
  `subdistrict_id` int(11) NOT NULL COMMENT 'ตำบล'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `County`
--

INSERT INTO `County` (`county_id`, `county_name`, `subdistrict_id`) VALUES
(1, 'บ้านยาง', 1),
(2, 'บ้านรางไม้ตาย', 1),
(3, 'บ้านวันครู', 1),
(4, 'วังไทร', 2),
(5, 'คลองตัน', 2),
(6, 'วังน้ำเขียว', 2),
(7, 'หนองบอนพัฒนา', 3),
(8, 'ทุ่งสีหลง', 3);

-- --------------------------------------------------------

--
-- Table structure for table `DischargedName`
--

CREATE TABLE `DischargedName` (
  `sid` int(11) NOT NULL COMMENT 'id พายุ',
  `nid` int(11) NOT NULL COMMENT 'id ชื่อที่ถูกถอน'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DischargedName`
--

INSERT INTO `DischargedName` (`sid`, `nid`) VALUES
(1, 47);

-- --------------------------------------------------------

--
-- Table structure for table `District`
--

CREATE TABLE `District` (
  `district_id` int(11) NOT NULL COMMENT 'id_อำเภอ',
  `district_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'อำเภอ',
  `province_id` int(11) NOT NULL COMMENT 'จังหวัด'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `District`
--

INSERT INTO `District` (`district_id`, `district_name`, `province_id`) VALUES
(1, 'กำแพงแสน', 1),
(2, 'ดอนตูม', 1),
(3, 'สองพี่น้อง', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Equipment`
--

CREATE TABLE `Equipment` (
  `equipment_id` int(11) NOT NULL COMMENT 'รหัสอุปกรณ์',
  `equipment_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'ชื่ออุปกรณ์'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Equipment`
--

INSERT INTO `Equipment` (`equipment_id`, `equipment_name`) VALUES
(1, 'ไฟฉายขยายส่วน'),
(2, 'ไฟฉาย'),
(3, 'ถุงนอน'),
(4, 'ชุดปฐมพยาบาล'),
(5, 'ทิชชู่'),
(6, 'ผ้าเปียก'),
(8, 'เมาส์');

-- --------------------------------------------------------

--
-- Table structure for table `EquipmentList`
--

CREATE TABLE `EquipmentList` (
  `list_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL COMMENT 'รหัสอุปกรณ์',
  `agency_id` varchar(110) CHARACTER SET utf8 NOT NULL COMMENT 'รหัสหน่วยงาน',
  `active_amount` int(11) NOT NULL COMMENT 'ใช้งานอยู่',
  `inactive_amount` int(11) NOT NULL COMMENT 'ชำรุด',
  `already_amount` int(11) NOT NULL COMMENT 'พร้อมใช้งาน'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EquipmentList`
--

INSERT INTO `EquipmentList` (`list_id`, `equipment_id`, `agency_id`, `active_amount`, `inactive_amount`, `already_amount`) VALUES
(2, 2, 'AC005', 238, 55, 56),
(4, 3, 'AC007', 75, 49, 15),
(5, 2, 'AC002', 85, 62, 21),
(6, 4, 'AC001', 65, 34, 1),
(7, 3, 'AC004', 11, 22, 33),
(9, 3, 'AC009', 78, 89, 91),
(10, 1, 'AC002', 1000, 333, 66),
(15, 6, 'AC010', 300, 89, 66),
(16, 6, 'AC016', 0, 200, 200),
(17, 3, 'AC017', 25, 55, 243),
(18, 4, 'AC017', 125, 43, 400),
(19, 5, 'AC017', 200, 2, 544),
(20, 6, 'AC017', 41, 24, 54),
(21, 2, 'AC017', 298, 32, 533);

-- --------------------------------------------------------

--
-- Table structure for table `EquipmentTransactionType`
--

CREATE TABLE `EquipmentTransactionType` (
  `ett_id` int(11) NOT NULL COMMENT 'id ชนิดการทำรายการ',
  `ett_detail` varchar(1000) CHARACTER SET utf8 NOT NULL COMMENT 'ชนิดการทำรายการ'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='ตาราง ชนิดการทำรายการ';

--
-- Dumping data for table `EquipmentTransactionType`
--

INSERT INTO `EquipmentTransactionType` (`ett_id`, `ett_detail`) VALUES
(1, 'เบิก'),
(2, 'คืน');

-- --------------------------------------------------------

--
-- Table structure for table `Ministry`
--

CREATE TABLE `Ministry` (
  `ministry_id` int(11) NOT NULL COMMENT 'รหัสกระทรวง',
  `ministry_name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT 'ชื่อกระทรวง',
  `ministry_email` text CHARACTER SET utf8 NOT NULL COMMENT 'อีเมล์กระทรวง',
  `ministry_phone` text CHARACTER SET utf8 NOT NULL COMMENT 'เบอร์ติดต่อกระทรวง'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Ministry`
--

INSERT INTO `Ministry` (`ministry_id`, `ministry_name`, `ministry_email`, `ministry_phone`) VALUES
(1, 'สำนักนายกรัฐมนตรี', 'saraban@opm.go.th', '02 288 4000'),
(2, 'กระทรวงการคลัง', 'saraban@mof.go.th', '02 126 5800,\r\n02 273 9408'),
(3, 'กระทรวงกลาโหม', 'webmaster@mod.go.th', '02 224 0717,\r\n02 224 0703'),
(4, 'กระทรวงการต่างประเทศ', 'saraban@mfa.go.th', '02 203 5000,\r\n02 643 5018'),
(5, 'กระทรวงการท่องเที่ยวและกีฬา', 'webmaster@mots.go.th', '02 283 1500'),
(6, 'กระทรวงการพัฒนาสังคมและความมั่นคงของมนุษย์', 'saraban@m-society.go.th', '02 659 6527,\r\n02 659 6443,\r\n02 356 0539'),
(7, 'กระทรวงเกษตรและสหกรณ์', 'moacbfa@gmail.com', '02 281 5884'),
(8, 'กระทรวงคมนาคม', 'saraban@mot.go.th', '0 2283 3000,\r\n0 2281 3959'),
(9, 'กระทรวงทรัพยากรธรรมชาติและสิ่งแวดล้อม', 'mnre0200@saraban.mail.go.th', '0 2278 8500,\r\n0 2278 8586'),
(10, 'กระทรวงดิจิทัลเพื่อเศรษฐกิจและสังคม', 'saraban@mdes.go.th', '02 141 6747'),
(11, 'กระทรวงพลังงาน', 'servicelink@energy.go.th', '02 140 6000'),
(12, 'กระทรวงพาณิชย์', 'webmaster@moc.go.th', '02 507 7000,\r\n02 507 8000'),
(13, 'กระทรวงมหาดไทย', 'saraban@moi.go.th', '02 222 1143,\r\n02 221 0823'),
(14, 'กระทรวงยุติธรรม', 'saraban@moj.go.th', '0 2141 5100'),
(15, 'กระทรวงแรงงาน', 'saraban.mol@mol.mail.go.th', '02 232 1227'),
(16, 'กระทรวงวัฒนธรรม', 'saraban@m-culture.go.th', '02 2093 592-95'),
(17, 'กระทรวงการอุดมศึกษา วิทยาศาสตร์ วิจัยและนวัตกรรม', 'aw0200@mhesi.go.th', '02 333 3700,\r\n02 333 3833'),
(18, 'กระทรวงศึกษาธิการ', 'saraban@moe.go.th', '02 628 6346'),
(19, 'กระทรวงสาธารณสุข', 'saraban@moph.go.th', '02 590 1000'),
(20, 'กระทรวงอุตสาหกรรม', 'saraban@industry.go.th', '02 430 6999,\r\n02 430 6991');

-- --------------------------------------------------------

--
-- Table structure for table `NameTitle`
--

CREATE TABLE `NameTitle` (
  `title_id` int(11) NOT NULL COMMENT 'รหัสคำนำหน้า',
  `title_name` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'คำนำหน้า'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `NameTitle`
--

INSERT INTO `NameTitle` (`title_id`, `title_name`) VALUES
(1, 'นางสาว'),
(2, 'นาง'),
(3, 'นาย'),
(4, 'เด็กหญิง'),
(5, 'เด็กชาย');

-- --------------------------------------------------------

--
-- Table structure for table `Position`
--

CREATE TABLE `Position` (
  `position_id` int(11) NOT NULL,
  `position_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'ชื่อตำแหน่ง',
  `agency_id` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'ชื่อหน่วยงาน'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Position`
--

INSERT INTO `Position` (`position_id`, `position_name`, `agency_id`) VALUES
(1, 'ตัวตึงนครปฐม', 'AC001'),
(2, 'อธิบดีแห่งดาวนาวี', 'AC003'),
(3, 'เจ้าหน้าที่ทั่วไป', 'AC017');

-- --------------------------------------------------------

--
-- Table structure for table `Province`
--

CREATE TABLE `Province` (
  `province_id` int(11) NOT NULL COMMENT 'id_จังหวัด',
  `province_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'จังหวัด',
  `country_id` int(11) NOT NULL COMMENT 'ประเทศ'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Province`
--

INSERT INTO `Province` (`province_id`, `province_name`, `country_id`) VALUES
(1, 'นครปฐม', 12),
(2, 'สุพรรณบุรี', 12),
(3, 'ชัยภูมิ', 12),
(4, '	 ชัยนาท', 12),
(5, 'ฉะเชิงเทรา', 12),
(6, 'จันทบุรี', 12),
(7, 'ขอนแก่น', 12),
(8, 'กำแพงเพชร', 12),
(9, 'กาฬสินธุ์', 12),
(10, 'กาญจนบุรี', 12),
(11, 'กรุงเทพมหานคร', 12),
(12, 'กระบี่', 12);

-- --------------------------------------------------------

--
-- Table structure for table `ReportOverall`
--

CREATE TABLE `ReportOverall` (
  `overall_id` int(11) NOT NULL,
  `overall_name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `Omax` int(11) DEFAULT NULL COMMENT 'ระดับน้ำสูงสุด',
  `Omin` int(11) DEFAULT NULL COMMENT 'ระดับน้ำต่ำสุด'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ReportOverall`
--

INSERT INTO `ReportOverall` (`overall_id`, `overall_name`, `Omax`, `Omin`) VALUES
(1, 'น้ำท่วมระดับต่ำ', 30, 1),
(2, 'น้ำท่วมระดับปานกลาง', 90, 31),
(3, 'น้ำท่วมระดับสูง', NULL, 91);

-- --------------------------------------------------------

--
-- Table structure for table `ReportRainDaily`
--

CREATE TABLE `ReportRainDaily` (
  `daily_id` int(11) NOT NULL COMMENT 'id รายละเอียดรายงานประจำวัน',
  `report_id` int(11) NOT NULL COMMENT 'id รายงาน',
  `daily_date` date NOT NULL COMMENT 'วัน',
  `amount_rainfall` int(11) NOT NULL COMMENT 'ปริมาณฝนตก',
  `cover_area` int(11) NOT NULL COMMENT 'ครอบคลุมพื้นที่%'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ReportRainDaily`
--

INSERT INTO `ReportRainDaily` (`daily_id`, `report_id`, `daily_date`, `amount_rainfall`, `cover_area`) VALUES
(1, 1, '2023-11-01', 1, 1),
(2, 1, '2023-11-02', 2, 2),
(4, 2, '2023-11-05', 5, 5),
(5, 3, '2023-11-05', 5, 5),
(7, 1, '2023-11-05', 5, 5),
(11, 1, '2023-11-09', 9, 9),
(18, 3, '2023-11-06', 6, 6),
(21, 1, '2023-11-12', 12, 12),
(26, 1, '2023-11-10', 12, 3),
(30, 15, '2023-11-13', 1, 1),
(31, 15, '2023-11-12', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ReportSituation`
--

CREATE TABLE `ReportSituation` (
  `situation_id` int(11) NOT NULL COMMENT 'id สถานการณ์',
  `report_id` int(11) NOT NULL COMMENT 'id รายงาน',
  `county_id` int(11) NOT NULL COMMENT 'id เขต',
  `situation_date` date NOT NULL COMMENT 'วัน',
  `situation_time` time NOT NULL,
  `water_level` int(11) NOT NULL COMMENT 'ระดับน้ำ',
  `damage_value` int(11) NOT NULL COMMENT 'มูลค่าความเสียหาย'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ReportSituation`
--

INSERT INTO `ReportSituation` (`situation_id`, `report_id`, `county_id`, `situation_date`, `situation_time`, `water_level`, `damage_value`) VALUES
(1, 1, 2, '2023-10-01', '08:00:00', 50, 25),
(2, 1, 1, '2023-10-02', '05:00:00', 100, 50),
(3, 1, 1, '2023-10-02', '12:00:00', 150, 75),
(4, 2, 4, '2023-10-04', '18:00:00', 200, 100),
(5, 2, 5, '2023-10-05', '03:00:00', 250, 125),
(7, 1, 3, '2023-11-01', '20:55:00', 21, 55000),
(9, 1, 2, '2023-11-02', '04:28:00', 15, 55000);

-- --------------------------------------------------------

--
-- Table structure for table `ReportStorm`
--

CREATE TABLE `ReportStorm` (
  `report_id` int(11) NOT NULL COMMENT 'id รายงาน',
  `sid` int(11) NOT NULL COMMENT 'id พายุ',
  `subdistrict_id` int(11) NOT NULL COMMENT 'id ตำบล'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='ตารางแสดงชื่อพายุแล้วรายชื่อพื้นที่ผลกระทบ';

--
-- Dumping data for table `ReportStorm`
--

INSERT INTO `ReportStorm` (`report_id`, `sid`, `subdistrict_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(11, 1, 4),
(12, 1, 3),
(15, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `Rescue`
--

CREATE TABLE `Rescue` (
  `rescue_id` int(11) NOT NULL COMMENT 'id การกู้ภัย',
  `situation_id` int(11) NOT NULL COMMENT 'id การรายงานสถานการณ์',
  `rescue_date` date NOT NULL COMMENT 'วันที่เข้ากู้ภัย',
  `rescue_report` varchar(10000) CHARACTER SET utf8 NOT NULL COMMENT 'รายงานผลการกู้ภัย',
  `agency_id` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'id หน่วยงาน'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_bin;

--
-- Dumping data for table `Rescue`
--

INSERT INTO `Rescue` (`rescue_id`, `situation_id`, `rescue_date`, `rescue_report`, `agency_id`) VALUES
(1, 2, '2023-10-04', 'เข้าช่วยเหลือได้อย่างยอดเยี่ยม', 'AC017'),
(2, 5, '2023-10-04', 'เข้าช่วยเหลือผู้ประสบภัย 3 ราย', 'AC017'),
(3, 3, '2023-10-08', 'เข้าช่วยเหลือผู้ประสบภัย 10 ราย และพบผู้สูญหาย 4 ราย', 'AC017'),
(4, 9, '2023-10-19', 'ยอมเยี่ยม', 'AC017'),
(10, 2, '2023-11-09', '20', 'AC004');

-- --------------------------------------------------------

--
-- Table structure for table `RescueEquipment`
--

CREATE TABLE `RescueEquipment` (
  `re_id` varchar(1000) CHARACTER SET utf8 NOT NULL COMMENT 'id รายการเบิก-คืน',
  `rescue_id` int(11) NOT NULL COMMENT 'id การกู้ภัย',
  `worker_id` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'id เจ้าหน้าที่ผู้เบิก-คืน',
  `equipment_list_id` int(11) NOT NULL COMMENT 'id อุปกรณ์',
  `equipment_transaction` int(11) NOT NULL COMMENT 'ทำรายการเบิกหรือคืน',
  `equipment_quantity` int(11) NOT NULL COMMENT 'จำนวนอุปกรณ์',
  `re_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='เบิก-คืนอุปกรณ์กู้ภัย';

--
-- Dumping data for table `RescueEquipment`
--

INSERT INTO `RescueEquipment` (`re_id`, `rescue_id`, `worker_id`, `equipment_list_id`, `equipment_transaction`, `equipment_quantity`, `re_date`) VALUES
('20', 10, 'WK001', 2, 1, 1, '2023-11-08'),
('RE001', 1, 'WK006', 17, 1, 30, '2023-10-04'),
('RE002', 1, 'WK006', 4, 1, 6, '2023-10-04'),
('RE003', 1, 'WK006', 19, 1, 20, '2023-10-04'),
('RE004', 2, 'WK008', 4, 1, 4, '2023-10-04'),
('RE005', 2, 'WK006', 17, 2, 30, '2023-10-06'),
('RE006', 4, 'WK008', 4, 2, 4, '2023-10-07'),
('RE010', 3, 'WK012', 4, 1, 20, '2023-10-19'),
('RE013', 4, 'WK009', 21, 2, 2, '2023-10-12'),
('RE020', 3, 'WK010', 2, 2, 13, '2023-11-02'),
('RE566', 1, 'WK009', 20, 2, 300, '2023-11-09');

-- --------------------------------------------------------

--
-- Table structure for table `RescueWorkerGroup`
--

CREATE TABLE `RescueWorkerGroup` (
  `rwg_id` int(11) NOT NULL,
  `rescue_id` int(11) NOT NULL,
  `worker_id` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `RescueWorkerGroup`
--

INSERT INTO `RescueWorkerGroup` (`rwg_id`, `rescue_id`, `worker_id`) VALUES
(1, 2, 'WK012'),
(2, 3, 'WK010'),
(3, 1, 'WK009'),
(4, 2, 'WK011'),
(5, 3, 'WK009'),
(6, 3, 'WK009'),
(7, 3, 'WK008');

-- --------------------------------------------------------

--
-- Table structure for table `SeverityScale`
--

CREATE TABLE `SeverityScale` (
  `scale_id` int(11) NOT NULL,
  `scale` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'ระดับความรุรแรง',
  `min` int(11) NOT NULL COMMENT 'ความเร็วต่ำสุด',
  `max` int(11) DEFAULT NULL COMMENT 'ความเร็วสูงสุด'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SeverityScale`
--

INSERT INTO `SeverityScale` (`scale_id`, `scale`, `min`, `max`) VALUES
(1, 'F1', 119, 153),
(2, 'F2', 154, 177),
(3, 'F3', 178, 208),
(4, 'F4', 209, 251),
(5, 'F5', 252, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Station`
--

CREATE TABLE `Station` (
  `station_id` int(11) NOT NULL,
  `station_name` varchar(11) CHARACTER SET utf8 NOT NULL COMMENT 'ชื่อสถานี',
  `province_id` int(11) NOT NULL COMMENT 'จังหวัด'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Station`
--

INSERT INTO `Station` (`station_id`, `station_name`, `province_id`) VALUES
(1, 'เกษตรศาสตร์', 1),
(2, 'พุทธมณฑล', 11),
(3, 'อู่ทอง', 2),
(13, 'เตาปูน', 5);

-- --------------------------------------------------------

--
-- Table structure for table `Storm`
--

CREATE TABLE `Storm` (
  `sid` int(11) NOT NULL COMMENT 'id พายุ',
  `storm_id` int(11) NOT NULL COMMENT 'id ชื่อพายุ',
  `severity_scale_id` int(11) NOT NULL COMMENT 'ระดับความรุรแรง',
  `maximum_speed` int(11) NOT NULL COMMENT 'ความเร็วสูงสุด',
  `diameter` int(11) NOT NULL COMMENT 'เส้นผ่านศูนย์กลาง',
  `storm_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Storm`
--

INSERT INTO `Storm` (`sid`, `storm_id`, `severity_scale_id`, `maximum_speed`, `diameter`, `storm_type_id`) VALUES
(1, 3, 5, 324, 300, 3),
(2, 4, 4, 500, 500, 3),
(3, 5, 3, 7, 5, 3),
(5, 10, 5, 270, 230, 3),
(6, 15, 3, 200, 50, 3),
(7, 30, 5, 290, 78, 3),
(8, 30, 4, 244, 32, 3),
(10, 30, 5, 3000, 3000, 3),
(11, 30, 5, 300, 300, 3);

-- --------------------------------------------------------

--
-- Table structure for table `StormList`
--

CREATE TABLE `StormList` (
  `storm_id` int(11) NOT NULL COMMENT 'idของชื่อพายุ',
  `country_id` int(11) NOT NULL COMMENT 'idประเทศ',
  `storm_nameth` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่อไทย',
  `storm_nameeng` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ชื่ออังกฤษ',
  `nameth_compensate` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ชื่อทดแทน',
  `column_id` int(11) DEFAULT NULL COMMENT 'คอลัมไหน',
  `storm_status` int(11) NOT NULL COMMENT 'สถานะ(1ใช้งาน/2ปลด)',
  `status_meaning` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ความหมาย',
  `date_start` date DEFAULT '2023-10-01' COMMENT 'วันเริ่มใช้งาน',
  `date_end` date DEFAULT NULL COMMENT 'วันที่ปลด'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StormList`
--

INSERT INTO `StormList` (`storm_id`, `country_id`, `storm_nameth`, `storm_nameeng`, `nameth_compensate`, `column_id`, `storm_status`, `status_meaning`, `date_start`, `date_end`) VALUES
(3, 1, 'ด็อมเร็ย', 'DAMREY', 'ดอมดอม', 1, 1, 'ช้าง', '2023-10-01', NULL),
(4, 1, 'กองเร็ย', 'KONG-REY', 'กองกอง', 2, 1, ' ชื่อสาวงามในต้านานเขมร, ชื่อภูเขา', '2023-10-01', NULL),
(5, 1, 'นากรี', 'NAKRI', NULL, 3, 1, 'ชื่อดอกไม้ชนิดหนึ่ง', '2023-10-01', NULL),
(6, 1, 'กรอวาญ ', 'KROVANH', NULL, 4, 1, 'ชื่อต้นไม้ชนิดหนึ่ง (กระวาน)', '2023-10-01', NULL),
(7, 1, 'ซาเระกา', 'SARIKA', NULL, 5, 1, 'ชื่อนกชนิดหนึ่ง มีเสียงไพเราะ(สาลิกา)', '2023-10-01', NULL),
(8, 2, 'ไห่ขุย', 'HAIKUI', 'ไหไห', 1, 1, 'ชื่อดอกไม้ทะเลชนิดหนึ่ง', '2023-10-01', NULL),
(9, 2, 'ยวี่ถู่', 'YUTU', NULL, 2, 1, 'กระต่ายในดวงจันทร์ของจีน,กระต่ายหยก', '2023-10-01', NULL),
(10, 2, 'เฟิงเฉิน', 'FENGSHEN', NULL, 3, 1, 'ชื่อเทพเจ้าแห่งลม ', '2023-10-01', NULL),
(11, 2, 'ตู้เจวียน', 'DUJUAN', NULL, 4, 1, 'กุหลาบพันป', '2023-10-01', NULL),
(12, 2, 'ไหหม่า', 'HAIMA', NULL, 5, 1, 'ม้าน้้า ', '2023-10-01', NULL),
(13, 3, 'คีโรกี', 'KIROGI', 'คีคี', 1, 1, 'ห่านป่า', '2023-10-01', NULL),
(14, 3, 'โทราจี', 'TORAJI', NULL, 2, 1, 'ชื่อต้นไม้มีดอกสวยงามพบในเกาหลี', '2023-10-01', NULL),
(15, 3, 'คัลแมกี', 'KALMAEGI', NULL, 3, 1, 'นกนางนวล ', '2023-10-01', NULL),
(16, 3, 'มูจีแก', 'MUJIGAE', NULL, 4, 1, 'รุ้งกินน้้า', '2023-10-01', NULL),
(17, 3, 'เมอารี', 'MEARI', NULL, 5, 1, 'เสียงสะท้อน', '2023-10-01', NULL),
(28, 4, 'ไคตั๊ก', 'KAI-TAK', 'ไคไค', 1, 1, 'ชื่อท่าอากาศยานเดิม ', '2023-10-01', NULL),
(29, 4, 'หม่านหยี่', 'MAN-YI', NULL, 2, 1, 'ชื่อช่องแคบ ปัจจุบันเป็นอ่างเก็บน้้า', '2023-10-01', NULL),
(30, 4, 'ฟงวอง', 'FUNG-WONG ', NULL, 3, 1, 'ฟีนิกซ์ (ชื่อยอดเขา)', '2023-10-01', NULL),
(31, 4, 'ฉอยหวั่น', 'CHOI-WAN', NULL, 4, 1, 'เมฆซึ่งมีสีสันสวยงาม ', '2023-10-01', NULL),
(32, 4, 'หมาอ๊อน', 'MA-ON', NULL, 5, 1, 'ชื่อยอดเขาในฮ่องกง มีความหมายว่า อานม้า', '2023-10-01', NULL),
(33, 12, 'ไทย1', 'TEST', 'a', 1, 1, 'a', '2023-10-16', NULL),
(34, 10, 'พายุฟิลิปปิน', 'TEST', 'b', 1, 1, 'b', '2023-10-16', NULL),
(35, 9, 'พายุไมโคร', 'TEST', 'b', 1, 1, 'b', '2023-10-16', NULL),
(36, 8, 'พายุมาเล', 'TEST', 'b', 1, 1, 'b', '2023-10-16', NULL),
(37, 7, 'TEST', 'TEST', 'b', 1, 1, 'b', '2023-10-16', NULL),
(38, 11, 'เกาหลี', 'TEST', 'b', 1, 1, 'b', '2023-10-16', NULL),
(39, 11, 'Test', 'Test', 'Test', 2, 1, 'b', '2023-10-16', NULL),
(40, 13, 'USA', 'aaaaaaaaaaa', 'aaaaaaaaaaaaaa', 1, 2, 'aaaaaaaaaaa', '2023-10-15', '2023-12-01'),
(41, 13, 'ฟหกฟหกหฟก', 'asdasd', 'ฟหกหฟก', 2, 2, 'asdasd', '2023-10-16', '2023-10-31'),
(44, 14, 'ทดสอบ', 'ทดสอบ', 'ทดสอบ', 5, 2, 'ทดสอบ', '2023-11-03', '2023-11-30'),
(46, 12, 'ทดสอบ', 'ทดสอบ', 'ทดสอบ', 5, 2, 'ทดสอบ', '2023-11-23', '2023-07-16'),
(47, 5, 'โดเรมอน', 'doraemon', 'nobita', 4, 2, 'หุ่นยนต์แมวชื่อโดราเอมอน', '2023-11-01', '2023-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `StormNotification`
--

CREATE TABLE `StormNotification` (
  `sn_id` int(11) NOT NULL,
  `sn_headline` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sn_info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sn_datetime` datetime NOT NULL,
  `province_id` int(11) NOT NULL,
  `warning_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StormNotification`
--

INSERT INTO `StormNotification` (`sn_id`, `sn_headline`, `sn_info`, `sn_datetime`, `province_id`, `warning_id`) VALUES
(1, 'เตือนภัยใน จ.นครปฐม ระวังน้ำท่วมจากพายุ', 'ขอให้ผู้ที่จะเดินทางไปบริเวณดังกล่าวตรวจสอบสภาพอากาศก่อนออกเดินทางไว้ด้วย', '2023-10-04 06:10:00', 1, 5),
(2, 'เตือนภัยใน จ.สุพรรณบุรี ระวังน้ำท่วมจากพายุ', 'ขอให้ผู้ที่จะเดินทางไปบริเวณดังกล่าวตรวจสอบสภาพอากาศก่อนออกเดินทางไว้ด้วย', '2023-11-01 06:00:00', 2, 1),
(3, 'แจ้งเตือนเฝ้าระวังสภาวะอากาศในกรุงเทพ', 'ระวังน้ำท่วมขังในพื้นที่กรุงเทพ และปริมณฑล', '2023-10-11 08:21:36', 11, 1),
(4, 'แจ้งเตือนเฝ้าสภาพอากาศในจังหวัดที่ติดกับสหภาพพม่า', 'จากข้อมูลพายุมีโอกาศจะมีฝนตกหนักในบริเวณภาคเหนือตอนบน', '2023-11-23 08:19:51', 7, 4);

-- --------------------------------------------------------

--
-- Table structure for table `StormStatus`
--

CREATE TABLE `StormStatus` (
  `storm_status` int(11) NOT NULL,
  `status_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StormStatus`
--

INSERT INTO `StormStatus` (`storm_status`, `status_name`) VALUES
(1, 'ใช้งานอยู่'),
(2, 'ปลดการใช้งาน');

-- --------------------------------------------------------

--
-- Table structure for table `StormType`
--

CREATE TABLE `StormType` (
  `storm_type_id` int(11) NOT NULL COMMENT 'StormType id',
  `storm_type_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'ประเภทพายุ',
  `min` int(11) NOT NULL COMMENT 'ความเร็วต่ำสุด',
  `max` int(11) DEFAULT NULL COMMENT 'ความเร็วสูงสุด'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `StormType`
--

INSERT INTO `StormType` (`storm_type_id`, `storm_type_name`, `min`, `max`) VALUES
(1, 'พายุดีเปรสชันเขตร้อน(tropical depression)', 1, 63),
(2, 'พายุโซนร้อน(tropical storm)', 64, 118),
(3, 'พายุไต้ฝุ่น(typhoon)', 119, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Subdistrict`
--

CREATE TABLE `Subdistrict` (
  `subdistrict_id` int(11) NOT NULL COMMENT 'id_ตำบล',
  `subdistrict_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'ตำบล',
  `district_id` int(11) NOT NULL COMMENT 'อำเภอ'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Subdistrict`
--

INSERT INTO `Subdistrict` (`subdistrict_id`, `subdistrict_name`, `district_id`) VALUES
(1, 'กำแพงแสน', 1),
(2, 'วังน้ำเขียว', 1),
(3, 'ลำเหย', 2),
(4, 'ห้วยพระ', 2),
(5, 'สองพี่น้อง', 3),
(6, 'ทุ่งคอก', 3);

-- --------------------------------------------------------

--
-- Table structure for table `TrackStorm`
--

CREATE TABLE `TrackStorm` (
  `track_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `track_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TrackStorm`
--

INSERT INTO `TrackStorm` (`track_id`, `sid`, `track_date`) VALUES
(1, 1, '2023-10-03'),
(2, 2, '2023-10-04'),
(3, 2, '2023-10-05'),
(55, 2, '2023-11-06'),
(57, 3, '2023-11-09'),
(58, 3, '2023-11-10');

-- --------------------------------------------------------

--
-- Table structure for table `TrackStormDate`
--

CREATE TABLE `TrackStormDate` (
  `track_date_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  `station_id` int(11) DEFAULT NULL,
  `track_date_time` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'เวลา',
  `track_date_latitude` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'ลิติจูด',
  `track_date_longitude` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'ลองจิจูด',
  `track_date_temparature` int(11) NOT NULL COMMENT 'อุณหภูมิ',
  `track_date_humdity` int(11) NOT NULL COMMENT 'ความชื้น',
  `track_date_speed` int(11) NOT NULL COMMENT 'ความเร็วลม',
  `track_date_direction` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'ทิศทาง',
  `track_date_rainfall` int(11) NOT NULL COMMENT 'ปริมาณน้ำฝน'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `TrackStormDate`
--

INSERT INTO `TrackStormDate` (`track_date_id`, `track_id`, `station_id`, `track_date_time`, `track_date_latitude`, `track_date_longitude`, `track_date_temparature`, `track_date_humdity`, `track_date_speed`, `track_date_direction`, `track_date_rainfall`) VALUES
(4, 1, 1, '00:00', '20N', '22E', 25, 3, 110, 'ตะวันออกเฉียงใต้', 20),
(5, 1, 2, '08:00', '18N', '13E', 21, 6, 117, 'ตะวันออก', 16),
(6, 1, 2, '16:00', '17N', '14E', 24, 2, 107, 'ตะวันออกเฉียงเหนือ', 21),
(7, 2, 3, '08:00', '18N', '19W', 27, 4, 102, 'ตะวันตก', 19),
(8, 3, 3, '16:00', '20N', '22E', 25, 3, 110, 'ตะวันออก', 20),
(23, 57, 1, '00:00', '22E', '15N', 25, 21, 118, 'ใต้', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Warning`
--

CREATE TABLE `Warning` (
  `warning_id` int(11) NOT NULL,
  `warning_head` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `track_id` int(11) NOT NULL,
  `warning_no` int(11) NOT NULL COMMENT 'ฉบับที่',
  `warning_date` date NOT NULL,
  `warning_info` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Warning`
--

INSERT INTO `Warning` (`warning_id`, `warning_head`, `agency_id`, `track_id`, `warning_no`, `warning_date`, `warning_info`) VALUES
(1, 'อัปเดตเส้นทางพายุ ด็อมเร็ย', 'AC001', 1, 1, '2023-10-04', 'เคลื่อนเข้าใกล้ชายฝั่งประเทศจีน พร้อมติดตามหย่อมความกดอากาศกำลังแรงที่อาจก่อเป็นพายุอีกลูก'),
(2, 'อัปเดตเส้นทางพายุ ด็อมเร็ย', 'AC007', 1, 2, '2023-10-10', 'พายุไต้ฝุ่นบริเวณทะเลจีนใต้ตอนบนมีความเร็วลมสูงสุดใกล้ศูนย์กลางประมาณ 157 กิโลเมตรต่อชั่วโมง'),
(3, 'อัปเดตเส้นทางพายุ ด็อมเร็ย', 'AC007', 1, 3, '2023-10-07', 'พายุนี้กำลังเคลื่อนตัวทางทิศตะวันตกค่อนทางใต้เล็กน้อย ด้วยความเร็วประมาณ 10 กิโลเมตรต่อชั่วโมง'),
(4, 'อัปเดตเส้นทางพายุ กองเร็ย', 'AC001', 3, 1, '2023-10-26', 'พายุนี้กำลังเคลื่อนตัวทางทิศตะวันตกค่อนทางใต้เล็กน้อย คาดว่าจะเคลื่อนเข้าใกล้ชายฝั่งด้านตะวันออกเฉียงใต้ของประเทศจีน'),
(5, 'อัปเดตเส้นทางพายุ กองเร็ย', 'AC007', 2, 2, '2023-10-26', 'พายุนี้กำลังเคลื่อนตัวทางทิศตะวันตกจะอ่อนกำลังลงตามลำดับ โดยพายุนี้ไม่ส่งผลกระทบโดยตรงต่อลักษณะอากาศของประเทศไทย');

-- --------------------------------------------------------

--
-- Table structure for table `Worker`
--

CREATE TABLE `Worker` (
  `worker_id` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'รหัสเจ้าหน้าที่',
  `title_id` int(11) NOT NULL COMMENT 'คำนำหน้า',
  `worker_name` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT 'ชื่อ',
  `worker_lastname` varchar(30) CHARACTER SET utf8 NOT NULL COMMENT 'นามสกุล',
  `position_id` int(11) NOT NULL COMMENT 'รหัสตำแหน่ง'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Worker`
--

INSERT INTO `Worker` (`worker_id`, `title_id`, `worker_name`, `worker_lastname`, `position_id`) VALUES
('WK001', 3, 'เศรษฐา', 'ทวีสิน', 1),
('WK002', 1, 'ทาม', 'ไท', 2),
('WK003', 5, 'ลาน', 'ดอกไม้', 2),
('WK004', 4, 'เอดวิน', 'สกา', 1),
('WK005', 3, 'มะม่วง', 'แมงโก้', 3),
('WK006', 3, 'สีเหลือง', 'เยลโล่', 3),
('WK007', 2, 'มีด', 'อีโต้', 3),
('WK008', 1, 'รถยนต์', 'วีโก้', 3),
('WK009', 2, 'สีเขียว', 'เรืองรอง', 3),
('WK010', 3, 'สีทอง', 'เปล่งปลั่ง', 3),
('WK011', 2, 'สีม่วง', 'ฟกช้ำ', 3),
('WK012', 5, 'อากาศ', 'ร้อน', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Agency`
--
ALTER TABLE `Agency`
  ADD PRIMARY KEY (`agency_id`),
  ADD KEY `province_id` (`province_id`),
  ADD KEY `ministry_id` (`ministry_id`);

--
-- Indexes for table `ColumnStorm`
--
ALTER TABLE `ColumnStorm`
  ADD PRIMARY KEY (`column_id`);

--
-- Indexes for table `Country`
--
ALTER TABLE `Country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `County`
--
ALTER TABLE `County`
  ADD PRIMARY KEY (`county_id`),
  ADD KEY `subdistrict_id` (`subdistrict_id`);

--
-- Indexes for table `DischargedName`
--
ALTER TABLE `DischargedName`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `NID` (`nid`);

--
-- Indexes for table `District`
--
ALTER TABLE `District`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `subdistrict_id` (`province_id`);

--
-- Indexes for table `Equipment`
--
ALTER TABLE `Equipment`
  ADD PRIMARY KEY (`equipment_id`);

--
-- Indexes for table `EquipmentList`
--
ALTER TABLE `EquipmentList`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `equipment_id` (`equipment_id`),
  ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `EquipmentTransactionType`
--
ALTER TABLE `EquipmentTransactionType`
  ADD PRIMARY KEY (`ett_id`);

--
-- Indexes for table `Ministry`
--
ALTER TABLE `Ministry`
  ADD PRIMARY KEY (`ministry_id`);

--
-- Indexes for table `NameTitle`
--
ALTER TABLE `NameTitle`
  ADD PRIMARY KEY (`title_id`);

--
-- Indexes for table `Position`
--
ALTER TABLE `Position`
  ADD PRIMARY KEY (`position_id`),
  ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `Province`
--
ALTER TABLE `Province`
  ADD PRIMARY KEY (`province_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `ReportOverall`
--
ALTER TABLE `ReportOverall`
  ADD PRIMARY KEY (`overall_id`);

--
-- Indexes for table `ReportRainDaily`
--
ALTER TABLE `ReportRainDaily`
  ADD PRIMARY KEY (`daily_id`),
  ADD KEY `report_id` (`report_id`);

--
-- Indexes for table `ReportSituation`
--
ALTER TABLE `ReportSituation`
  ADD PRIMARY KEY (`situation_id`),
  ADD KEY `report_id` (`report_id`),
  ADD KEY `zone_id` (`county_id`);

--
-- Indexes for table `ReportStorm`
--
ALTER TABLE `ReportStorm`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `address_id` (`subdistrict_id`),
  ADD KEY `storm_id` (`sid`);

--
-- Indexes for table `Rescue`
--
ALTER TABLE `Rescue`
  ADD PRIMARY KEY (`rescue_id`),
  ADD KEY `report_id` (`situation_id`),
  ADD KEY `station_id` (`agency_id`);

--
-- Indexes for table `RescueEquipment`
--
ALTER TABLE `RescueEquipment`
  ADD PRIMARY KEY (`re_id`),
  ADD KEY `rescue_id` (`rescue_id`),
  ADD KEY `agency_id` (`worker_id`),
  ADD KEY `equipment_transaction` (`equipment_transaction`),
  ADD KEY `equipment_id` (`equipment_list_id`);

--
-- Indexes for table `RescueWorkerGroup`
--
ALTER TABLE `RescueWorkerGroup`
  ADD PRIMARY KEY (`rwg_id`),
  ADD KEY `rescue_id` (`rescue_id`),
  ADD KEY `worker_id` (`worker_id`);

--
-- Indexes for table `SeverityScale`
--
ALTER TABLE `SeverityScale`
  ADD PRIMARY KEY (`scale_id`);

--
-- Indexes for table `Station`
--
ALTER TABLE `Station`
  ADD PRIMARY KEY (`station_id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `Storm`
--
ALTER TABLE `Storm`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `NID` (`storm_id`),
  ADD KEY `Severity_scaleID` (`severity_scale_id`),
  ADD KEY `StormTypeID` (`storm_type_id`);

--
-- Indexes for table `StormList`
--
ALTER TABLE `StormList`
  ADD PRIMARY KEY (`storm_id`),
  ADD KEY `co` (`country_id`),
  ADD KEY `storm_column` (`column_id`),
  ADD KEY `storm_status` (`storm_status`);

--
-- Indexes for table `StormNotification`
--
ALTER TABLE `StormNotification`
  ADD PRIMARY KEY (`sn_id`),
  ADD KEY `province_id` (`province_id`),
  ADD KEY `warning_id` (`warning_id`);

--
-- Indexes for table `StormStatus`
--
ALTER TABLE `StormStatus`
  ADD PRIMARY KEY (`storm_status`);

--
-- Indexes for table `StormType`
--
ALTER TABLE `StormType`
  ADD PRIMARY KEY (`storm_type_id`);

--
-- Indexes for table `Subdistrict`
--
ALTER TABLE `Subdistrict`
  ADD PRIMARY KEY (`subdistrict_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `TrackStorm`
--
ALTER TABLE `TrackStorm`
  ADD PRIMARY KEY (`track_id`),
  ADD KEY `storm_id` (`sid`);

--
-- Indexes for table `TrackStormDate`
--
ALTER TABLE `TrackStormDate`
  ADD PRIMARY KEY (`track_date_id`),
  ADD KEY `track_id` (`track_id`),
  ADD KEY `station_id` (`station_id`);

--
-- Indexes for table `Warning`
--
ALTER TABLE `Warning`
  ADD PRIMARY KEY (`warning_id`),
  ADD KEY `follow_id` (`track_id`),
  ADD KEY `agency_id` (`agency_id`);

--
-- Indexes for table `Worker`
--
ALTER TABLE `Worker`
  ADD PRIMARY KEY (`worker_id`),
  ADD KEY `title_id` (`title_id`),
  ADD KEY `position_id` (`position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Country`
--
ALTER TABLE `Country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_ประเทศ', AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `County`
--
ALTER TABLE `County`
  MODIFY `county_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_เขต', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `District`
--
ALTER TABLE `District`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_อำเภอ', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Equipment`
--
ALTER TABLE `Equipment`
  MODIFY `equipment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสอุปกรณ์', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `EquipmentList`
--
ALTER TABLE `EquipmentList`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `EquipmentTransactionType`
--
ALTER TABLE `EquipmentTransactionType`
  MODIFY `ett_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id ชนิดการทำรายการ', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Ministry`
--
ALTER TABLE `Ministry`
  MODIFY `ministry_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสกระทรวง', AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `NameTitle`
--
ALTER TABLE `NameTitle`
  MODIFY `title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสคำนำหน้า', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Position`
--
ALTER TABLE `Position`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Province`
--
ALTER TABLE `Province`
  MODIFY `province_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_จังหวัด', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `ReportOverall`
--
ALTER TABLE `ReportOverall`
  MODIFY `overall_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ReportRainDaily`
--
ALTER TABLE `ReportRainDaily`
  MODIFY `daily_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id รายละเอียดรายงานประจำวัน', AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `ReportSituation`
--
ALTER TABLE `ReportSituation`
  MODIFY `situation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id สถานการณ์', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `ReportStorm`
--
ALTER TABLE `ReportStorm`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id รายงาน', AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `Rescue`
--
ALTER TABLE `Rescue`
  MODIFY `rescue_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id การกู้ภัย', AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `RescueWorkerGroup`
--
ALTER TABLE `RescueWorkerGroup`
  MODIFY `rwg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `SeverityScale`
--
ALTER TABLE `SeverityScale`
  MODIFY `scale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `Station`
--
ALTER TABLE `Station`
  MODIFY `station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `Storm`
--
ALTER TABLE `Storm`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id พายุ', AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `StormList`
--
ALTER TABLE `StormList`
  MODIFY `storm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'idของชื่อพายุ', AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `StormNotification`
--
ALTER TABLE `StormNotification`
  MODIFY `sn_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `StormType`
--
ALTER TABLE `StormType`
  MODIFY `storm_type_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'StormType id', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `Subdistrict`
--
ALTER TABLE `Subdistrict`
  MODIFY `subdistrict_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id_ตำบล', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `TrackStorm`
--
ALTER TABLE `TrackStorm`
  MODIFY `track_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `TrackStormDate`
--
ALTER TABLE `TrackStormDate`
  MODIFY `track_date_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `Warning`
--
ALTER TABLE `Warning`
  MODIFY `warning_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Agency`
--
ALTER TABLE `Agency`
  ADD CONSTRAINT `Agency_ibfk_2` FOREIGN KEY (`ministry_id`) REFERENCES `Ministry` (`ministry_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Agency_ibfk_3` FOREIGN KEY (`province_id`) REFERENCES `Province` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `County`
--
ALTER TABLE `County`
  ADD CONSTRAINT `County_ibfk_1` FOREIGN KEY (`subdistrict_id`) REFERENCES `Subdistrict` (`subdistrict_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `DischargedName`
--
ALTER TABLE `DischargedName`
  ADD CONSTRAINT `DischargedName_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `Storm` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `DischargedName_ibfk_2` FOREIGN KEY (`nid`) REFERENCES `StormList` (`storm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `District`
--
ALTER TABLE `District`
  ADD CONSTRAINT `District_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `Province` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `EquipmentList`
--
ALTER TABLE `EquipmentList`
  ADD CONSTRAINT `EquipmentList_ibfk_1` FOREIGN KEY (`equipment_id`) REFERENCES `Equipment` (`equipment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `EquipmentList_ibfk_2` FOREIGN KEY (`agency_id`) REFERENCES `Agency` (`agency_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Position`
--
ALTER TABLE `Position`
  ADD CONSTRAINT `Position_ibfk_1` FOREIGN KEY (`agency_id`) REFERENCES `Agency` (`agency_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Province`
--
ALTER TABLE `Province`
  ADD CONSTRAINT `Province_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `Country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ReportRainDaily`
--
ALTER TABLE `ReportRainDaily`
  ADD CONSTRAINT `ReportRainDaily_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ReportStorm` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ReportSituation`
--
ALTER TABLE `ReportSituation`
  ADD CONSTRAINT `ReportSituation_ibfk_1` FOREIGN KEY (`report_id`) REFERENCES `ReportStorm` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ReportSituation_ibfk_2` FOREIGN KEY (`county_id`) REFERENCES `County` (`county_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ReportStorm`
--
ALTER TABLE `ReportStorm`
  ADD CONSTRAINT `ReportStorm_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `Storm` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ReportStorm_ibfk_2` FOREIGN KEY (`subdistrict_id`) REFERENCES `Subdistrict` (`subdistrict_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Rescue`
--
ALTER TABLE `Rescue`
  ADD CONSTRAINT `Rescue_ibfk_3` FOREIGN KEY (`agency_id`) REFERENCES `Agency` (`agency_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Rescue_ibfk_4` FOREIGN KEY (`situation_id`) REFERENCES `ReportSituation` (`situation_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `RescueEquipment`
--
ALTER TABLE `RescueEquipment`
  ADD CONSTRAINT `RescueEquipment_ibfk_1` FOREIGN KEY (`rescue_id`) REFERENCES `Rescue` (`rescue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RescueEquipment_ibfk_3` FOREIGN KEY (`equipment_transaction`) REFERENCES `EquipmentTransactionType` (`ett_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RescueEquipment_ibfk_5` FOREIGN KEY (`worker_id`) REFERENCES `Worker` (`worker_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RescueEquipment_ibfk_6` FOREIGN KEY (`equipment_list_id`) REFERENCES `EquipmentList` (`list_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `RescueWorkerGroup`
--
ALTER TABLE `RescueWorkerGroup`
  ADD CONSTRAINT `RescueWorkerGroup_ibfk_2` FOREIGN KEY (`rescue_id`) REFERENCES `Rescue` (`rescue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `RescueWorkerGroup_ibfk_3` FOREIGN KEY (`worker_id`) REFERENCES `Worker` (`worker_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Station`
--
ALTER TABLE `Station`
  ADD CONSTRAINT `Station_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `Province` (`province_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Storm`
--
ALTER TABLE `Storm`
  ADD CONSTRAINT `Storm_ibfk_1` FOREIGN KEY (`severity_scale_id`) REFERENCES `SeverityScale` (`scale_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Storm_ibfk_2` FOREIGN KEY (`storm_id`) REFERENCES `StormList` (`storm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Storm_ibfk_5` FOREIGN KEY (`storm_type_id`) REFERENCES `StormType` (`storm_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `StormList`
--
ALTER TABLE `StormList`
  ADD CONSTRAINT `StormList_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `Country` (`country_id`),
  ADD CONSTRAINT `StormList_ibfk_2` FOREIGN KEY (`column_id`) REFERENCES `ColumnStorm` (`column_id`),
  ADD CONSTRAINT `StormList_ibfk_3` FOREIGN KEY (`storm_status`) REFERENCES `StormStatus` (`storm_status`);

--
-- Constraints for table `StormNotification`
--
ALTER TABLE `StormNotification`
  ADD CONSTRAINT `StormNotification_ibfk_3` FOREIGN KEY (`warning_id`) REFERENCES `Warning` (`warning_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `StormNotification_ibfk_4` FOREIGN KEY (`province_id`) REFERENCES `Province` (`province_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Subdistrict`
--
ALTER TABLE `Subdistrict`
  ADD CONSTRAINT `Subdistrict_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `District` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `TrackStorm`
--
ALTER TABLE `TrackStorm`
  ADD CONSTRAINT `TrackStorm_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `Storm` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `TrackStormDate`
--
ALTER TABLE `TrackStormDate`
  ADD CONSTRAINT `TrackStormDate_ibfk_1` FOREIGN KEY (`track_id`) REFERENCES `TrackStorm` (`track_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TrackStormDate_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `Station` (`station_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Warning`
--
ALTER TABLE `Warning`
  ADD CONSTRAINT `Warning_ibfk_3` FOREIGN KEY (`agency_id`) REFERENCES `Agency` (`agency_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Warning_ibfk_4` FOREIGN KEY (`track_id`) REFERENCES `TrackStorm` (`track_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Worker`
--
ALTER TABLE `Worker`
  ADD CONSTRAINT `Worker_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `NameTitle` (`title_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Worker_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `Position` (`position_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
