TRUNCATE TABLE user;
INSERT INTO user (id, name, password, email, role)
VALUES (1, 'admin', '$2y$10$J/DF8J/Az8DiSEpXel18NOcN0qbYt5VSvKCc8oJFarXDtj7HkmCmK', 'admin@localhost', 'creator'),
       (2, 'writer1', '$2y$10$J/DF8J/Az8DiSEpXel18NOcN0qbYt5VSvKCc8oJFarXDtj7HkmCmK', 'writer1@localhost', 'writer'),
       (3, 'writer2', '$2y$10$J/DF8J/Az8DiSEpXel18NOcN0qbYt5VSvKCc8oJFarXDtj7HkmCmK', 'writer2@localhost', 'writer'),
       (4, 'writer3', '$2y$10$J/DF8J/Az8DiSEpXel18NOcN0qbYt5VSvKCc8oJFarXDtj7HkmCmK', 'writer3admin@localhost',
        'writer'),
       (5, 'reader', '$2y$10$J/DF8J/Az8DiSEpXel18NOcN0qbYt5VSvKCc8oJFarXDtj7HkmCmK', 'admin@localhost', 'reader');

TRUNCATE TABLE audit_log;
INSERT INTO audit_log (user_id, client_ip, action)
VALUES (1, INET_ATON('127.0.0.1'), 'Initialised system');

INSERT INTO client (id, name, url, contact_name, contact_email, contact_phone)
VALUES (1, 'Insecure Co.', 'http://in.se.cure', 'John Doe', 'John.Doe@in.se.cure', '+99 123 245 389');

INSERT INTO project (id, client_id, name, description, is_template)
VALUES (1, NULL, 'Linux host template', 'Project template to show general linux host reconnaissance tasks', TRUE),
       (2, 1, 'Web server pentest project', 'Test project to show pentest tasks and reports', FALSE);

INSERT INTO project_user (project_id, user_id)
VALUES (2, 1),
       (2, 2);

INSERT INTO target (project_id, name, kind)
VALUES (1, 'https://test.com', 'url'),
       (2, '127.0.0.1', 'hostname');

INSERT INTO vulnerability_category (name, description)
VALUES ('Access Controls', 'Related to authorization of users, and assessment of rights.'),
       ('Auditing and Logging', 'Related to auditing of actions, or logging of problems.'),
       ('Authentication', 'Related to the identification of users.'),
       ('Configuration', 'Related to security configurations of servers, devices, or software.'),
       ('Cryptography', 'Related to mathematical protections for data.'),
       ('Data Exposure', 'Related to unintended exposure of sensitive information.'),
       ('Data Validation', 'Related to improper reliance on the structure or values of data.'),
       ('Denial of Service', 'Related to causing system failure.'),
       ('Error Reporting', 'Related to the reporting of error conditions in a secure fashion.'),
       ('Patching', 'Related to keeping software up to date.'),
       ('Session Management', 'Related to the identification of authenticated users.'),
       ('Timing', 'Related to race conditions, locking, or order of operations.');

