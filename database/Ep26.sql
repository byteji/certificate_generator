-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2018 at 06:55 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `sub_title` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `status` enum('true','false') NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `subject`, `sub_title`, `detail`, `image`, `tag`, `status`, `updated_at`, `created_at`) VALUES
(1, 'HTML คืออะไร', 'ภาษาหลักที่ใช้ในการเขียนเว็บเพจ โดยใช้ tag ในการกำหนดการแสดงผล', '<h2><strong>HTML คืออะไร</strong></h2>\r\n\r\n                <p><strong>HTML5</strong>&nbsp;คือ ภาษามาร์กอัป ที่ใช้สำหรับเขียน website &nbsp;ซึ่ง&nbsp;HTML5&nbsp;นี้เป็นภาษาที่ถูกพัฒนาต่อมาจากภาษา HTML และพัฒนาขึ้นมาโดย WHATWG (The Web Hypertext Application Technology Working Group) โดยได้มีการปรับเพิ่ม Feature หลายๆอย่างเข้ามาเพื่อให้ผู้พัฒนาสามารถใช้งานได้ง่ายมากยิ่งขึ้น</p>\r\n                \r\n                <h2>ข้อดีของ HTML5</h2>\r\n                \r\n                <ol>\r\n                    <li>เว็บไซต์ที่สร้างจากภาษา&nbsp;<strong>HTML5&nbsp;</strong>สามารถแสดงผลได้กับทุก web browser&nbsp;</li>\r\n                    <li><strong>HTML5&nbsp;</strong>จะช่วยลดการใช้พวกปลั๊กอินพิเศษอย่างพวก Adobe Flash, Microsoft Silverlight, Apache Pivot สนับสนุน วิดีโอ และ องค์ประกอบเสียง รวมทั้ง สื่อมัลติมีเดียต่างๆมากขึ้น โดยไม่ต้องใช้ Flash</li>\r\n                    <li>มีการจัดการข้อผิดพลาดที่ดีขึ้น</li>\r\n                    <li>สคริปต์ใหม่ ที่จะมาแทนที่สคริปต์เดิม (เขียนโค้ดสั้นลง)</li>\r\n                    <li><strong>HTML5&nbsp;</strong>มีความเป็นอิสระสูง (คล้ายๆ XML )</li>\r\n                    <li><strong>HTML5&nbsp;</strong>ทำงานควบคู่กับ CSS3 ได้ดี ช่วยให้สามารถเพิ่มลูกเล่นต่างๆบนเว็บไซต์ได้สวยงามมากยิ่งขึ้น (CSS คือส่วนแสดงผล ที่นักออกแบบสามารถกำหนดสีสัน ตำแหน่ง ลักษณะเวลานำเมาส์ไปแหย่แล้วมีกระต่ายโผล่ออกมาจากโพรง หรือจับก้อนวัตถุในหน้าเว็บฯ ให้ชิดซ้ายชิดขวา ส่วน CSS3 คือเวอร์ชั่นที่ 3 ของ CSS )</li>\r\n                </ol>\r\n                \r\n                <h2>Features ใหม่ๆ ของ HTML5</h2>\r\n                \r\n                <ol>\r\n                    <li>Semantic Markup : การเพิ่ม Element ที่ อ่านง่ายมากขึ้น และช่วยให้ เราทำ SEO ได้มีประสิทธิภาพมากยิ่งขึ้น</li>\r\n                    <li>Form Enhancements : เพิ่มความสามารถของ Form ต่างๆ ไม่ว่าจะเป็น Input type, Attribute หรือ แม้แต่ Element</li>\r\n                    <li>Audio / Video: รองรับการอ่านไฟล์เสียง และ วีดีโอ โดยไม่จำเป็นต้องใช้ Embed Code ของ Third Party</li>\r\n                    <li>Canvas : ใช้ในการวาดรูป โดยจำเป็นต้องใช้ Javascriptช่วย</li>\r\n                    <li>ContentEditable : สามารถแก้ไข Content ได้โดยตรงผ่านทางหน้าเว็บ</li>\r\n                    <li>Drag and Drop : ลากวางObject ได้ เพื่อเพิ่มการ ตอบสนองระหว่างระบบกับผู้ใช้</li>\r\n                    <li>Persistent Data Storage : มีการจัดการที่ดีขึ้น โดยเก็บข้อมูลลงบนเครื่องของผู้ใช้&nbsp;</li>\r\n                </ol>', 'html.jpg', 'all,html', 'true', '2018-05-19 00:00:00', '2018-05-19 00:00:00'),
(2, 'CSS คืออะไร', 'css คือการจัดตกแต่งเว็บไซต์ให้สวยงาม', 'CSS คืออะไร ? มีประโยชน์อย่างไรบ้าง\r\n\r\n       การจัดทำเว็บไซต์ที่มีประสิทธิภาพต้องมีการวางแผนและการออกแบบระบบที่ดี  โดยในยุคแรก ๆ จะใช้ภาษา HTML ในการจัดทำระบบการแสดงผลทางด้านโครงสร้างและข้อมูลของเว็บ  แต่ปัจจุบันมีการพัฒนามาจนถึง HTML5  และยังมีการพัฒนาภาษาที่ใช้เพื่อกำหนดรูปแบบการแสดงผลทางหน้าเว็บไซต์ที่หลากหลายและมีความยืดหยุ่น  เช่น สีอักษร สีพิ้นหลัง ขนาดตัวอักษร จัดการเลย์เอ้าท์ ให้สวยงามและอื่นๆ ซึ่งนั้นก็คือ CSS หรือ Style Sheets และในความหมายของทางโปรแกรมเมอร์นั้น คือ โครงสร้างการแสดงผลของหน้าตาเว็บไซต์ \r\n\r\nCSS คืออะไร \r\n        CSS ย่อมาจาก Cascading Style Sheet  มักเรียกโดยย่อว่า \"สไตล์ชีต\" คือภาษาที่ใช้เป็นส่วนของการจัดรูปแบบการแสดงผลเอกสาร  HTML โดยที่ CSS กำหนดกฏเกณฑ์ในการระบุรูปแบบ (หรือ \"Style\") ของเนื้อหาในเอกสาร อันได้แก่ สีของข้อความ สีพื้นหลัง ประเภทตัวอักษร และการจัดวางข้อความ ซึ่งการกำหนดรูปแบบ หรือ Style นี้ใช้หลักการของการแยกเนื้อหาเอกสาร HTML ออกจากคำสั่งที่ใช้ในการจัดรูปแบบการแสดงผล กำหนดให้รูปแบบของการแสดงผลเอกสาร ไม่ขึ้นอยู่กับเนื้อหาของเอกสาร เพื่อให้ง่ายต่อการจัดรูปแบบการแสดงผลลัพธ์ของเอกสาร HTML โดยเฉพาะในกรณีที่มีการเปลี่ยนแปลงเนื้อหาเอกสารบ่อยครั้ง หรือต้องการควบคุมให้รูปแบบการแสดงผลเอกสาร HTML มีลักษณะของความสม่ำเสมอทั่วกันทุกหน้าเอกสารภายในเว็บไซต์เดียวกัน  โดยกฏเกณฑ์ในการกำหนดรูปแบบ (Style) เอกสาร HTML ถูกเพิ่มเข้ามาครั้งแรกใน HTML 4.0  เมื่อปีพ.ศ. 2539 ในรูปแบบของ CSS level 1 Recommendations ที่กำหนดโดย องค์กร World Wide Web Consortium หรือ W3C', 'code.jpg', 'all,css', 'true', '2018-05-19 00:00:00', '2018-05-19 00:00:00'),
(3, 'javascript คืออะไร', 'javascript คือภาษาคอมพิวเตอร์สำหรับการเขียนโปรแกรมบนระบบอินเทอร์เน็ต', 'JavaScript คือ ภาษาคอมพิวเตอร์สำหรับการเขียนโปรแกรมบนระบบอินเทอร์เน็ต ที่กำลังได้รับความนิยมอย่างสูง Java JavaScript เป็น ภาษาสคริปต์เชิงวัตถุ (ที่เรียกกันว่า \"สคริปต์\" (script) ซึ่งในการสร้างและพัฒนาเว็บไซต์ (ใช่ร่วมกับ HTML) เพื่อให้เว็บไซต์ของเราดูมีการเคลื่อนไหว สามารถตอบสนองผู้ใช้งานได้มากขึ้น ซึ่งมีวิธีการทำงานในลักษณะ \"แปลความและดำเนินงานไปทีละคำสั่ง\" (interpret) หรือเรียกว่า อ็อบเจ็กโอเรียลเต็ด (Object Oriented Programming) ที่มีเป้าหมายในการ ออกแบบและพัฒนาโปรแกรมในระบบอินเทอร์เน็ต สำหรับผู้เขียนด้วยภาษา HTML สามารถทำงานข้ามแพลตฟอร์มได้ โดยทำงานร่วมกับ ภาษา HTML และภาษา Java ได้ทั้งทางฝั่งไคลเอนต์ (Client) และ ทางฝั่งเซิร์ฟเวอร์ (Server) ', 'javascript.jpg', 'all,javascript', 'true', '2018-05-25 00:00:00', '2018-05-25 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
