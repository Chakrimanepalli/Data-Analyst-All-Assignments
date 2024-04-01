CREATE DEFINER=`root`@`localhost` TRIGGER `rentals_AFTER_DELETE` AFTER DELETE ON `rentals` FOR EACH ROW BEGIN
    delete from rentals
    where movieid not in(select distinct id from movies);
END