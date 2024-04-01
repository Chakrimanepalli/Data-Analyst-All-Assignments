CREATE DEFINER=`root`@`localhost` TRIGGER `rentals_AFTER_UPDATE` AFTER UPDATE ON `rentals` FOR EACH ROW BEGIN
update rentals
     set movieid = m_id
     where movieid = id;
END