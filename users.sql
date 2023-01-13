-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 13, 2023 at 11:06 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `usersdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `login` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `salt` varchar(256) NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`login`, `password`, `salt`, `id`) VALUES
('zxczxc', 'qweq', 'e588fab88ec38c22e8d36712b2a8436fb888ed35e003f576ea2b1a269fb5848fd274a8a4cbe62ee3abb11277021fd87004d4ceb7e86019334e3ef13cbea11391', 1),
('zxc', 'zxc', '53180bf0c67a851af0b7b9f89d28a41d6146f42743960846b8157233b03fb1b0', 2),
('qwerty', '949e9638d19c45d25146407e57518da1559dd0ab81bb36c88a16ea275ee1d429', '8d2c601f754b64175eb19f8ce0698e6b426645f27e1bdacd9ed3be5f7d6a6b5c', 3),
('qwertyzxc', '49f2a6eb5fd337d7cc4d1cd536458942434e33072387581867e796cf89f302e1', '83ae20bcc8ecf79a441e904ee850df089d121380970ad248c36080d1c695d782', 4),
('test', '42e5b3e31fde3a91afc50a12cc61ca5d5b5b75c81393c31bdd36d8233cf547a3', '79ba1a3f26c0dedc0516562b04a58e8fcd6a29c4245b301fe344a55a3b61d4b1', 5),
('testname1', '634c43c9b1681cc8799cfa0136ec8a21f975b75f0cb5d62ebeeb301be63e451e', 'b36e667bec8832bbe89ae7944c5ce13b94d3550ede184d4c45628820048384d5', 8),
('mytestname', 'bd5c4ac6a59b7e5279f5104a5c75034133aa559819e9be7a36d6106f5df4efa8', '335c6121297dfa1e85a8f04cd08b4af4c402818fc4d3aafeb264dbca1804c4c1', 9),
('mysectestname', '37c35773e4057d1c5026158c876e5126d960303df6599dbf9fdf03c10bc1b587', 'bbe824a472ea1eb1456c35addb3b5034a5801b495d4562b1a86229f604787bf8', 10),
('John', 'd1a177811df1c84e74e343764d47b2889cd18b6734c018094122a949ddc75c51', '594e6c955cd6435e4e3a25af48aa1b9c99c85d1a648feeddd2eb2ec34dd2116a', 11),
('Someuser', '8267f2f470e2e270318f232bf5cfa62d20bd3ede989683b22f40d8824d533dfc', '3939622ac1ef5e62d4d79989f00e1981c3a47526c2f66135901224ed53704a19', 12),
('me2', '492d75a1f0b2a77094585c0006ca34f7b9008dc59f29e83881012ddd1858a358', 'e1a4440225a6e182ca4acfde04d1b5f1d246094751605e5c27360b965c182783', 13);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
