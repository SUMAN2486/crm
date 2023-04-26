 USE crmproject2;

CREATE TABLE owner (
    id INT AUTO_INCREMENT PRIMARY KEY,
    owner text(40)
);

CREATE TABLE country (
    id INT AUTO_INCREMENT PRIMARY KEY,
    country text(40)
);

CREATE TABLE email_type(
    id INT AUTO_INCREMENT PRIMARY KEY,
    email_type text(1)
);

CREATE TABLE client(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    last text(40),
    first text(40),
    email text(40),
    sold BOOLEAN,
    date text(40),
    email_type_id INT,
    owner_id INT,
    country_id INT,

    FOREIGN KEY(email_type_id) REFERENCES email_type(id),
    FOREIGN KEY(owner_id) REFERENCES owner(id),
    FOREIGN KEY(country_id) REFERENCES country(id)
);

