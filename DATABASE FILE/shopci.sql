-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2023 pada 09.28
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopci`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_description` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_description`, `publication_status`) VALUES
(1, 'Symphony', 'Symphony Desc', 1),
(2, 'Samsung', 'Samsung desc', 1),
(3, 'IPhone', 'IPhone Desc<br>', 1),
(4, 'H&M', 'H&amp;M Desc', 1),
(5, 'Adidas', 'Adidas Desc', 1),
(6, 'Razer', 'Razer Desc', 1),
(7, 'LG', 'LG', 1),
(8, 'Canon', 'Canon', 1),
(9, 'Oppo', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Oppo</span></font>', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL COMMENT 'Published=1,Unpublished=0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `category_description`, `publication_status`) VALUES
(1, 'Computer', 'Computer Desc', 1),
(2, 'Laptop', 'Laptop Desc', 1),
(3, 'Smartphone', 'Smartphone Desc', 1),
(4, 'Smart TV', 'SmartTV Desc', 1),
(5, 'Clothing', 'Clothing Desc  ', 1),
(6, 'Shoes & Sneakers', 'Shoes &amp; Sneakers Desc', 1),
(7, 'Accessories', 'Accessories Desc.', 1),
(8, 'kulkas', 'tersedia kulkas<br>', 1),
(9, 'kamera digital', 'kamera digital', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_password` varchar(32) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_zipcode` varchar(20) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_active` tinyint(4) NOT NULL COMMENT 'Active=1,Unactive=0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_address`, `customer_city`, `customer_zipcode`, `customer_phone`, `customer_country`, `customer_active`) VALUES
(9, 'Christine', 'christine@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '458 Ralph Street', 'DEMO', '12500', '7458450000', 'Afghanistan', 1),
(10, 'Bob Gardin', 'bobg@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '3556 Denver Avenue', 'Miram Loma', '3006', '7850002580', 'Australia', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_option`
--

CREATE TABLE `tbl_option` (
  `option_id` int(11) NOT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_favicon` varchar(100) NOT NULL,
  `site_copyright` varchar(255) NOT NULL,
  `site_contact_num1` varchar(100) NOT NULL,
  `site_contact_num2` varchar(100) NOT NULL,
  `site_facebook_link` varchar(100) NOT NULL,
  `site_twitter_link` varchar(100) NOT NULL,
  `site_google_plus_link` varchar(100) NOT NULL,
  `site_email_link` varchar(100) NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_subtitle` varchar(255) NOT NULL,
  `contact_description` text NOT NULL,
  `company_location` varchar(255) NOT NULL,
  `company_number` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_facebook` varchar(100) NOT NULL,
  `company_twitter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_option`
--

INSERT INTO `tbl_option` (`option_id`, `site_logo`, `site_favicon`, `site_copyright`, `site_contact_num1`, `site_contact_num2`, `site_facebook_link`, `site_twitter_link`, `site_google_plus_link`, `site_email_link`, `contact_title`, `contact_subtitle`, `contact_description`, `company_location`, `company_number`, `company_email`, `company_facebook`, `company_twitter`) VALUES
(1, 'lg0.jpg', 'lg0.jpg', 'Developed By Roin', '081283163498', '081283163498', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.plus.google.com', 'https://www.gmail.com', 'Contact Page', 'Contact Page Subtitle', 'Contact Desc..', 'indonesia', '081283163498', 'https://www.gmail.com', 'https://www.facebook.com', 'https://www.twitter.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` float NOT NULL,
  `actions` varchar(50) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `actions`) VALUES
(10, 9, 11, 16, 178250, 'Pending'),
(11, 10, 12, 17, 23862.5, 'Pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `product_image` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `product_image`) VALUES
(1, 2, 5, 'Product Five', 10000, 1, NULL),
(2, 3, 5, 'Product Five', 10000, 4, NULL),
(3, 3, 3, 'Product Three', 3500, 3, NULL),
(4, 3, 1, 'Product One', 20000, 1, NULL),
(5, 8, 4, 'Product Four', 350000, 1, 'pic3.jpg'),
(6, 9, 4, 'Product Four', 350000, 1, 'pic3.jpg'),
(7, 10, 6, 'Samsung Galaxy S21 Ultra', 155000, 1, 'sm21u.jpg'),
(8, 11, 2, 'Face Covers 3-Pack', 1250, 1, 'feature-pic2.jpg'),
(9, 11, 1, 'Ultraboost DNA Black Python Shoes', 19500, 1, 'feature-pic1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `actions` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_type`, `actions`) VALUES
(1, 'cashon', 'pending'),
(2, 'ssl', 'pending'),
(3, 'cashon', 'pending'),
(4, 'cashon', 'pending'),
(5, 'cashon', 'pending'),
(6, 'cashon', 'pending'),
(7, 'cashon', 'pending'),
(8, 'cashon', 'pending'),
(9, 'cashon', 'pending'),
(10, 'cashon', 'pending'),
(11, 'cashon', 'pending'),
(12, 'cashon', 'pending'),
(13, 'cashon', 'pending'),
(14, 'cashon', 'pending'),
(15, 'cashon', 'pending'),
(16, 'cashon', 'pending'),
(17, 'cashon', 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_short_description` text NOT NULL,
  `product_long_description` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_feature` tinyint(4) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `product_author` int(11) NOT NULL,
  `product_view` int(11) NOT NULL DEFAULT 0,
  `published_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_title`, `product_short_description`, `product_long_description`, `product_image`, `product_price`, `product_quantity`, `product_feature`, `product_category`, `product_brand`, `product_author`, `product_view`, `published_date`, `publication_status`) VALUES
(1, '10', 'Galaxy Z Fold4 5G hadir dengan rangka bodi dan pelindung engsel yang \r\ndibuat menggunakan Armor Aluminum dari Samsung dan Corning Gorilla Glass\r\n Victus+ pada Cover Screen dan bodi belakang.', 'Galaxy Z Fold4 5G', 'samsung1.jpg', 14000, 10, 1, 3, 2, 1, 0, '2017-11-30 14:24:41', 1),
(2, 'Kulkas LG', '                                                                        <h1><span style=\"font-weight: normal;\">Lemari es yang diperkenalkan dalam model GC-L22FTQBL ini merupakan \r\nlemari es pertama LG yang dilengkapi dispenser air dengan UV Nano. \r\nLemari es ini tersedia di berbagai toko elektronik di seluruh Indonesia </span></h1>                                                                ', '                                                                        <h1><span style=\"font-weight: normal;\">Kulkas Multi Pintu LG Ini Ada Dispenser Air Berteknologi UV Nano</span></h1>                                                                ', 'lgkulkas1.jpg', 20000, 2, 1, 8, 7, 1, 0, '2017-11-30 14:29:04', 1),
(3, 'kamera digital Canon', '                                    kamera digital Canon untuk kebutuhan anda berofto<br>                                ', '                                    kamera digital Canon untuk kebutuhan anda berofto                                ', 'canon1.jpg', 8000, 35, 1, 9, 8, 1, 0, '2017-11-30 14:38:25', 1),
(4, '24” N4300 HD HDR Smart TV', '                                    4K UHD TV goes beyond regular FHD with 4x more pixels, offering your eyes the sharp and crisp images they deserve. Now you can see even the small details in the scene.                                ', '24” N4300 HD HDR Smart TV<br>', 'tv1.jpg', 6950000, 7, 1, 4, 2, 1, 0, '2017-11-30 14:38:57', 1),
(6, 'Samsung Galaxy S21 Ultra', 'The highest resolution photos and video on a smartphone', 'Samsung Electronics Co., Ltd. unveiled the Galaxy S21 Ultra, a flagship that pushes the boundaries of what a smartphone can do. The S21 Ultra pulls out all the stops for those who want Samsung’s best-of-the-best with our most advanced pro-grade camera system and our brightest, most intelligent display. It takes productivity and creativity up a notch by bringing the popular S Pen experience to the Galaxy S series for the first time.</span>', 'sm21u.jpg', 155000, 12, 1, 3, 2, 1, 0, '2021-05-12 09:20:39', 1),
(7, 'OPPO A17k ', '&nbsp;Display 6,65 inch \r\n<br>• Detail Prosessor MediaTek Helio G35 \r\n<br>• Kamera utama: 8MP f/2.0, FOV 78°, 4P lens, AF, open-loop focus motor, OIS not supported \r\n<br>• Depan \r\n<br>• 5MP (f/2.2); FOV 76,8°; lensa 3P; AF tidak didukung; OIS tidak didukung \r\n<br>• Baterai 5.000mAh', '&nbsp;Display 6,65 inch \r\n<br>• Detail Prosessor MediaTek Helio G35 \r\n<br>• Kamera utama: 8MP f/2.0, FOV 78°, 4P lens, AF, open-loop focus motor, OIS not supported \r\n<br>• Depan \r\n<br>• 5MP (f/2.2); FOV 76,8°; lensa 3P; AF tidak didukung; OIS tidak didukung \r\n<br>• Baterai 5.000mAh', 'OPPOA17k1.jpg', 1685, 26, 1, 3, 9, 1, 0, '2021-05-12 16:00:39', 1),
(8, 'Galaxy Buds Pro', 'Introducing the New Galaxy Buds Pro', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Our most immersive buds yet deliver powerful studio sound and crystal-clear call quality. Use Intelligent Active Noise Cancellation1 to escape into your music at a moment’s notice. Answer calls with just your voice and let in the sounds that matter most with adjustable ambient sound. Escape and tune in to your own moment of Zen—all with a single tap. Intelligent Active Noise Cancellation gives you the power to adjust your settings based on the world around you, so you always hear what you want to hear.1 Turn it to High on a noisy bus or to Low in a quiet library—no need to change the volume.</span></font>', 'budspro.jpg', 29550, 21, 1, 7, 2, 1, 0, '2021-05-12 16:31:50', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_name` varchar(50) NOT NULL,
  `shipping_email` varchar(100) NOT NULL,
  `shipping_address` text NOT NULL,
  `shipping_city` varchar(100) NOT NULL,
  `shipping_country` varchar(50) NOT NULL,
  `shipping_phone` varchar(20) NOT NULL,
  `shipping_zipcode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `customer_id`, `shipping_name`, `shipping_email`, `shipping_address`, `shipping_city`, `shipping_country`, `shipping_phone`, `shipping_zipcode`) VALUES
(11, 0, 'Christine', 'christinem@gmail.com', '245 Ralph Street', 'Steyr', 'Austria', '7456320000', '12500'),
(12, 0, 'Bob', 'bob@gmail.com', '3556 Denver Avenue', 'Mira Loma', 'Australia', '7458000025', '3006');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `slider_link` varchar(255) NOT NULL,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_title`, `slider_image`, `slider_link`, `publication_status`) VALUES
(1, 'slider', '41.jpg', 'http://localhost/shop/single/5', 1),
(2, 'slider 2', '51.jpg', 'http://localhost/shop/single/5', 1),
(3, 'slider 3', '61.jpg', 'http://localhost/shop/add/slider 3', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` tinyint(4) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role`, `created_time`, `updated_time`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1, '2017-11-13 18:31:36', '2017-11-13 18:31:36'),
(2, 'editor', 'editor@gmail.com', '5aee9dbd2a188839105073571bee1b1f', 2, '2017-11-13 18:31:36', '2017-11-13 18:31:36'),
(3, 'author', 'author@gmail.com', '02bd92faa38aaa6cc0ea75e59937a1ef', 3, '2017-11-13 18:31:36', '2017-11-13 18:31:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Author'),
(3, 'Editor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `tbl_option`
--
ALTER TABLE `tbl_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indeks untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indeks untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indeks untuk tabel `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indeks untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tbl_option`
--
ALTER TABLE `tbl_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
