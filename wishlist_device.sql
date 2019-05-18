CREATE TABLE `wishlist_device` (
  `user_email` VARCHAR(30) NOT NULL,
  `device_id` INT NULL,
  `device_name` VARCHAR(45) NULL,
  `selected_color` VARCHAR(10) NULL,
  `currency` VARCHAR(5) NULL,
  `price` INT NULL,
  `ordering_quantity` INT NULL,
  PRIMARY KEY (`user_email`));
  
  INSERT INTO `wishlist_device` (`user_email`, `device_id`, `device_name`, `selected_color`, `currency`, `price`, `ordering_quantity`) VALUES ('21500172@handong.edu', '3', 'Pixel 3a', 'Just Black', '$', '399', '1');

