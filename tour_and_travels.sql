-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2024 at 10:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour_and_travels`
--

-- --------------------------------------------------------

--
-- Table structure for table `adventure_tourism`
--

CREATE TABLE `adventure_tourism` (
  `tourism_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `availability` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adventure_tourism`
--

INSERT INTO `adventure_tourism` (`tourism_id`, `name`, `availability`, `id`) VALUES
(1, 'Trekking', 1, 2),
(2, 'Skiing', 1, 2),
(3, 'Motor Biking', 1, 2),
(4, 'Peak Climbing', 1, 2),
(5, 'Mountain Biking', 1, 2),
(6, 'River Rafting', 1, 2),
(7, 'Horse Safari', 1, 2),
(8, 'Camel Safari', 1, 2),
(9, 'Jeep Safari', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `beach_resorts`
--

CREATE TABLE `beach_resorts` (
  `tourism_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `availability` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beach_resorts`
--

INSERT INTO `beach_resorts` (`tourism_id`, `name`, `availability`, `id`) VALUES
(1, 'The Park Calangute', 1, 3),
(2, 'Neelam the Grand', 1, 3),
(3, 'Hotel Calangute Towers', 1, 3),
(4, 'Alor Holiday Resort', 1, 3),
(5, 'Lazy Lagoon Sarovar Portico Suites', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL,
  `car_name` varchar(50) NOT NULL,
  `car_image` varchar(100) NOT NULL,
  `car_price` varchar(50) NOT NULL,
  `car_seats` varchar(100) NOT NULL,
  `fuel_type` varchar(100) NOT NULL,
  `car_availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `car_name`, `car_image`, `car_price`, `car_seats`, `fuel_type`, `car_availability`) VALUES
