CREATE TABLE `app`.`devices` (
  `device_id` INT NOT NULL,
  `device_name` VARCHAR(45) NOT NULL,
  `price` VARCHAR(45) NOT NULL,
  `description` VARCHAR(200) NULL,
  `colors` VARCHAR(45) NULL,
  `available_country` VARCHAR(255) NULL,
  `size_weight` VARCHAR(50) NULL DEFAULT 'N/A',
  `audio_type` VARCHAR(45) NULL DEFAULT 'N/A',
  `wireless` VARCHAR(45) NULL DEFAULT 'N/A',
  `sensor` VARCHAR(45) NULL DEFAULT 'N/A',
  `speaker` VARCHAR(45) NULL DEFAULT 'N/A',
  `mic` VARCHAR(45) NULL DEFAULT 'N/A',
  `power` VARCHAR(45) NULL DEFAULT 'N/A',
  `port_connector` VARCHAR(45) NULL DEFAULT 'N/A',
  `android_requirement` VARCHAR(45) NULL,
  `ios_requirement` VARCHAR(45) NULL,
  `simple_settings` TEXT NULL,
  `quantity_available` INT NULL,
  `quantity_sold` INT NULL DEFAULT 0,
  `category` VARCHAR(45) NULL,
  PRIMARY KEY (`device_id`));

INSERT INTO `app`.`devices` (`device_id`, `device_name`, `price`, `description`, `colors`, `available_country`, `size_weight`, `wireless`, `power`, `port_connector`, `android_requirement`, `simple_settings`, `quantity_available`, `quantity_sold`, `category`) VALUES ('1', 'Chromecast Ultra', '\\54900', '기기에서 TV로 스트리밍하세요. 간단합니다.', 'black', 'Austrailia, Canada, Denmark, Finland, Japan, Netherlands, New Zealand, Norway, Singapore, Sweden, France, Germany, India, Italy, Mexico, Spain, England, U.S, Korea', 'L 52mm H 52mm', 'Wi-Fi 802.11ac(2.4GHz/5GHz)', '5V, 1A', 'HDMI, Micro USB', '', 'Connect to Chromecast and go to chromecast.com/setup. ', '10000', '152699', 'Connected Home');

ALTER TABLE `devices` 
DROP COLUMN `simple_settings`;

INSERT INTO `devices` (`device_id`, `device_name`, `price`, `description`, `colors`, `available_country`, `size_weight`, `audio_type`, `wireless`, `speaker`, `mic`, `power`, `port_connector`, `quantity_available`, `quantity_sold`, `category`) VALUES ('2', 'Google Home', '\\126500', '질문하고 작업을 시켜 보세요. 안 어디서나 손을 사용하지 않고도 간편하게 일을 처리할 수 있습니다.', 'white, slate fabric', 'Austrailia, Canada, Denmark, Finland, Japan, Netherlands, New Zealand, Norway, Singapore, Sweden, France, Germany, India, Italy, Mexico, Spain, England, U.S, Korea', 'D 96.3mm H 142.7mm', 'HE-AAC, LC-AAC', '802.11b/g/n/ac(2.4GHz/5Ghz) Wi-Fi', 'High excursion ', 'dual', '16.5V, 2A', 'DC Power jack', '50000', '32569', 'Connected Home');
INSERT INTO .`devices` (`device_id`, `device_name`, `price`, `description`, `colors`, `available_country`, `size_weight`, `quantity_available`, `quantity_sold`, `category`) VALUES ('3', 'Pixel 3a', '$399', 'Google has unveiled two new phones in its lineup, the Pixel 3a and Pixel 3a XL, which are designed to deliver a pure Android experience along with Google\'s class-leading cameras for a lower price. ', 'Just Black, Clearly White, Purple-ish', 'Austrailia, Cananda, France, Germany, India, Ireland, Italy, Japan, Singapore, Spain, Taiwan, England, U.S.', '6 x 2.8 x 0.3 inches, 5.0 ounces', '886655', '556685', 'Phone');


