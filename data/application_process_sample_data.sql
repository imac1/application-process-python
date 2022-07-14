DROP TABLE IF EXISTS applicant;
DROP TABLE IF EXISTS mentor;

CREATE TABLE applicant
(
    id               SERIAL PRIMARY KEY,
    first_name       CHARACTER VARYING(255) NOT NULL,
    last_name        CHARACTER VARYING(255) NOT NULL,
    phone_number     CHARACTER VARYING(100) NOT NULL,
    email            CHARACTER VARYING(255) NOT NULL,
    application_code INTEGER UNIQUE         NOT NULL
);

CREATE TABLE mentor
(
    id               SERIAL PRIMARY KEY,
    first_name       CHARACTER VARYING(255) NOT NULL,
    last_name        CHARACTER VARYING(255) NOT NULL,
    phone_number     CHARACTER VARYING(100) NOT NULL,
    email            CHARACTER VARYING(255) NOT NULL,
    city             CHARACTER VARYING(255) NOT NULL,
    favourite_number INTEGER
);

INSERT INTO applicant
VALUES (1, 'Dominique', 'Williams', '003630/734-4926', 'dolor@laoreet.co.uk', 61823),
       (2, 'Jemima', 'Foreman', '003620/834-6898', 'magna@etultrices.net', 58324),
       (3, 'William', 'Massey', '003630/216-5351', 'a.feugiat.tellus@montesnasceturridiculus.co.uk', 61349),
       (4, 'Joseph', 'Crawford', '003670/923-2669', 'lacinia.mattis@arcu.co.uk', 12916),
       (5, 'Ifeoma', 'Bird', '003630/465-8994', 'diam.duis.mi@orcitinciduntadipiscing.com', 65603),
       (6, 'Arsenio', 'Matthews', '003620/804-1652', 'semper.pretium.neque@mauriseu.net', 39220),
       (7, 'Arnold', 'Jemima', '003620/423-4261', 'et.risus.quisque@mollis.co.uk', 10384),
       (8, 'Carol', 'Cantu', '003630/179-1827', 'dapibus.rutrum@litoratorquent.com', 70730),
       (9, 'Jane', 'Forbes', '003670/653-5392', 'janiebaby@adipiscingenimmi.edu', 56882),
       (10, 'Ursa', 'William', '003620/496-7064', 'malesuada@mauriseu.net', 91220);
SELECT pg_catalog.setval('applicant_id_seq', 10, TRUE);


INSERT INTO mentor
VALUES (2, 'Bugs', 'Bunny', '+36 (46) 518718', 'bugs.bunny@codecool.com', 'Miskolc', NULL),
       (3, 'Scooby', 'Doo', '+40 (31) 7309201', 'scooby.doo@codecool.com', 'Bucharest', 7),
       (4, 'Mickey', 'Mouse', '+40 (31) 7309203', 'mickey.mouse@codecool.com', 'Bucharest', 4),
       (5, 'Bob', 'Sponge', '+36 (77) 908069', 'bob.sponge@codecool.com', 'Miskolc', 42),
       (6, 'Homer', 'Simpson', '+48 (88) 4233837', 'homer.simpson@codecool.com', 'Warsaw', 42),
       (7, 'Donald', 'Duck', '+36 (82) 548410', 'donald.duck@codecool.com', 'Budapest', 13),
       (8, 'Bart', 'Simpson', '+36 (96) 657514', 'bart.simpson@codecool.com', 'Budapest', 11),
       (9, 'Tom', 'Cat', '+48 (67) 9656765', 'tom.cat@codecool.com', 'Warsaw', 3),
       (10, 'Jerry', 'Mouse', '+48 (78) 1620198', 'jerry.mouse@codecool.com', 'Warsaw', 5),
       (11, 'Daffy', 'Duck', '+48 (78) 7580415', 'daffy.duck@codecool.com.com', 'Warsaw', 90),
       (12, 'Pink', 'Panther', '+36 (49) 407323', 'pink.panther@codecool.com', 'Budapest', 5),
       (13, 'Charlie', 'Brown', '+48 (79) 7708347', 'charlie.brown@codecool.com', 'Warsaw', 13),
       (14, 'Fred', 'Flintstone', '+48 (51) 7112056', 'fred.flintstone@codecool.com', 'Kraków', 8),
       (15, 'Brian', 'Griffin', '+48 (66) 6396787', 'brian.griffin@codecool.com', 'Kraków', 9),
       (16, 'Yosemite', 'Sam', '+48 (69) 9945475', 'yosemite.sam@codecool.com', 'Kraków', 3),
       (17, 'Yogi', 'Bear', '+36 (27) 154667', 'yogi.bear@codecool.com', 'Miskolc', NULL),
       (18, 'Peter', 'Griffin', '+40 (31) 7309202', 'peter.griffin@codecool.com', 'Bucharest', 55),
       (19, 'Porky', 'Pig', '+36 (87) 126675', 'porky.pig@codecool.com', 'Miskolc', 55),
       (20, 'Buzz', 'Lightyear', '+40 (348) 432326', 'buzz.lightyear@codecool.com', 'Bucharest', 3),
       (21, 'Road', 'Runner', '+40 (264) 414163', 'road.runner@codecool.com', 'Bucharest', 77),
       (22, 'Lisa', 'Simpson', '+36 (68) 548366', 'lisa.simpson@codecool.com', 'Budapest', 5),
       (23, 'Scrooge', 'McDuck', '+36 (82) 635078', 'scrooge.mcduck@codecool.com', 'Budapest', NULL),
       (1, 'Eric', 'Cartman', '+48 (78) 3305247', 'eri.cartman@codecool.com', 'Kraków', 23);

SELECT pg_catalog.setval('mentor_id_seq', 23, TRUE);
