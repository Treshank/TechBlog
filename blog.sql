-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2021 at 12:15 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catID` int(11) NOT NULL,
  `catName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catID`, `catName`) VALUES
(1, 'Programming\r\n'),
(7, 'Networking'),
(9, 'IOT'),
(10, 'Big Data'),
(11, 'Machine Learning and AI'),
(12, 'Web Technologies'),
(13, 'Hardware'),
(14, 'Gaming'),
(15, 'Hardware'),
(16, 'Gaming'),
(17, 'VR/AR'),
(18, 'Quantum Computing');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `postID` int(11) NOT NULL,
  `commentID` int(11) NOT NULL,
  `commentDesc` varchar(500) NOT NULL,
  `commentAuthor` varchar(500) NOT NULL,
  `commentTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`postID`, `commentID`, `commentDesc`, `commentAuthor`, `commentTime`) VALUES
(2, 3, 'yuppy', 'qt', '2015-08-22 12:36:50'),
(2, 4, 'nice :-)', 'qt', '2015-08-22 12:36:59'),
(2, 5, 'nice op you are great !!', 'qt', '2015-08-22 12:37:21'),
(6, 7, 'nice :P', 'qt', '2015-08-22 12:41:19'),
(6, 8, 'cuteee :P', 'qt', '2015-08-22 12:55:13'),
(6, 9, 'Very good line The college has well-established Central Learning resource centers like Central library, Central Computer Centre, Entrepreneurship Development Cell, Continuing Education Centre and Physical Education Section. The college also has a very active Training & Placement section. ', 'qt', '2015-08-22 13:05:11'),
(6, 10, 'My comment', 'qt', '2015-08-22 13:14:45'),
(6, 11, '          Really appriciable _/\\_', 'rtkasodariya', '2015-08-22 13:17:38'),
(0, 12, 'dklvn', 'qt', '2015-08-22 13:34:42'),
(6, 13, '          test comment', 'rtkasodariya', '2015-08-23 08:10:05'),
(6, 14, '          opps', 'rtkasodariya', '2015-08-23 16:30:09'),
(6, 15, '          I am witness', 'qt', '2015-08-30 13:36:24'),
(7, 16, '    Thanks', 'qt', '2015-09-02 08:00:32'),
(7, 17, '          Nice Explanation :-)', 'rtkasodariya', '2015-09-02 08:01:13'),
(2, 18, '          Very well... Good start..', 'rtkasodariya', '2015-09-02 08:05:22'),
(7, 19, 'nice article\r\n', 'admin', '2020-12-31 11:28:10'),
(21, 20, 'Amazing post.. Love it!!!\r\n', 'ram', '2021-01-08 10:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `postid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `userid`, `postid`) VALUES
(29, 1, 7),
(36, 1, 7),
(51, 1, 7),
(52, 1, 7),
(53, 1, 7),
(54, 1, 7),
(55, 1, 7),
(56, 1, 7),
(96, 1, 17),
(102, 1, 2),
(116, 1, 5),
(117, 1, 5),
(118, 1, 5),
(119, 1, 5),
(123, 1, 19),
(125, 1, 6),
(126, 1, 5),
(127, 1, 17),
(128, 1, 5),
(129, 1, 21),
(130, 1, 24),
(131, 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`, `time`) VALUES
(1, ' rtkasodariya', 'kasodariyarajan@gmail.com', 'dfvd', '2015-09-06 20:03:55'),
(2, ' spy_007', 'yashgolechha@ymail.com', 'popat', '2015-09-06 20:03:55'),
(3, ' ', '', '', '2020-12-31 17:34:17'),
(4, ' Treshank', 'test@test.com', 'This is captcha test\r\n', '2020-12-31 17:46:16'),
(5, ' ', '', '', '2020-12-31 17:46:21'),
(6, ' ', '', '', '2020-12-31 17:46:23'),
(7, ' test', 'test@test.com', 'test', '2020-12-31 18:03:16');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(200) NOT NULL,
  `postMini` text NOT NULL,
  `postDesc` varchar(10000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `postAuthor` varchar(40) NOT NULL,
  `likes` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `postTitle`, `postMini`, `postDesc`, `postTime`, `postAuthor`, `likes`, `categoryID`) VALUES
(2, 'op', 'This is dummy description that has no meaning', 'op', '2021-01-01 12:53:01', 'sai', 1, 0),
(6, 'ACM NIT Surat', 'Sardar Vallabhbhai National Institute Of Technology, Surat is one of the 17 Regional Engineering Colleges that were established as joint venture of the Government of India and the Government of Gujarat.', '<p>Sardar Vallabhbhai National Institute Of Technology, Surat is one of the 17 Regional Engineering Colleges that were established as joint venture of the Government of India and the Government of Gujarat. It was established in June 1961 with facilities to run Bachelor&#39;s Degree Programmes in Civil, Electrical and Mechanical Engineering disciplines. It is now changed to National Institute of Technology along with other RECs.&nbsp;<br />\r\n<br />\r\nThe college has now been given the status of Deemed University.&nbsp;<br />\r\n<br />\r\nThe college has well-established Central Learning resource centers like Central library, Central Computer Centre, Entrepreneurship Development Cell, Continuing Education Centre and Physical Education Section. The college also has a very active Training &amp; Placement section.&nbsp;<br />\r\n<br />\r\nThe college has a campus of its own, spread over 100 hectares of land on the Surat-Dumas Highway. The college is progressing with the construction of the buildings of the academic sector. The college is having in all seven hostels, six for boys &amp; one for girls students, accommodating 990 students. The total of 191 units of staff quarters for different categories have been built on the campus. The college has a Canteen, a Students Store, a Dispensary, a Guest House, a Post Office, a branch of the State Bank of India and play ground for some of the major games, viz. Football, Basketball, Volleyball and Cricket.</p>\r\n', '2021-01-08 11:13:16', 'qt', 11, 0),
(7, 'GIVEN', 'This is dummy description that has no meaning', '<p><strong>Problem Statement :&nbsp;</strong><br />\r\nGiven an array of stock prices for each day. We need to find out maximum profit that can be earned by one transaction (Buy and sell only one time).<br />\r\n<strong>Example :&nbsp;</strong><br />\r\nTake an example Stock Prices :&nbsp;<strong>100 &ndash; &nbsp;80 &ndash; 120 &ndash; 130 &ndash; 70 &nbsp;&ndash; 60 &nbsp;&ndash; &nbsp;100 &nbsp;&ndash; &nbsp;125.</strong><br />\r\nSo Buy stock at Rs.&nbsp;<strong>60</strong>&nbsp;and sell it at&nbsp;<strong>125</strong>. Maximum profit is&nbsp;<strong>65</strong>.</p>\r\n\r\n<p><strong>1. Naive Approach :&nbsp;</strong><br />\r\nNaive approach tooks time complexity O(n<sup>2</sup>). In this method buy stock at&nbsp;<strong>i</strong>&nbsp;th day and then check for all&nbsp;<strong>i</strong>&nbsp;to&nbsp;<strong>n</strong>&nbsp;day for maximum stock value.</p>\r\n\r\n<p><strong>Algorithm :</strong></p>\r\n\r\n<p>Function : FindMaximumProfit( StockPrices , N )</p>\r\n\r\n<ol>\r\n	<li>max_profit = -&prop;</li>\r\n	<li>for i = 1 to N</li>\r\n	<li>&nbsp; &nbsp; &nbsp;for j=i to N</li>\r\n	<li>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;max_profit = max( max_profit , a[ j ] &nbsp;&ndash; a[ i ] )</li>\r\n</ol>\r\n\r\n<p><strong>2. Dynamic programming Approach.</strong></p>\r\n\r\n<p style=\"text-align: center;\"><a href=\"https://expcode.files.wordpress.com/2015/08/stock-buy-and-sell1.png\"><img alt=\"Stock - Buy and Sell\" src=\"https://expcode.files.wordpress.com/2015/08/stock-buy-and-sell1.png?w=620\" /></a><br />\r\nThink about each selling possibility. We must sell between day&nbsp;<strong>1</strong>&nbsp;to day&nbsp;<strong>N</strong>. So if we are selling stock at&nbsp;<strong>i</strong>th day we must have bought it when it has lowest prize between days&nbsp;<strong>1</strong>&nbsp;to&nbsp;<strong>i</strong>&nbsp;. Let&rsquo;s think about 3rd day. So assume we are Selling our stock on 3rd day. So we must have bought it between day 1 to day 3 whenever price was lowest. Here lowest is 80 from day 1 to 3. So if we sell Stock on day 3 we can get maximim profit 40.</p>\r\n\r\n<p>This can be stated as below.<br />\r\nMaximim profit if we sell stock on ith day.<br />\r\nMax_profit = StockPrice on&nbsp;<strong>i</strong><sup>th</sup>&nbsp;day(selling price) &ndash; &nbsp;minimum price between day 1 to day i (buying price)</p>\r\n\r\n<p><strong>Algorithm :&nbsp;</strong></p>\r\n\r\n<ol>\r\n	<li>min_buying_price =&nbsp;&prop;</li>\r\n	<li>max_profit &nbsp;= &ndash;&nbsp;&prop;</li>\r\n	<li>for i= 1 to N</li>\r\n	<li>&nbsp; &nbsp; &nbsp;min_buying_price = min( min_buying_price , a[ i ] )</li>\r\n	<li>&nbsp; &nbsp; &nbsp;benifit_if_sell_today &nbsp;= &nbsp;a[ i ] &ndash; min_buying_price</li>\r\n	<li>&nbsp; &nbsp; &nbsp;max_benifit = max(benifit_if_sell_today , max_benifit &nbsp;)</li>\r\n</ol>\r\n\r\n<p><strong>Implementation :&nbsp;</strong></p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p>1</p>\r\n\r\n			<p>2</p>\r\n\r\n			<p>3</p>\r\n\r\n			<p>4</p>\r\n\r\n			<p>5</p>\r\n\r\n			<p>6</p>\r\n\r\n			<p>7</p>\r\n\r\n			<p>8</p>\r\n\r\n			<p>9</p>\r\n\r\n			<p>10</p>\r\n\r\n			<p>11</p>\r\n\r\n			<p>12</p>\r\n\r\n			<p>13</p>\r\n\r\n			<p>14</p>\r\n			</td>\r\n			<td>\r\n			<p><code>int</code> <code>findMaximumProfit(</code><code>int</code> <code>a[] , </code><code>int</code> <code>n) {</code></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>int</code> <code>MIN=INT_MAX;</code></p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>int</code> <code>benifit , max_benifit=INT_MIN;</code></p>\r\n\r\n			<p>&nbsp;</p>\r\n\r\n			<p><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>for</code><code>(</code><code>int</code> <code>i=0;i</code></p>\r\n\r\n			<p><code><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>MIN = min(MIN , a[i]);</code></code></p>\r\n\r\n			<p><code><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>benifit=a[i] - MIN;</code></code></p>\r\n\r\n			<p><code><code>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</code><code>max_benifit=max(benifit , max_benifit);</code></code></p>\r\n\r\n			<p><code>&nbsp;</code></p>\r\n\r\n			<p><code><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>}</code></code></p>\r\n\r\n			<p><code>&nbsp;</code></p>\r\n\r\n			<p><code><code>&nbsp;&nbsp;&nbsp;&nbsp;</code><code>return</code> <code>max_benifit;</code></code></p>\r\n\r\n			<p><code><code>}</code></code></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', '2021-01-01 15:38:17', 'qt', 4, 1),
(16, 'qt1', 'This is dummy description that has no meaning', '<p>qt2</p>\r\n', '2021-01-01 12:53:10', 'qt', 8, 0),
(20, 'dasdad', 'weqe', '<p>qeqwqeweqweqe</p>\r\n', '2021-01-01 18:38:43', 'admin', 0, 1),
(21, '11 reasons to hate the cloud ', 'For software developers and IT, the self-service pay-as-you-go cloud model seems like a dream come true. But then the bill comes due. ', '<p><img alt=\"\" src=\"https://images.techhive.com/images/article/2017/05/storm-clouds-dark-100722099-large.jpg\" style=\"height:525px; width:700px\" /></p>\r\n\r\n<p>When the first price list arrived from the cloud companies, everyone reacted like a kid in a penny candy shop with a $100 bill. There&rsquo;s no reason to devote hours to pondering the advantages and disadvantages when you can just grab a shovel and fill a big laundry bag. Many cloud prices are much less than a penny. How can you go wrong if the price rounds off to zero?</p>\r\n\r\n<p>Those days are long gone. Many of us have already survived dozens of difficult meetings with the bean counters who received the monthly cloud invoice and hit the DEFCON alarm siren. The prices may be low but they add up. So we sit around the table wondering why. Is there some way around that? Is there something we can do?&nbsp; Is there some secret lever we can pull? Some secret dial to turn?</p>\r\n\r\n<h4>[ <u><a href=\"https://www.infoworld.com/article/3596813/why-aws-leads-in-the-cloud.html\">Also on InfoWorld: Why AWS leads in the cloud</a></u> ]</h4>\r\n\r\n<p>Netflix may be the best example of a company that thrives in the cloud. Every Friday and Saturday night, demand starts to skyrocket as people want to relax. Netflix spins up thousands of new instances to handle the load and then gives them up a few hours later when people go to bed. A week has 168 hours but Netflix only pays for their machines in the few hours that their customers need them.</p>\r\n\r\n<p>Not all jobs, though, have such wonderfully distinct peaks and valleys. If you&rsquo;re going to be running your instances 24x7, well, the advantages of the cloud start to fade because the price can be high even after the discounts.</p>\r\n\r\n<div class=\"brVideoContainer\">\r\n<div class=\"outer-wrapper\">&nbsp;</div>\r\n</div>\r\n\r\n<p>Here are 11 reasons for the rest of us to hate the cloud model.</p>\r\n\r\n<h2>Dividing costs is hard</h2>\r\n\r\n<p>If you buy a server, it&rsquo;s all yours and so you pay 100% of the cost. If you want to share a server, well, you&rsquo;ve got to split up the resources. Dividing the costs evenly is something that only works at a restaurant, and even then the people who didn&rsquo;t order alcohol go away miffed.</p>\r\n\r\n<p>Trying to be accurate about cloud costs is surprisingly difficult for a commodity product. Should work at prime time cost the same as background computation that can be interrupted and deferred? What if the utility charges less for electricity at night or maybe on sunny days when the solar farm is flush with electrons? What if one customer wants a service-level agreement but the other is willing to be more relaxed about downtime?</p>\r\n\r\n<p>Cloud companies have tried to guesstimate a price that&rsquo;s low enough to capture the customers&rsquo; attention but high enough to have a decent profit margin. They&rsquo;ve come up with a way to divide the cost of a machine into many thin slices but it doesn&rsquo;t mean they did much more than eyeball it.</p>\r\n\r\n<h2>Modern architectures encourage consumption</h2>\r\n\r\n<p>Mathematicians like to ponder the <a href=\"https://en.wikipedia.org/wiki/Banach%E2%80%93Tarski_paradox\" rel=\"nofollow\">Banach-Tarski paradox</a>, a strange theorem that is better known as the &ldquo;Pea and Sun paradox.&rdquo; It&rsquo;s&nbsp; an algorithmic slight-of-hand by which a pea can be sliced into a finite number of pieces and then be re-assembled to be as big as the Sun. Of course it wouldn&rsquo;t work in the real world, but it all makes sense in the netherworld of topology.</p>\r\n\r\n<p>Sometimes it feels like the cloud encourages the same game. The hot architectural approach to development is to slice up your big single application into dozens or maybe hundreds of different services, each running multiple times as containers juggled by <a href=\"https://www.infoworld.com/article/3268073/what-is-kubernetes-your-next-application-platform.html\">Kubernetes</a>. The good news is that when the load rises, Kubernetes steps in and starts buying new instances to keep everyone happy. The bad news is that no human can follow how many containers or instances are running at any one time. Our knowledge of this is literally cloudy&mdash;at least until the bill comes. What was once a cute little app running on one server is now generating bills as big as the Sun.</p>\r\n\r\n<h2>Free can be expensive</h2>\r\n\r\n<p>We all love free. Giving developers a chance to try out your product for nothing is the best form of marketing around. But at some point someone needs to pay and it&rsquo;s hard to manage that huge step from free to paid. It may just be pennies, but the increase on a percentage basis is infinite!</p>\r\n\r\n<p>All of the free fun makes it hard for developers to predict the real costs. There are plenty of stories of companies brought low by the slings and arrows of outrageous fortune that come from the viral infatuation of the digital mob. Everyone cheers when the content goes viral, but then the bill', '2021-01-08 10:59:08', 'admin', 1, 7),
(23, 'The Autonomous-Car Chaos of the 2004 Darpa Grand Challenge', 'The self-driving vehicles smashed, burned, flipped, and tipped. But the ambitious race through the Mojave launched an industry.', '<p>When the inquisition required him to drop his study of what the Roman Catholic Church insisted was not a heliocentric solar system, Galileo Galilei turned his energy to the less controversial question of how to stick a telescope onto a helmet. The king of Spain had offered a hefty reward to anyone who could solve the stubborn mystery of how to determine a ship&rsquo;s longitude while at sea: 6,000 ducats up front and another 2,000 per year for life. Galileo thought his headgear, with the telescope fixed over one eye and making its wearer look like a misaligned unicorn, would net him the reward.</p>\r\n\r\n<p>Determining latitude is easy for any sailor who can pick out the North Star, but finding longitude escaped the citizens of the 17th century, because it required a precise knowledge of time. That&rsquo;s based on a simple principle: Say you set your clock before sailing west from Greenwich. Say when the sun hits its apex, the clock reads five hours past noon. Because you know the earth rotates 15 degrees per hour&mdash;completing the 360 in 24 hours&mdash;you know you&rsquo;re 75 degrees west of London. Easy peasy. That only works, though, if you have a clock that can keep accurate time, which nobody sailing the high seas then did. Clocks were complex mechanical devices, ill-suited to sea voyages. The rolling oceans messed with the pendulums that kept time on land. Salt air messed with everything. So explorers increasingly interested in crossing the oceans had a dangerously limited understanding of where they were.</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.wired.com/photos/5fe2c3a09444c63750532aa3/master/w_1600%2Cc_limit/Backchannel-Driven-cover.jpg\" style=\"float:right; height:550px; width:367px\" /></p>\r\n\r\n<p>Galileo&rsquo;s solution lay with the incessant eclipses of what he called Jupiter&rsquo;s four moons (and what astronomers now call Jupiter&rsquo;s Galilean moons, having since discovered 75 more). In 1612, Galileo realized he could use the movement of the moons, which he charted, as a sort of astronomical clock. Over the next century, this became a common way of determining longitude on land. But it didn&rsquo;t work on the ocean. The telescopes of Galileo&rsquo;s age had tiny fields of view, and finding and tracking things that are at least 365 million miles away was virtually impossible on a ship bouncing along the waves. Galileo thought that by wearing the telescope on his face, a navigator could counteract that pitching and rolling more easily, and keep his focus on Jupiter&rsquo;s moons.</p>\r\n\r\n<div class=\"ad ad--in-content\">\r\n<div class=\"ad__slot ad__slot--in-content\">&nbsp;</div>\r\n</div>\r\n\r\n<p style=\"text-align:justify\">The Spanish were unimpressed, and no one ever claimed the king&rsquo;s ducats. Then, in 1714, British Parliament passed the Longitude Act, offering &pound;20,000 for a solution. After decades of trial and error, working-class clockmaker John Harrison presented the marine chronometer, a time-keeping device that could withstand the rigors of the seafaring life and keep its practitioners on the maps they were filling in as they went along.</p>\r\n\r\n<div class=\"consumer-marketing-unit consumer-marketing-unit--article-mid-content consumer-marketing-unit--no-failsafe\">\r\n<div class=\"consumer-marketing-unit__slot consumer-marketing-unit__slot--article-mid-content consumer-marketing-unit__slot--in-content\">&nbsp;</div>\r\n\r\n<div class=\"journey-unit\">&nbsp;</div>\r\n</div>\r\n\r\n<p>That successful iteration of the longitude prize was what Tony Tether, the director of the Defense Advanced Research Projects Agency, had in mind when he concocted the 2004 Grand Challenge: a way to motivate the Harrisons of the world as well as the Galileis.</p>\r\n\r\n<div class=\"inline-recirc-observer-target-1 inline-recirc-wrapper viewport-monitor-anchor\">&nbsp;</div>\r\n\r\n<p>DARPA was the secretive arm of the Pentagon that had birthed the internet, GPS, and the stealth bomber. In the early 2000s, it turned its gaze to autonomous vehicles that could keep US soldiers out of harm&rsquo;s way. Frustrated by the slow progress by the defense contractors and university labs that had spent decades on the problem, Tether tried something new: a race for autonomous vehicles, through the Mojave Desert, open to anyone. The $1 million prize and the audacity of the challenge drew in all sorts of hopefuls. Esteemed roboticists, university and high school students, hobbyist tinkerers, BattleBots veterans. What they lacked in experience with autonomous machines they made up for in enthusiasm. They spent the year leading up to race day&nbsp;sacrificing sleep, social contact, and in one case, $50,000 in <em>Jeopardy!</em> winnings to the Grand Challenge. A qualifying round slimmed an original field of 86 teams to 15 finalists.</p>\r\n', '2021-01-08 11:13:44', 'ram', 1, 11),
(24, 'Sony’s 360-degree audio is coming to streaming video', 'Sony has announced an expansion of its 360 Reality Audio platform, bringing the 360-degree music format to more devices and media as well as offering new creation tools.', '<p><img alt=\"\" src=\"https://cdn.vox-cdn.com/thumbor/4OUc3ZOe2efyA9WA8CeKJ66fKLE=/0x0:2040x1360/920x613/filters:focal(857x517:1183x843):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/68636935/dseifert_191031_3770_0006.0.jpg\" style=\"height:500px; width:750px\" /></p>\r\n\r\n<p>Reality Audio uses object-based spatial audio technology to place instruments or vocals around the listener&rsquo;s head in a virtual sound field.</p>\r\n\r\n<p>Now, Sony is expanding the audio tech into video. The company says it&rsquo;s working with record labels and service providers to start streaming video content with 360 Reality Audio later this year, and the first example will be a <a href=\"https://square.sony.com/ces2021/360RA\" rel=\"nofollow noskim\" target=\"_blank\">live performance</a> from Sony-signed artist Zara Larsson next week. You&rsquo;ll be able to watch through Sony&rsquo;s Artist Connection mobile app at 5pm ET on January 11th.</p>\r\n\r\n<p>Sony is releasing two new 360 Reality Audio-compatible speakers this spring, the SRS-RA5000 and SRS-RA3000, although there isn&rsquo;t much detail on either beyond support for Amazon&rsquo;s Alexa and the Google Assistant. Sony has also developed a new 3D audio plugin called the 360 Reality Audio Creative Suite, which is compatible with DAWs like Pro Tools and will be released at the end of this month.</p>\r\n\r\n<p>There are currently around 4,000 songs available in 360 Reality Audio across services like Tidal and Deezer, Sony says. The format works with most regular headphones or compatible speakers like <a href=\"https://www.theverge.com/2019/11/6/20950100/amazon-echo-studio-smart-speaker-alexa-3d-audio-test-review-price-specs-features\">Amazon&rsquo;s Echo Studio</a>.</p>\r\n', '2021-01-08 11:13:33', 'ram', 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `posts_buffer`
--

CREATE TABLE `posts_buffer` (
  `postID` int(11) NOT NULL,
  `postTitle` varchar(100) NOT NULL,
  `postDesc` varchar(5000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `postAuthor` varchar(20) NOT NULL,
  `postMini` text NOT NULL,
  `categoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(40) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `usertype` varchar(50) NOT NULL DEFAULT 'normal'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `password`, `emailid`, `createdon`, `usertype`) VALUES
(1, 'qt', 'Rajan Kasodariya', 'qt', 'qt@gmail.com', '2015-08-19 12:57:02', 'normal'),
(2, 'rtkasodariya', 'Rajan', '123', '123@gmail.com', '2015-08-12 18:00:05', 'normal'),
(5, 'expcode', 'Expert Code', 'rajan', 'expcode@gmail.com', '2015-08-21 14:01:26', 'normal'),
(6, 'admin', 'admin', 'admin', 'admin@admin.com', '2015-08-22 13:34:00', 'admin'),
(11, 'test', 'test', 'test', 'test@test.com', '2021-01-08 09:42:06', 'normal'),
(12, 'T_ReKT', 'Treshank', 'test', 'treshank.prasad@gmail.com', '2021-01-08 10:57:57', 'normal'),
(13, 'ram', 'Ram', 'test', 'ram@gmail.com', '2021-01-08 10:58:00', 'normal'),
(14, 'queue43', 'Tushar', 'test', 'queue43@gmail.com', '2021-01-08 10:58:03', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `users_buffer`
--

CREATE TABLE `users_buffer` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `emailid` varchar(40) NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT current_timestamp(),
  `usertype` varchar(20) NOT NULL DEFAULT 'nornal'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

CREATE TABLE `user_post` (
  `postAuthor` varchar(40) NOT NULL,
  `postID` int(11) NOT NULL,
  `postLikes` int(11) NOT NULL DEFAULT 0,
  `postDisLikes` int(11) NOT NULL,
  `postComments` int(11) NOT NULL DEFAULT 0,
  `postViews` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='User and Post relation Table';

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`postAuthor`, `postID`, `postLikes`, `postDisLikes`, `postComments`, `postViews`) VALUES
('qt', 1, 4, 0, 0, 20),
('sai', 2, 25, 0, 0, 8),
('qt', 6, 27, 0, 0, 202),
('qt', 7, 25, 0, 0, 55),
('qt', 16, 25, 0, 0, 7),
('', 19, 0, 0, 0, 33),
('admin', 20, 0, 0, 0, 19),
('admin', 21, 0, 0, 0, 6),
('ram', 23, 0, 0, 0, 2),
('ram', 24, 0, 0, 0, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catID`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD UNIQUE KEY `commentID` (`commentID`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postTitle` (`postTitle`);

--
-- Indexes for table `posts_buffer`
--
ALTER TABLE `posts_buffer`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users_buffer`
--
ALTER TABLE `users_buffer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`,`emailid`);

--
-- Indexes for table `user_post`
--
ALTER TABLE `user_post`
  ADD PRIMARY KEY (`postID`),
  ADD UNIQUE KEY `postID` (`postID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `posts_buffer`
--
ALTER TABLE `posts_buffer`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_buffer`
--
ALTER TABLE `users_buffer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
