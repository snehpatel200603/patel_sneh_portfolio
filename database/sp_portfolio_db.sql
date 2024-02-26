-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 26, 2024 at 09:43 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp_portfolio_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `user_id` int(255) UNSIGNED NOT NULL,
  `user_firstname` varchar(100) NOT NULL,
  `user_lastname` varchar(100) NOT NULL,
  `user_email` varchar(200) NOT NULL,
  `user_comments` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`user_id`, `user_firstname`, `user_lastname`, `user_email`, `user_comments`, `time`) VALUES
(1, 'Sneh', 'Patel', 'snehp191@gmail.com', 'test-1', '2024-02-23 01:35:44'),
(2, 'Sneh', 'Patel', 'snehp191@gmail.com', 'test-2', '2024-02-23 19:01:48'),
(3, 'Sneh', 'Patel', 'snehp191@gmail.com', 'test-3', '2024-02-24 01:43:35'),
(4, 'Sneh', 'Patel', 'snehp191@gmail.com', 'test-4', '2024-02-26 19:13:33'),
(5, 'Sneh', 'Patel', 'snehp191@gmail.com', 'test-5', '2024-02-26 20:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(100) NOT NULL,
  `project_id` int(100) DEFAULT NULL,
  `image_filename` varchar(250) NOT NULL,
  `project_description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `project_id`, `image_filename`, `project_description`) VALUES
(1, 1, 'image1a.png', 'Industry Night is a premier online platform designed to bring together professionals from various sectors of the industry, creating a vibrant and dynamic community where ideas flourish, and opportunities abound. It serves as a nexus for thought leaders, innovators, and experts who are eager to share their knowledge, explore new trends, and foster meaningful connections. In this digital agora, members can engage in discussions, participate in webinars, and access a wealth of resources tailored to their specific field, making it an invaluable tool for career development and business growth.\n\n\n\n\n'),
(2, 1, 'image1b.png', 'The website\'s intuitive design and advanced features facilitate seamless networking, allowing users to easily discover and connect with like-minded individuals who share their passions and professional interests. Whether it\'s through industry-specific forums, direct messaging, or virtual networking events, Industry Night ensures that every interaction is an opportunity to learn, collaborate, and expand one\'s professional network. By fostering an environment of collaboration and support, it empowers its members to surpass their goals and achieve new heights of success in their careers.\r\n\r\n\r\n\r\n'),
(3, 1, 'image1c.png', 'Beyond networking, Industry Night is committed to enhancing the professional development of its members. It offers a curated selection of training modules, insightful articles, and the latest industry news, keeping its community informed and ahead of the curve. The platform\'s dedication to creating a holistic environment where professionals can grow, network, and thrive positions it as a cornerstone of industry innovation and a catalyst for creating lasting, impactful connections. As the digital landscape continues to evolve, Industry Night remains at the forefront, shaping the future of professional networking and industry collaboration.'),
(4, 2, 'image2a.png', 'In an ambitious endeavor that bridges the gap between web development and the expansive universe of Star Wars, a developer has embarked on creating an AJAX-based project that taps into the Star Wars API (SWAPI) to fetch and display information about characters (people) from the iconic film series. This innovative project allows fans and users to explore the depths of the Star Wars galaxy, providing insights into the characters\' backgrounds, their roles in the various movies, and the films they appear in. By leveraging AJAX for asynchronous requests, the application ensures a seamless and dynamic user experience, allowing for real-time data retrieval without the need for page refreshes.\r\n\r\n'),
(5, 2, 'image2b.png', 'The application\'s core functionality revolves around its ability to interact with the SWAPI, extracting detailed information about each character, including names, species, and their filmography within the Star Wars saga. Users can navigate through a list of characters, select their favorites, and retrieve a comprehensive list of films each character has appeared in. This not only enhances the user\'s engagement with the content but also serves as an educational tool, deepening the user\'s understanding of the Star Wars narrative and its complex web of characters.\r\n\r\n\r\n\r\n\r\n\r\n'),
(6, 2, 'image2c.png', 'Beyond its appeal to Star Wars enthusiasts, this project showcases the power of combining modern web technologies with creative content delivery. It demonstrates the developer\'s proficiency in AJAX, JavaScript, and API integration, while offering a unique platform for interactive learning and exploration of one of the most beloved franchises in film history. As the digital landscape continues to evolve, projects like these exemplify how APIs can be harnessed to create engaging and informative web applications that resonate with users and fans across the globe.'),
(7, 3, 'image3a.png', 'In the realm of web development, the creation of a puzzle game stands as a testament to the versatility and interactivity that JavaScript can bring to web applications. This particular puzzle assignment leverages the full potential of JavaScript, offering users a dynamic and engaging experience as they navigate through various puzzles. The game\'s design allows for the pieces of the puzzle to be moved and rearranged, presenting a challenge that is both fun and mentally stimulating. With its user-friendly interface, the puzzle game not only captivates users but also enhances their problem-solving skills and attention to detail.'),
(8, 3, 'image3b.png', 'The uniqueness of this puzzle game lies in its ability to switch between different puzzles, providing a variety of challenges that cater to different skill levels and interests. This feature enriches the user experience by offering diversity and replayability, ensuring that users remain engaged and entertained. The application\'s aesthetic appeal is carefully crafted through thoughtful design and implementation, making the visual experience of solving puzzles as enjoyable as the intellectual challenge. JavaScript\'s capabilities are harnessed to ensure smooth transitions, responsive design, and interactive elements that respond intuitively to user inputs.'),
(9, 3, 'image3c.png', 'Beyond being a source of entertainment, this puzzle game serves as an exemplary showcase of modern web development practices. It highlights how JavaScript, when used effectively, can create interactive and visually appealing web applications. The project not only reflects the developer\'s proficiency in coding and design but also their ability to think creatively in solving user engagement challenges. As web technologies continue to evolve, projects like this puzzle game exemplify the innovative ways developers can create compelling content that stands out in the digital landscape.');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `image_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `title`, `description`, `image_url`) VALUES
(1, 'Industry Night', 'Beats earbuds are a premium line of in-ear audio devices known for their sleek design and signature sound quality. They typically offer a robust bass response and a clear, dynamic range of sound, catering to music enthusiasts who appreciate depth and clarity in their audio experience. These earbuds are often wireless, providing a convenient, cord-free listening experience with a reliable Bluetooth connection. With comfortable and secure-fitting options, they are designed for an active lifestyle, ensuring they stay in place during various activities. Additionally, Beats earbuds often come with features such as noise-cancellation, integrated microphones for calls and voice assistance, and a long-lasting battery life, making them a versatile choice for both music and calls on the go.\r\n\r\n\r\n\r\n\r\n\r\n', 'project1_thumb.png'),
(2, 'starwars - AJAX', 'A developer has created a captivating AJAX-based web project that utilizes the Star Wars API to present detailed information on characters from the Star Wars films, including their appearances across the saga. This project not only enriches the fan experience by providing a deep dive into the characters\' filmography but also highlights the developer\'s skills in AJAX, JavaScript, and API usage, setting a precedent for innovative and interactive web applications.\r\n\r\n\r\n\r\n\r\n\r\n', 'project2_thumb.png'),
(3, 'Puzzele', 'This JavaScript-based puzzle game exemplifies the engaging and interactive potential of web development, offering users a dynamic experience with the ability to switch between puzzles. Its design focuses on user engagement, problem-solving, and aesthetic appeal, demonstrating the developer\'s expertise in leveraging JavaScript for creating compelling and interactive web applications. The project stands as a creative showcase of modern web technologies and innovative design, enhancing the digital entertainment experience.\r\n\r\n\r\n\r\n', 'project3_thumb.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `user_id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
