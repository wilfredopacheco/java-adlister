use adlister_db;

CREATE TABLE users(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  password VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE ads(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_id INT UNSIGNED DEFAULT NULL,
  title VARCHAR(100) NOT NULL,
  description VARCHAR(100) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id)
  REFERENCES users (id)
);

INSERT INTO users (username, email, password) VALUES
('bob', 'bob@example.com', 12333),
('joe', 'joe@example.com', 22223),
('sally', 'sally@example.com', 322322),
('adam', 'adam@example.com', 332233444),
('jane', 'jane@example.com', 44456),
('mike', 'mike@example.com', 76543),
('tom', 'tom@example.com', 244444),
('mark', 'mark@example.com',	244),
('travis', 'travis@example.com',	2234),
('wil',	'wil@example.com', 2344);

INSERT INTO ads (user_id, title, description) VALUES
(1,'New Sandals', 'STEVE MADDEN SIZE 6 BLACK SANDAL'),
(1,'BABY STROLLER','baby trend tandem sit-in-stand double stroller'),
(4, 'Stove for sale', 'Stove electric appliance'),
(5, 'Queen size mattress', 'QUEEN SIZE MATTRESS AND BOX SPRING'),
(4, 'CAR FOR SALE', '2014 ford escape titanium-SUV'),
(5, 'CAR FOR SALE', '2017 Ford crown victoria lx sport'),
(9, ' CAR FOR SALE','2015 DODGE DART SXT');


-- +----------+             +-------------+
-- |  users   |             |    ads      |
-- +----------+             +-------------+
-- | id       |<------,     | id          |
-- | username |       `-----| user_id     | <-- foreign key to users table
-- | email    |             | title       |
-- | password |             | description |
-- +----------+             +-------------+