INSERT INTO vulnerability (project_id, target_id, reported_by_uid, category_id, summary, risk, cvss_score)
VALUES (2, 1, 1, RAND() * (12 - 1) + 1, 'Domain about to expire', 'medium', 6.4),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Open port (tcp/22)', 'medium', 6.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #0', 'medium', 6.8),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #1', 'medium', 4.7),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #2', 'medium', 6.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #3', 'low', 2.5),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #4', 'none', 0.0),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #5', 'low', 2.0),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #6', 'low', 1.4),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #7', 'low', 2.7),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #8', 'low', 0.2),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #9', 'critical', 9.3),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #10', 'critical', 9.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #11', 'medium', 5.2),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #12', 'low', 2.8),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #13', 'high', 7.7),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #14', 'low', 0.1),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #15', 'high', 7.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #16', 'low', 2.5),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #17', 'low', 2.0),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #18', 'high', 7.4),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #19', 'medium', 5.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #20', 'medium', 4.8),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #21', 'low', 2.1),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #22', 'low', 1.5),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #23', 'medium', 4.2),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #24', 'medium', 6.8),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #25', 'medium', 5.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #26', 'low', 0.8),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #27', 'high', 7.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #28', 'medium', 4.8),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #29', 'critical', 9.2),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #30', 'low', 3.7),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #31', 'medium', 5.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #32', 'high', 8.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #33', 'low', 3.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #34', 'medium', 4.7),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #35', 'low', 2.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #36', 'low', 1.3),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #37', 'low', 3.2),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #38', 'low', 1.0),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #39', 'critical', 9.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #40', 'medium', 5.4),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #41', 'critical', 9.4),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #42', 'low', 0.5),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #43', 'high', 8.7),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #44', 'medium', 5.7),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #45', 'low', 0.1),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #46', 'critical', 9.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #47', 'low', 1.1),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #48', 'high', 8.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #49', 'medium', 6.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #50', 'medium', 4.8),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #51', 'high', 7.5),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #52', 'low', 2.4),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #53', 'high', 7.0),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #54', 'medium', 4.7),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #55', 'medium', 6.1),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #56', 'low', 0.4),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #57', 'medium', 5.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #58', 'medium', 6.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #59', 'low', 3.0),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #60', 'low', 2.3),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #61', 'low', 2.3),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #62', 'medium', 4.1),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #63', 'medium', 6.4),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #64', 'low', 0.3),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #65', 'medium', 6.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #66', 'low', 1.3),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #67', 'low', 2.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #68', 'high', 8.1),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #69', 'high', 8.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #70', 'low', 1.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #71', 'low', 0.5),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #72', 'medium', 4.2),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #73', 'low', 2.2),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #74', 'critical', 9.4),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #75', 'low', 3.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #76', 'low', 1.7),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #77', 'critical', 9.4),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #78', 'low', 0.3),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #79', 'low', 2.8),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #80', 'high', 7.5),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #81', 'none', 0.0),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #82', 'medium', 4.5),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #83', 'low', 1.7),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #84', 'medium', 5.0),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #85', 'critical', 9.8),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #86', 'medium', 4.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #87', 'low', 0.5),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #88', 'critical', 9.3),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #89', 'critical', 9.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #90', 'high', 8.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #91', 'high', 7.5),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #92', 'critical', 9.9),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #93', 'high', 7.5),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #94', 'high', 7.4),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #95', 'low', 0.2),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #96', 'critical', 9.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #97', 'low', 2.8),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #98', 'low', 1.6),
       (2, 2, 1, RAND() * (12 - 1) + 1, 'Test vulnerability #99', 'medium', 4.9);

UPDATE vulnerability
SET cvss_vector = 'CVSS:3.0/AV:P/AC:H/PR:H/UI:R/S:C/C:H/I:H/A:H';

INSERT INTO task (project_id, parser, name, description)
VALUES (1, 'nmap', 'Run port scanner', 'nmap -oX out.xml -v -sS @@TARGET@@'),
       (1, 'sqlmap', 'Run SQL injection scanner',
        'python sqlmap.py -u @@TARGET@@ --method POST --data "username=foo&password=bar" -p username --level 5 --dbms=mysql -v 1 --tables'),
       (1, NULL, 'Check domain expiration date', 'whois @@TARGET@@'),
       (2, 'nmap', 'Run port scanner', 'nmap -oX out.xml -v -sS @@TARGET@@'),
       (2, 'sqlmap', 'Run SQL injection scanner',
        'python sqlmap.py -u @@TARGET@@ --method POST --data "username=foo&password=bar" -p username --level 5 --dbms=mysql -v 1 --tables'),
       (2, NULL, 'Check domain expiration date', 'whois @@TARGET@@');

INSERT INTO task_result (task_id, submitted_by_uid, output)
VALUES (1, 1, 'tcp/22: open, tcp/80: open'),
       (1, 2, 'Domain expires in 22 days');