(39, 'AMAZE', 'amaze.jpeg', '14000', '5 Seater Sedan Car', 'Diesel', 1),
(40, 'ERTIGA', 'ertiga.jpeg', '12000', '6 Seater Sedan Car', 'Petrol', 1),
(41, 'SWIFT', 'swift.jpeg', '54746', '4 Seater Sedan Car', 'petrol', 1),
(42, 'INNOVA', 'innova.jpeg', '14000', '7 Seater Sedan Car', 'petrol', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_availibility`
--

CREATE TABLE `car_availibility` (
  `availability_id` int(11) NOT NULL,
  `car_id` int(11) DEFAULT NULL,
  `available_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `central_india`
--

CREATE TABLE `central_india` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `central_india`
--

INSERT INTO `central_india` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Madhya Pradesh', 'mp.jpg', 18000.00, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2540, 5),
(2, 'Chattisgarh', 'chhattisgarh.jpg', 15000.00, '4 D/3 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2090, 5);

-- --------------------------------------------------------

--
-- Table structure for table `city_wise`
--

CREATE TABLE `city_wise` (
  `tourism_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `availability` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city_wise`
--

INSERT INTO `city_wise` (`tourism_id`, `name`, `availability`, `id`) VALUES
(1, 'Agra Hotels', 1, 1),
(2, 'Jaipur Hotels', 1, 1),
(3, 'Udaipur Hotels', 1, 1),
(4, 'Manali Hotels', 1, 1),
(5, 'Ladakh Hotels', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `dest` varchar(255) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `phone`, `email`, `state`, `dest`, `message`) VALUES
('aaaaaa', '1111111111111', 'fff@ggg', 'up', '', 'jghfjghkhjk'),
('aaaaaa', '1111111111111', 'fff@ggg', 'up', 'gfdhf', 'ggggggggggg'),
('aaaaaa', '1111111111111', 'fff@ggg', 'up', 'gfdhf', 'lllllll'),
('aaaaaa', '1111111111111', 'fff@ggg', 'up', 'gfdhf', 'uuuuuu'),
('aaaaaa', '1111111111111', 'fff@ggg', 'up', 'gfdhf', 'lllllllll'),
('aaaaaa', '1111111111111', 'fff@ggg', 'up', 'gfdhf', 'bbbbbbbb'),
('aaaaaa', '1111111111111', 'fff@ggg', 'up', 'gfdhf', 'vvvvv'),
('Anand', '8299026255', 'anand@gmail.com', 'UP', 'Goa', 'NIce place to visit'),
('Shubham', '111111', 'aaaa@gggg', 'qw', 'ghkll', 'hgkhjk,mnbvvvvvvvvvvvvvvvkji');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `destination_id` int(11) NOT NULL,
  `region` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `num_of_places` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`destination_id`, `region`, `link`, `image_url`, `description`, `num_of_places`) VALUES
(1, 'North India', 'north_india', 'north.jpg', 'Home to the Taj Mahal...', 5),
(2, 'South India', 'south_india', 'south.jpg', 'A hill station in Kerala...', 3),
(3, 'East India', 'east_india', 'east.jpg', 'Known for its tea gardens...', 4),
(4, 'West India', 'west_india', 'west.jpg', 'The Pink City of Rajasthan...', 6),
(5, 'Central India', 'central_india', 'central.jpg', 'Famous for its temples...', 2),
(6, 'Union Terriotories', 'union_terriotories', 'north.jpg', 'Famous for its location', 7);

-- --------------------------------------------------------

--
-- Table structure for table `east_india`
--

CREATE TABLE `east_india` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `east_india`
--

INSERT INTO `east_india` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Arunachal Pradesh', 'arunachal.jpg', 18000.00, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2540, 3),
(2, 'Sikkim', 'sikkim.jpeg', 15000.00, '4 D/3 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2090, 3),
(3, 'Assam', 'assam.jpeg', 22000.00, '7 D/7 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2243, 3),
(4, 'Nagaland', 'nagaland.jpg', 16000.00, '5 D/5 N', '5 star accommodation', 'transportation', 'food facilities', 1, 5433, 3),
(5, 'Meghalaya', 'meghalaya.jpeg', 22000.00, '10 D/9 N', '5 star accommodation', 'transportation', 'food facilities', 1, 3221, 3),
(6, 'West Bengal', 'bengal.jpeg', 25000.00, '6 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 1988, 3);

-- --------------------------------------------------------

--
-- Table structure for table `holiday_ideas`
--

CREATE TABLE `holiday_ideas` (
  `id` int(11) NOT NULL,
  `tourism` varchar(250) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `holiday_ideas`
--

INSERT INTO `holiday_ideas` (`id`, `tourism`, `link`) VALUES
(1, 'Tourism Destinations', 'tourism_destinations'),
(2, 'Adventure Tourism', 'adventure_tourism'),
(3, 'Pilgrimage Tourism', 'pilgrimage_tourism');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `hotel_image` varchar(100) NOT NULL,
  `hotel_price` int(11) NOT NULL,
  `hotel_destination` varchar(100) NOT NULL,
  `hotel_location` varchar(100) NOT NULL,
  `hotel_address` varchar(200) NOT NULL,
  `hotel_phone` int(11) NOT NULL,
  `hotel_email` varchar(50) NOT NULL,
  `hotel_availability` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`hotel_id`, `hotel_name`, `hotel_image`, `hotel_price`, `hotel_destination`, `hotel_location`, `hotel_address`, `hotel_phone`, `hotel_email`, `hotel_availability`) VALUES
(9, 'TAJ HOTEL', 'taj.jpg', 1500, 'West', 'Mumbai', 'Bandra', 1245454255, 'jndskbdh@dnsdn.com', 1),
(12, 'OBEROI', 'oberoi.jpeg', 2000, 'East', 'Arunachal Pradesh', 'GGGGGGG', 154454548, 'taj@vns.com', 1),
(14, 'JASAL', 'varanasi.jpeg', 2000, 'North', 'Uttar Pradesh', 'Varanasi', 15454454, 'aaaa@ggg.v', 1),
(15, 'LOTUS', 'goa.jpeg', 2500, 'West', 'Goa', 'saranath, varanasi', 2147483647, 'lotus@sarnath.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `luxury_hotels`
--

CREATE TABLE `luxury_hotels` (
  `tourism_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `availability` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `luxury_hotels`
--

INSERT INTO `luxury_hotels` (`tourism_id`, `name`, `availability`, `id`) VALUES
(1, 'Aman-i-Khas, Ranthambore', 1, 4),
(2, 'Hyatt, Bangalore', 1, 4),
(3, 'Hyatt Regency, Delhi', 1, 4),
(4, 'Leela Palace, Udaipur', 1, 4),
(5, 'ITC Grand Chola, Chennai', 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `north_india`
--

CREATE TABLE `north_india` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `north_india`
--

INSERT INTO `north_india` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(2, 'Uttar Pradesh', 'up.jpeg', 15000.00, '4 D/3 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2090, 1),
(3, 'Uttrakhand', 'uk.jpg', 22000.00, '7 D/7 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2243, 1),
(4, 'Himachal Pradesh', 'hp.jpeg', 16000.00, '5 D/5 N', '5 star accommodation', 'transportation', 'food facilities', 1, 5433, 1),
(5, 'Punjab', 'punjab.jpeg', 22000.00, '10 D/9 N', '5 star accommodation', 'transportation', 'food facilities', 1, 3221, 1),
(6, 'Delhi', 'delhi.jpg', 25000.00, '6 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 1988, 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Mumbai', 'mumbai.jpg', 18000.00, '5 D/6 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0),
(2, 'Goa', 'goa.jpg', 15000.00, '4 D/3 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0),
(3, 'Manali', 'manali.jpg', 22000.00, '7 D/7 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0),
(4, 'Shimla', 'shimla', 16000.00, '5 D/5 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0),
(5, 'Haridwar-Rishikesh', 'rishikesh.jpg', 22000.00, '10 D/9 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0),
(6, 'Kedarnath-Badrinath', 'kedarnath.webp', 25000.00, '6 D/6 N', '5 star accommodation', 'Transportation', 'Food facilities', 1, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pilgrimage_tourism`
--

CREATE TABLE `pilgrimage_tourism` (
  `tourism_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `availability` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pilgrimage_tourism`
--

INSERT INTO `pilgrimage_tourism` (`tourism_id`, `name`, `availability`, `id`) VALUES
(1, 'Hindu', 1, 3),
(2, 'Sikh', 1, 3),
(3, 'Christianity', 1, 3),
(4, 'Buddhism', 1, 3),
(5, 'Jain', 1, 3),
(6, 'Muslim', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `places_to_stay`
--

CREATE TABLE `places_to_stay` (
  `id` int(11) NOT NULL,
  `tourism` varchar(250) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `places_to_stay`
--

INSERT INTO `places_to_stay` (`id`, `tourism`, `link`) VALUES
(1, 'City Wise', 'city_wise'),
(2, 'Wildlife Resorts', 'wildlife_resorts'),
(3, 'Beach Resorts', 'beach_resorts'),
(4, 'Luxury Hotels', 'luxury_hotels');

-- --------------------------------------------------------

--
-- Table structure for table `registration_form`
--

CREATE TABLE `registration_form` (
  `user` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `destination_region` varchar(100) NOT NULL,
  `destination_place` varchar(100) NOT NULL,
  `travel_date` date NOT NULL,
  `duration` int(11) NOT NULL,
  `male` int(11) NOT NULL,
  `female` int(11) NOT NULL,
  `child` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration_form`
--

INSERT INTO `registration_form` (`user`, `name`, `email`, `contact`, `destination_region`, `destination_place`, `travel_date`, `duration`, `male`, `female`, `child`) VALUES
(5, 'taj', 'taj@vns.in', 12545415, 'Northern', 'Uttar Pradesh', '2002-01-01', 5, 5, 5, 5),
(6, 'taj', 'taj@vns.in', 12545415, 'Northern', 'Jammu And Kashmir', '2002-01-01', 5, 5, 5, 5),
(7, 'taj2', 'taj@vns.in', 12545415, 'Northern', 'Jammu And Kashmir', '2024-01-21', 5, 5, 5, 5),
(8, 'taj8', 'taj@vns.com', 2147483647, 'Northern', 'Uttar Pradesh', '2024-01-26', 10, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `south_india`
--

CREATE TABLE `south_india` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `south_india`
--

INSERT INTO `south_india` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Telangana', 'telangana.jpeg', 18000.00, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2540, 2),
(2, 'Andhra Pradesh', 'andhra.jpeg', 15000.00, '4 D/3 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2090, 2),
(3, 'Kerala', 'kerala.jpeg', 22000.00, '7 D/7 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2243, 2),
(4, 'Karnataka', 'karnataka.jpeg', 16000.00, '5 D/5 N', '5 star accommodation', 'transportation', 'food facilities', 1, 5433, 2),
(5, 'Tamil Nadu', 'tamilnadu.jpeg', 22000.00, '10 D/9 N', '5 star accommodation', 'transportation', 'food facilities', 1, 3221, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tourism_destinations`
--

CREATE TABLE `tourism_destinations` (
  `tourism_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `availability` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tourism_destinations`
--

INSERT INTO `tourism_destinations` (`tourism_id`, `name`, `availability`, `id`) VALUES
(1, 'Wildlife', 1, 1),
(2, 'Hill Station', 1, 1),
(3, 'Beaches\r\n', 1, 1),
(4, 'Yoga and Ayurveda', 1, 1),
(5, 'Heritage', 1, 1),
(6, 'Honeymoon', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `union_terriotories`
--

CREATE TABLE `union_terriotories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `union_terriotories`
--

INSERT INTO `union_terriotories` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Jammu and Kashmir', 'jk.jpg', 18000, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2540, 6),
(2, 'Andaman and Nicobar Islands', 'andaman.jpg', 25000, '6 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 1988, 6),
(3, 'Daman and Diu', 'shimla', 16000, '5 D/5 N', '5 star accommodation', 'transportation', 'food facilities', 1, 5433, 6),
(4, 'Dadra and Nagar Haveli', 'rishikesh.jpg', 22000, '10 D/9 N', '5 star accommodation', 'transportation', 'food facilities', 1, 3221, 6),
(5, 'Chandigarh', 'jk.jpg', 14000, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2356, 6),
(6, 'Pondicherry', 'jk.jpg', 17300, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 1236, 6),
(7, 'Ladakh', 'jk.jpg', 15000, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 4564, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password_hash`) VALUES
(9, 'user1admin@gmail.com', '3KYybVYZP4poY0OkhicOZkN5enNvbThrM0ZFaTYwV3Jqc3h5NWc9PQ%3D%3D'),
(10, 's2s@gmail.com', 'pTN3YwWrVzvg8zSQNncmLzRQT2o1VXhSL0dKRmY0YTVkWGNBQnc9PQ%3D%3D'),
(11, 'anand@gmail.com', 'ucIo65Z%2B%2FfxJOzkjUtb340tkQU4wVlNVUFB4bGtxQ1dTVHlKakE9PQ%3D%3D'),
(12, 'anand@gmail.com', 'NTVYBBUxDrV7h62iI0KxdTRVZ1ZDMnk1K1cyVDZJUmgvb3R2MkE9PQ%3D%3D');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `data_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`data_id`, `user_id`, `name`, `email`, `phone`, `dob`, `address`) VALUES
(9, 9, 'useradmin', 'user1admin@gmail.com', '8427984625', '2002-01-01', 'Varanasi'),
(10, 10, 'ss', 's2s@gmail.com', '6578945236', '2024-03-05', 'jghlghf hgygkuhiu'),
(11, 11, 'Anand', 'anand@gmail.com', '7777777777', '2024-03-18', 'jjjjjjjj'),
(12, 12, 'anand', 'anand@gmail.com', '22222222', '2024-04-01', 'vshgsfjgd');

-- --------------------------------------------------------

--
-- Table structure for table `west_india`
--

CREATE TABLE `west_india` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `accommodation` varchar(255) NOT NULL,
  `transportation` varchar(255) NOT NULL,
  `food_facilities` varchar(255) NOT NULL,
  `availability` int(11) NOT NULL,
  `reviews_count` int(11) NOT NULL,
  `destination_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `west_india`
--

INSERT INTO `west_india` (`id`, `name`, `image`, `price`, `duration`, `accommodation`, `transportation`, `food_facilities`, `availability`, `reviews_count`, `destination_id`) VALUES
(1, 'Maharashtra', 'mumbai.jpg', 18000.00, '5 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2540, 4),
(2, 'Goa', 'goa.jpg', 15000.00, '4 D/3 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2090, 4),
(3, 'Gujarat', 'manali.jpg', 22000.00, '7 D/7 N', '5 star accommodation', 'transportation', 'food facilities', 1, 2243, 4),
(6, 'Rajasthan', 'kedarnath.webp', 25000.00, '6 D/6 N', '5 star accommodation', 'transportation', 'food facilities', 1, 1988, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wildlife_resorts`
--

CREATE TABLE `wildlife_resorts` (
  `tourism_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `availability` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wildlife_resorts`
--

INSERT INTO `wildlife_resorts` (`tourism_id`, `name`, `availability`, `id`) VALUES
(1, 'Ranthambore National Park', 1, 2),
(2, 'Bandhavgarh National Park', 1, 2),
(3, 'Corbett National Park', 1, 2),
(4, 'Kanha National Park', 1, 2),
(5, 'Pench National Park', 1, 2),
(6, 'Tadoba National Park', 1, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adventure_tourism`
--
ALTER TABLE `adventure_tourism`
  ADD PRIMARY KEY (`tourism_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `beach_resorts`
--
ALTER TABLE `beach_resorts`
  ADD PRIMARY KEY (`tourism_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `car_availibility`
--
ALTER TABLE `car_availibility`
  ADD PRIMARY KEY (`availability_id`),
  ADD KEY `car_id` (`car_id`);

--
-- Indexes for table `central_india`
--
ALTER TABLE `central_india`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `city_wise`
--
ALTER TABLE `city_wise`
  ADD PRIMARY KEY (`tourism_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`destination_id`);

--
-- Indexes for table `east_india`
--
ALTER TABLE `east_india`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `holiday_ideas`
--
ALTER TABLE `holiday_ideas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `luxury_hotels`
--
ALTER TABLE `luxury_hotels`
  ADD PRIMARY KEY (`tourism_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `north_india`
--
ALTER TABLE `north_india`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pilgrimage_tourism`
--
ALTER TABLE `pilgrimage_tourism`
  ADD PRIMARY KEY (`tourism_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `places_to_stay`
--
ALTER TABLE `places_to_stay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration_form`
--
ALTER TABLE `registration_form`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `south_india`
--
ALTER TABLE `south_india`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `tourism_destinations`
--
ALTER TABLE `tourism_destinations`
  ADD PRIMARY KEY (`tourism_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `union_terriotories`
--
ALTER TABLE `union_terriotories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`data_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `west_india`
--
ALTER TABLE `west_india`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination_id` (`destination_id`);

--
-- Indexes for table `wildlife_resorts`
--
ALTER TABLE `wildlife_resorts`
  ADD PRIMARY KEY (`tourism_id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adventure_tourism`
--
ALTER TABLE `adventure_tourism`
  MODIFY `tourism_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `beach_resorts`
--
ALTER TABLE `beach_resorts`
  MODIFY `tourism_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `car_availibility`
--
ALTER TABLE `car_availibility`
  MODIFY `availability_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `central_india`
--
ALTER TABLE `central_india`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city_wise`
--
ALTER TABLE `city_wise`
  MODIFY `tourism_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `destination_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `east_india`
--
ALTER TABLE `east_india`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `holiday_ideas`
--
ALTER TABLE `holiday_ideas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `luxury_hotels`
--
ALTER TABLE `luxury_hotels`
  MODIFY `tourism_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `north_india`
--
ALTER TABLE `north_india`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pilgrimage_tourism`
--
ALTER TABLE `pilgrimage_tourism`
  MODIFY `tourism_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `places_to_stay`
--
ALTER TABLE `places_to_stay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registration_form`
--
ALTER TABLE `registration_form`
  MODIFY `user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `south_india`
--
ALTER TABLE `south_india`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tourism_destinations`
--
ALTER TABLE `tourism_destinations`
  MODIFY `tourism_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `union_terriotories`
--
ALTER TABLE `union_terriotories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `data_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `west_india`
--
ALTER TABLE `west_india`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wildlife_resorts`
--
ALTER TABLE `wildlife_resorts`
  MODIFY `tourism_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adventure_tourism`
--
ALTER TABLE `adventure_tourism`
  ADD CONSTRAINT `adventure_tourism_ibfk_1` FOREIGN KEY (`id`) REFERENCES `holiday_ideas` (`id`);

--
-- Constraints for table `beach_resorts`
--
ALTER TABLE `beach_resorts`
  ADD CONSTRAINT `beach_resorts_ibfk_1` FOREIGN KEY (`id`) REFERENCES `places_to_stay` (`id`);

--
-- Constraints for table `car_availibility`
--
ALTER TABLE `car_availibility`
  ADD CONSTRAINT `car_availibility_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `cars` (`car_id`);

--
-- Constraints for table `central_india`
--
ALTER TABLE `central_india`
  ADD CONSTRAINT `central_india_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`);

--
-- Constraints for table `city_wise`
--
ALTER TABLE `city_wise`
  ADD CONSTRAINT `city_wise_ibfk_1` FOREIGN KEY (`id`) REFERENCES `places_to_stay` (`id`);

--
-- Constraints for table `east_india`
--
ALTER TABLE `east_india`
  ADD CONSTRAINT `east_india_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`);

--
-- Constraints for table `luxury_hotels`
--
ALTER TABLE `luxury_hotels`
  ADD CONSTRAINT `luxury_hotels_ibfk_1` FOREIGN KEY (`id`) REFERENCES `places_to_stay` (`id`);

--
-- Constraints for table `north_india`
--
ALTER TABLE `north_india`
  ADD CONSTRAINT `north_india_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`);

--
-- Constraints for table `pilgrimage_tourism`
--
ALTER TABLE `pilgrimage_tourism`
  ADD CONSTRAINT `pilgrimage_tourism_ibfk_1` FOREIGN KEY (`id`) REFERENCES `holiday_ideas` (`id`);

--
-- Constraints for table `south_india`
--
ALTER TABLE `south_india`
  ADD CONSTRAINT `south_india_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`);

--
-- Constraints for table `tourism_destinations`
--
ALTER TABLE `tourism_destinations`
  ADD CONSTRAINT `tourism_destinations_ibfk_1` FOREIGN KEY (`id`) REFERENCES `holiday_ideas` (`id`);

--
-- Constraints for table `user_data`
--
ALTER TABLE `user_data`
  ADD CONSTRAINT `user_data_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `west_india`
--
ALTER TABLE `west_india`
  ADD CONSTRAINT `west_india_ibfk_1` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`destination_id`);

--
-- Constraints for table `wildlife_resorts`
--
ALTER TABLE `wildlife_resorts`
  ADD CONSTRAINT `wildlife_resorts_ibfk_1` FOREIGN KEY (`id`) REFERENCES `places_to_stay` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
