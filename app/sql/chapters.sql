CREATE SCHEMA IF NOT EXISTS static;

CREATE TABLE IF NOT EXISTS static.chapters
(
    id                 int2 PRIMARY KEY,
    book_name          varchar(20) NOT NULL,
    book_id            int2        NOT NULL,
    chapter_nr         int2        NOT NULL,
    chapter_word_count int2        NOT NULL
);

INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1, 'Genesis', 1, 1, 818),
       (2, 'Genesis', 1, 2, 650),
       (3, 'Genesis', 1, 3, 719),
       (4, 'Genesis', 1, 4, 655),
       (5, 'Genesis', 1, 5, 537),
       (6, 'Genesis', 1, 6, 588),
       (7, 'Genesis', 1, 7, 602),
       (8, 'Genesis', 1, 8, 602),
       (9, 'Genesis', 1, 9, 684),
       (10, 'Genesis', 1, 10, 527)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (11, 'Genesis', 1, 11, 633),
       (12, 'Genesis', 1, 12, 561),
       (13, 'Genesis', 1, 13, 475),
       (14, 'Genesis', 1, 14, 629),
       (15, 'Genesis', 1, 15, 490),
       (16, 'Genesis', 1, 16, 434),
       (17, 'Genesis', 1, 17, 715),
       (18, 'Genesis', 1, 18, 888),
       (19, 'Genesis', 1, 19, 1141),
       (20, 'Genesis', 1, 20, 529)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (21, 'Genesis', 1, 21, 819),
       (22, 'Genesis', 1, 22, 652),
       (23, 'Genesis', 1, 23, 569),
       (24, 'Genesis', 1, 24, 1899),
       (25, 'Genesis', 1, 25, 737),
       (26, 'Genesis', 1, 26, 916),
       (27, 'Genesis', 1, 27, 1314),
       (28, 'Genesis', 1, 28, 649),
       (29, 'Genesis', 1, 29, 882),
       (30, 'Genesis', 1, 30, 1071)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (31, 'Genesis', 1, 31, 1494),
       (32, 'Genesis', 1, 32, 832),
       (33, 'Genesis', 1, 33, 533),
       (34, 'Genesis', 1, 34, 826),
       (35, 'Genesis', 1, 35, 714),
       (36, 'Genesis', 1, 36, 907),
       (37, 'Genesis', 1, 37, 985),
       (38, 'Genesis', 1, 38, 874),
       (39, 'Genesis', 1, 39, 690),
       (40, 'Genesis', 1, 40, 615)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (41, 'Genesis', 1, 41, 1483),
       (42, 'Genesis', 1, 42, 1015),
       (43, 'Genesis', 1, 43, 982),
       (44, 'Genesis', 1, 44, 927),
       (45, 'Genesis', 1, 45, 764),
       (46, 'Genesis', 1, 46, 811),
       (47, 'Genesis', 1, 47, 1017),
       (48, 'Genesis', 1, 48, 672),
       (49, 'Genesis', 1, 49, 809),
       (50, 'Genesis', 1, 50, 727)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (51, 'Exodus', 2, 1, 480),
       (52, 'Exodus', 2, 2, 686),
       (53, 'Exodus', 2, 3, 810),
       (54, 'Exodus', 2, 4, 915),
       (55, 'Exodus', 2, 5, 610),
       (56, 'Exodus', 2, 6, 768),
       (57, 'Exodus', 2, 7, 710),
       (58, 'Exodus', 2, 8, 953),
       (59, 'Exodus', 2, 9, 993),
       (60, 'Exodus', 2, 10, 914)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (61, 'Exodus', 2, 11, 331),
       (62, 'Exodus', 2, 12, 1521),
       (63, 'Exodus', 2, 13, 691),
       (64, 'Exodus', 2, 14, 953),
       (65, 'Exodus', 2, 15, 718),
       (66, 'Exodus', 2, 16, 1076),
       (67, 'Exodus', 2, 17, 467),
       (68, 'Exodus', 2, 18, 784),
       (69, 'Exodus', 2, 19, 702),
       (70, 'Exodus', 2, 20, 587)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (71, 'Exodus', 2, 21, 934),
       (72, 'Exodus', 2, 22, 813),
       (73, 'Exodus', 2, 23, 874),
       (74, 'Exodus', 2, 24, 495),
       (75, 'Exodus', 2, 25, 968),
       (76, 'Exodus', 2, 26, 971),
       (77, 'Exodus', 2, 27, 583),
       (78, 'Exodus', 2, 28, 1297),
       (79, 'Exodus', 2, 29, 1365),
       (80, 'Exodus', 2, 30, 994)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (81, 'Exodus', 2, 31, 456),
       (82, 'Exodus', 2, 32, 1114),
       (83, 'Exodus', 2, 33, 733),
       (84, 'Exodus', 2, 34, 1045),
       (85, 'Exodus', 2, 35, 844),
       (86, 'Exodus', 2, 36, 944),
       (87, 'Exodus', 2, 37, 771),
       (88, 'Exodus', 2, 38, 873),
       (89, 'Exodus', 2, 39, 1084),
       (90, 'Exodus', 2, 40, 835)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (91, 'Leviticus', 3, 1, 533),
       (92, 'Leviticus', 3, 2, 497),
       (93, 'Leviticus', 3, 3, 510),
       (94, 'Leviticus', 3, 4, 1142),
       (95, 'Leviticus', 3, 5, 727),
       (96, 'Leviticus', 3, 6, 890),
       (97, 'Leviticus', 3, 7, 1063),
       (98, 'Leviticus', 3, 8, 1008),
       (99, 'Leviticus', 3, 9, 637),
       (100, 'Leviticus', 3, 10, 652)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (101, 'Leviticus', 3, 11, 1148),
       (102, 'Leviticus', 3, 12, 264),
       (103, 'Leviticus', 3, 13, 1915),
       (104, 'Leviticus', 3, 14, 1757),
       (105, 'Leviticus', 3, 15, 947),
       (106, 'Leviticus', 3, 16, 1158),
       (107, 'Leviticus', 3, 17, 554),
       (108, 'Leviticus', 3, 18, 711),
       (109, 'Leviticus', 3, 19, 929),
       (110, 'Leviticus', 3, 20, 875)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (111, 'Leviticus', 3, 21, 608),
       (112, 'Leviticus', 3, 22, 910),
       (113, 'Leviticus', 3, 23, 1238),
       (114, 'Leviticus', 3, 24, 564),
       (115, 'Leviticus', 3, 25, 1578),
       (116, 'Leviticus', 3, 26, 1293),
       (117, 'Leviticus', 3, 27, 972),
       (118, 'Numbers', 4, 1, 1331),
       (119, 'Numbers', 4, 2, 858),
       (120, 'Numbers', 4, 3, 1315)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (121, 'Numbers', 4, 4, 1400),
       (122, 'Numbers', 4, 5, 948),
       (123, 'Numbers', 4, 6, 751),
       (124, 'Numbers', 4, 7, 2006),
       (125, 'Numbers', 4, 8, 721),
       (126, 'Numbers', 4, 9, 710),
       (127, 'Numbers', 4, 10, 921),
       (128, 'Numbers', 4, 11, 1065),
       (129, 'Numbers', 4, 12, 394),
       (130, 'Numbers', 4, 13, 790)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (131, 'Numbers', 4, 14, 1221),
       (132, 'Numbers', 4, 15, 1087),
       (133, 'Numbers', 4, 16, 1357),
       (134, 'Numbers', 4, 17, 342),
       (135, 'Numbers', 4, 18, 1137),
       (136, 'Numbers', 4, 19, 706),
       (137, 'Numbers', 4, 20, 805),
       (138, 'Numbers', 4, 21, 951),
       (139, 'Numbers', 4, 22, 1233),
       (140, 'Numbers', 4, 23, 767)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (141, 'Numbers', 4, 24, 656),
       (142, 'Numbers', 4, 25, 466),
       (143, 'Numbers', 4, 26, 1502),
       (144, 'Numbers', 4, 27, 620),
       (145, 'Numbers', 4, 28, 799),
       (146, 'Numbers', 4, 29, 966),
       (147, 'Numbers', 4, 30, 520),
       (148, 'Numbers', 4, 31, 1263),
       (149, 'Numbers', 4, 32, 1069),
       (150, 'Numbers', 4, 33, 1001)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (151, 'Numbers', 4, 34, 650),
       (152, 'Numbers', 4, 35, 992),
       (153, 'Numbers', 4, 36, 453),
       (154, 'Deuteronomy', 5, 1, 1299),
       (155, 'Deuteronomy', 5, 2, 1052),
       (156, 'Deuteronomy', 5, 3, 855),
       (157, 'Deuteronomy', 5, 4, 1531),
       (158, 'Deuteronomy', 5, 5, 942),
       (159, 'Deuteronomy', 5, 6, 656),
       (160, 'Deuteronomy', 5, 7, 865)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (161, 'Deuteronomy', 5, 8, 570),
       (162, 'Deuteronomy', 5, 9, 967),
       (163, 'Deuteronomy', 5, 10, 601),
       (164, 'Deuteronomy', 5, 11, 970),
       (165, 'Deuteronomy', 5, 12, 1089),
       (166, 'Deuteronomy', 5, 13, 641),
       (167, 'Deuteronomy', 5, 14, 733),
       (168, 'Deuteronomy', 5, 15, 711),
       (169, 'Deuteronomy', 5, 16, 723),
       (170, 'Deuteronomy', 5, 17, 730)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (171, 'Deuteronomy', 5, 18, 614),
       (172, 'Deuteronomy', 5, 19, 627),
       (173, 'Deuteronomy', 5, 20, 658),
       (174, 'Deuteronomy', 5, 21, 763),
       (175, 'Deuteronomy', 5, 22, 943),
       (176, 'Deuteronomy', 5, 23, 709),
       (177, 'Deuteronomy', 5, 24, 701),
       (178, 'Deuteronomy', 5, 25, 581),
       (179, 'Deuteronomy', 5, 26, 680),
       (180, 'Deuteronomy', 5, 27, 625)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (181, 'Deuteronomy', 5, 28, 2137),
       (182, 'Deuteronomy', 5, 29, 865),
       (183, 'Deuteronomy', 5, 30, 668),
       (184, 'Deuteronomy', 5, 31, 1047),
       (185, 'Deuteronomy', 5, 32, 1364),
       (186, 'Deuteronomy', 5, 33, 813),
       (187, 'Deuteronomy', 5, 34, 326),
       (188, 'Joshua', 6, 1, 581),
       (189, 'Joshua', 6, 2, 802),
       (190, 'Joshua', 6, 3, 591)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (191, 'Joshua', 6, 4, 731),
       (192, 'Joshua', 6, 5, 564),
       (193, 'Joshua', 6, 6, 920),
       (194, 'Joshua', 6, 7, 956),
       (195, 'Joshua', 6, 8, 1244),
       (196, 'Joshua', 6, 9, 825),
       (197, 'Joshua', 6, 10, 1440),
       (198, 'Joshua', 6, 11, 729),
       (199, 'Joshua', 6, 12, 502),
       (200, 'Joshua', 6, 13, 872)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (201, 'Joshua', 6, 14, 490),
       (202, 'Joshua', 6, 15, 1132),
       (203, 'Joshua', 6, 16, 284),
       (204, 'Joshua', 6, 17, 692),
       (205, 'Joshua', 6, 18, 808),
       (206, 'Joshua', 6, 19, 1035),
       (207, 'Joshua', 6, 20, 320),
       (208, 'Joshua', 6, 21, 1069),
       (209, 'Joshua', 6, 22, 1334),
       (210, 'Joshua', 6, 23, 579)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (211, 'Joshua', 6, 24, 1048),
       (212, 'Judges', 7, 1, 1020),
       (213, 'Judges', 7, 2, 704),
       (214, 'Judges', 7, 3, 888),
       (215, 'Judges', 7, 4, 786),
       (216, 'Judges', 7, 5, 777),
       (217, 'Judges', 7, 6, 1325),
       (218, 'Judges', 7, 7, 991),
       (219, 'Judges', 7, 8, 1031),
       (220, 'Judges', 7, 9, 1734)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (221, 'Judges', 7, 10, 497),
       (222, 'Judges', 7, 11, 1273),
       (223, 'Judges', 7, 12, 426),
       (224, 'Judges', 7, 13, 772),
       (225, 'Judges', 7, 14, 733),
       (226, 'Judges', 7, 15, 674),
       (227, 'Judges', 7, 16, 1135),
       (228, 'Judges', 7, 17, 409),
       (229, 'Judges', 7, 18, 1077),
       (230, 'Judges', 7, 19, 1150)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (231, 'Judges', 7, 20, 1491),
       (232, 'Judges', 7, 21, 763),
       (233, 'Ruth', 8, 1, 673),
       (234, 'Ruth', 8, 2, 792),
       (235, 'Ruth', 8, 3, 553),
       (236, 'Ruth', 8, 4, 655),
       (237, '1 Samuel', 9, 1, 790),
       (238, '1 Samuel', 9, 2, 1128),
       (239, '1 Samuel', 9, 3, 554),
       (240, '1 Samuel', 9, 4, 757)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (241, '1 Samuel', 9, 5, 449),
       (242, '1 Samuel', 9, 6, 771),
       (243, '1 Samuel', 9, 7, 523),
       (244, '1 Samuel', 9, 8, 572),
       (245, '1 Samuel', 9, 9, 1025),
       (246, '1 Samuel', 9, 10, 888),
       (247, '1 Samuel', 9, 11, 515),
       (248, '1 Samuel', 9, 12, 781),
       (249, '1 Samuel', 9, 13, 729),
       (250, '1 Samuel', 9, 14, 1662)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (251, '1 Samuel', 9, 15, 983),
       (252, '1 Samuel', 9, 16, 697),
       (253, '1 Samuel', 9, 17, 1800),
       (254, '1 Samuel', 9, 18, 886),
       (255, '1 Samuel', 9, 19, 721),
       (256, '1 Samuel', 9, 20, 1332),
       (257, '1 Samuel', 9, 21, 506),
       (258, '1 Samuel', 9, 22, 790),
       (259, '1 Samuel', 9, 23, 872),
       (260, '1 Samuel', 9, 24, 688)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (261, '1 Samuel', 9, 25, 1486),
       (262, '1 Samuel', 9, 26, 888),
       (263, '1 Samuel', 9, 27, 411),
       (264, '1 Samuel', 9, 28, 857),
       (265, '1 Samuel', 9, 29, 438),
       (266, '1 Samuel', 9, 30, 998),
       (267, '1 Samuel', 9, 31, 372),
       (268, '2 Samuel', 10, 1, 727),
       (269, '2 Samuel', 10, 2, 958),
       (270, '2 Samuel', 10, 3, 1197)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (271, '2 Samuel', 10, 4, 452),
       (272, '2 Samuel', 10, 5, 638),
       (273, '2 Samuel', 10, 6, 730),
       (274, '2 Samuel', 10, 7, 893),
       (275, '2 Samuel', 10, 8, 467),
       (276, '2 Samuel', 10, 9, 429),
       (277, '2 Samuel', 10, 10, 640),
       (278, '2 Samuel', 10, 11, 850),
       (279, '2 Samuel', 10, 12, 1029),
       (280, '2 Samuel', 10, 13, 1218)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (281, '2 Samuel', 10, 14, 1157),
       (282, '2 Samuel', 10, 15, 1168),
       (283, '2 Samuel', 10, 16, 763),
       (284, '2 Samuel', 10, 17, 977),
       (285, '2 Samuel', 10, 18, 1157),
       (286, '2 Samuel', 10, 19, 1536),
       (287, '2 Samuel', 10, 20, 896),
       (288, '2 Samuel', 10, 21, 803),
       (289, '2 Samuel', 10, 22, 983),
       (290, '2 Samuel', 10, 23, 914)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (291, '2 Samuel', 10, 24, 881),
       (292, '1 Kings', 11, 1, 1553),
       (293, '1 Kings', 11, 2, 1537),
       (294, '1 Kings', 11, 3, 876),
       (295, '1 Kings', 11, 4, 743),
       (296, '1 Kings', 11, 5, 548),
       (297, '1 Kings', 11, 6, 1059),
       (298, '1 Kings', 11, 7, 1528),
       (299, '1 Kings', 11, 8, 2178),
       (300, '1 Kings', 11, 9, 858)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (301, '1 Kings', 11, 10, 873),
       (302, '1 Kings', 11, 11, 1305),
       (303, '1 Kings', 11, 12, 1086),
       (304, '1 Kings', 11, 13, 1165),
       (305, '1 Kings', 11, 14, 1010),
       (306, '1 Kings', 11, 15, 998),
       (307, '1 Kings', 11, 16, 1078),
       (308, '1 Kings', 11, 17, 692),
       (309, '1 Kings', 11, 18, 1440),
       (310, '1 Kings', 11, 19, 750)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (311, '1 Kings', 11, 20, 1523),
       (312, '1 Kings', 11, 21, 940),
       (313, '1 Kings', 11, 22, 1557),
       (314, '2 Kings', 12, 1, 677),
       (315, '2 Kings', 12, 2, 865),
       (316, '2 Kings', 12, 3, 877),
       (317, '2 Kings', 12, 4, 1399),
       (318, '2 Kings', 12, 5, 1000),
       (319, '2 Kings', 12, 6, 1062),
       (320, '2 Kings', 12, 7, 840)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (321, '2 Kings', 12, 8, 995),
       (322, '2 Kings', 12, 9, 1245),
       (323, '2 Kings', 12, 10, 1261),
       (324, '2 Kings', 12, 11, 759),
       (325, '2 Kings', 12, 12, 720),
       (326, '2 Kings', 12, 13, 790),
       (327, '2 Kings', 12, 14, 912),
       (328, '2 Kings', 12, 15, 1134),
       (329, '2 Kings', 12, 16, 682),
       (330, '2 Kings', 12, 17, 1263)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (331, '2 Kings', 12, 18, 1245),
       (332, '2 Kings', 12, 19, 1171),
       (333, '2 Kings', 12, 20, 673),
       (334, '2 Kings', 12, 21, 773),
       (335, '2 Kings', 12, 22, 718),
       (336, '2 Kings', 12, 23, 1508),
       (337, '2 Kings', 12, 24, 605),
       (338, '2 Kings', 12, 25, 1024),
       (339, '1 Chronicles', 13, 1, 741),
       (340, '1 Chronicles', 13, 2, 913)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (341, '1 Chronicles', 13, 3, 375),
       (342, '1 Chronicles', 13, 4, 899),
       (343, '1 Chronicles', 13, 5, 687),
       (344, '1 Chronicles', 13, 6, 1411),
       (345, '1 Chronicles', 13, 7, 858),
       (346, '1 Chronicles', 13, 8, 542),
       (347, '1 Chronicles', 13, 9, 1020),
       (348, '1 Chronicles', 13, 10, 377),
       (349, '1 Chronicles', 13, 11, 1008),
       (350, '1 Chronicles', 13, 12, 1058)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (351, '1 Chronicles', 13, 13, 406),
       (352, '1 Chronicles', 13, 14, 370),
       (353, '1 Chronicles', 13, 15, 743),
       (354, '1 Chronicles', 13, 16, 873),
       (355, '1 Chronicles', 13, 17, 814),
       (356, '1 Chronicles', 13, 18, 426),
       (357, '1 Chronicles', 13, 19, 647),
       (358, '1 Chronicles', 13, 20, 296),
       (359, '1 Chronicles', 13, 21, 928),
       (360, '1 Chronicles', 13, 22, 607)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (361, '1 Chronicles', 13, 23, 697),
       (362, '1 Chronicles', 13, 24, 571),
       (363, '1 Chronicles', 13, 25, 543),
       (364, '1 Chronicles', 13, 26, 742),
       (365, '1 Chronicles', 13, 27, 853),
       (366, '1 Chronicles', 13, 28, 868),
       (367, '1 Chronicles', 13, 29, 1016),
       (368, '2 Chronicles', 14, 1, 544),
       (369, '2 Chronicles', 14, 2, 672),
       (370, '2 Chronicles', 14, 3, 499)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (371, '2 Chronicles', 14, 4, 622),
       (372, '2 Chronicles', 14, 5, 495),
       (373, '2 Chronicles', 14, 6, 1437),
       (374, '2 Chronicles', 14, 7, 759),
       (375, '2 Chronicles', 14, 8, 562),
       (376, '2 Chronicles', 14, 9, 911),
       (377, '2 Chronicles', 14, 10, 581),
       (378, '2 Chronicles', 14, 11, 511),
       (379, '2 Chronicles', 14, 12, 505),
       (380, '2 Chronicles', 14, 13, 657)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (381, '2 Chronicles', 14, 14, 455),
       (382, '2 Chronicles', 14, 15, 537),
       (383, '2 Chronicles', 14, 16, 494),
       (384, '2 Chronicles', 14, 17, 469),
       (385, '2 Chronicles', 14, 18, 1067),
       (386, '2 Chronicles', 14, 19, 360),
       (387, '2 Chronicles', 14, 20, 1172),
       (388, '2 Chronicles', 14, 21, 640),
       (389, '2 Chronicles', 14, 22, 460),
       (390, '2 Chronicles', 14, 23, 798)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (391, '2 Chronicles', 14, 24, 954),
       (392, '2 Chronicles', 14, 25, 997),
       (393, '2 Chronicles', 14, 26, 751),
       (394, '2 Chronicles', 14, 27, 256),
       (395, '2 Chronicles', 14, 28, 920),
       (396, '2 Chronicles', 14, 29, 1186),
       (397, '2 Chronicles', 14, 30, 894),
       (398, '2 Chronicles', 14, 31, 786),
       (399, '2 Chronicles', 14, 32, 1120),
       (400, '2 Chronicles', 14, 33, 798)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (401, '2 Chronicles', 14, 34, 1242),
       (402, '2 Chronicles', 14, 35, 945),
       (403, '2 Chronicles', 14, 36, 751),
       (404, 'Ezra', 15, 1, 377),
       (405, 'Ezra', 15, 2, 1075),
       (406, 'Ezra', 15, 3, 554),
       (407, 'Ezra', 15, 4, 782),
       (408, 'Ezra', 15, 5, 600),
       (409, 'Ezra', 15, 6, 810),
       (410, 'Ezra', 15, 7, 893)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (411, 'Ezra', 15, 8, 1019),
       (412, 'Ezra', 15, 9, 635),
       (413, 'Ezra', 15, 10, 964),
       (414, 'Nehemiah', 16, 1, 409),
       (415, 'Nehemiah', 16, 2, 743),
       (416, 'Nehemiah', 16, 3, 932),
       (417, 'Nehemiah', 16, 4, 738),
       (418, 'Nehemiah', 16, 5, 657),
       (419, 'Nehemiah', 16, 6, 630),
       (420, 'Nehemiah', 16, 7, 1262)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (421, 'Nehemiah', 16, 8, 712),
       (422, 'Nehemiah', 16, 9, 1365),
       (423, 'Nehemiah', 16, 10, 694),
       (424, 'Nehemiah', 16, 11, 824),
       (425, 'Nehemiah', 16, 12, 992),
       (426, 'Nehemiah', 16, 13, 996),
       (427, 'Esther', 17, 1, 745),
       (428, 'Esther', 17, 2, 853),
       (429, 'Esther', 17, 3, 596),
       (430, 'Esther', 17, 4, 556)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (431, 'Esther', 17, 5, 511),
       (432, 'Esther', 17, 6, 503),
       (433, 'Esther', 17, 7, 363),
       (434, 'Esther', 17, 8, 693),
       (435, 'Esther', 17, 9, 1043),
       (436, 'Esther', 17, 10, 97),
       (437, 'Job', 18, 1, 669),
       (438, 'Job', 18, 2, 396),
       (439, 'Job', 18, 3, 461),
       (440, 'Job', 18, 4, 359)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (441, 'Job', 18, 5, 477),
       (442, 'Job', 18, 6, 528),
       (443, 'Job', 18, 7, 419),
       (444, 'Job', 18, 8, 372),
       (445, 'Job', 18, 9, 582),
       (446, 'Job', 18, 10, 425),
       (447, 'Job', 18, 11, 360),
       (448, 'Job', 18, 12, 429),
       (449, 'Job', 18, 13, 441),
       (450, 'Job', 18, 14, 428)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (451, 'Job', 18, 15, 599),
       (452, 'Job', 18, 16, 410),
       (453, 'Job', 18, 17, 278),
       (454, 'Job', 18, 18, 366),
       (455, 'Job', 18, 19, 516),
       (456, 'Job', 18, 20, 557),
       (457, 'Job', 18, 21, 555),
       (458, 'Job', 18, 22, 525),
       (459, 'Job', 18, 23, 307),
       (460, 'Job', 18, 24, 510)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (461, 'Job', 18, 25, 94),
       (462, 'Job', 18, 26, 218),
       (463, 'Job', 18, 27, 406),
       (464, 'Job', 18, 28, 483),
       (465, 'Job', 18, 29, 439),
       (466, 'Job', 18, 30, 566),
       (467, 'Job', 18, 31, 750),
       (468, 'Job', 18, 32, 400),
       (469, 'Job', 18, 33, 562),
       (470, 'Job', 18, 34, 652)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (471, 'Job', 18, 35, 270),
       (472, 'Job', 18, 36, 534),
       (473, 'Job', 18, 37, 445),
       (474, 'Job', 18, 38, 701),
       (475, 'Job', 18, 39, 531),
       (476, 'Job', 18, 40, 391),
       (477, 'Job', 18, 41, 550),
       (478, 'Job', 18, 42, 453),
       (479, 'Psalms', 19, 1, 133),
       (480, 'Psalms', 19, 2, 214)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (481, 'Psalms', 19, 3, 152),
       (482, 'Psalms', 19, 4, 183),
       (483, 'Psalms', 19, 5, 267),
       (484, 'Psalms', 19, 6, 186),
       (485, 'Psalms', 19, 7, 354),
       (486, 'Psalms', 19, 8, 185),
       (487, 'Psalms', 19, 9, 399),
       (488, 'Psalms', 19, 10, 375),
       (489, 'Psalms', 19, 11, 141),
       (490, 'Psalms', 19, 12, 168)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (491, 'Psalms', 19, 13, 121),
       (492, 'Psalms', 19, 14, 164),
       (493, 'Psalms', 19, 15, 106),
       (494, 'Psalms', 19, 16, 217),
       (495, 'Psalms', 19, 17, 326),
       (496, 'Psalms', 19, 18, 999),
       (497, 'Psalms', 19, 19, 288),
       (498, 'Psalms', 19, 20, 161),
       (499, 'Psalms', 19, 21, 258),
       (500, 'Psalms', 19, 22, 628)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (501, 'Psalms', 19, 23, 128),
       (502, 'Psalms', 19, 24, 189),
       (503, 'Psalms', 19, 25, 373),
       (504, 'Psalms', 19, 26, 197),
       (505, 'Psalms', 19, 27, 350),
       (506, 'Psalms', 19, 28, 216),
       (507, 'Psalms', 19, 29, 181),
       (508, 'Psalms', 19, 30, 258),
       (509, 'Psalms', 19, 31, 532),
       (510, 'Psalms', 19, 32, 255)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (511, 'Psalms', 19, 33, 369),
       (512, 'Psalms', 19, 34, 376),
       (513, 'Psalms', 19, 35, 591),
       (514, 'Psalms', 19, 36, 249),
       (515, 'Psalms', 19, 37, 743),
       (516, 'Psalms', 19, 38, 385),
       (517, 'Psalms', 19, 39, 291),
       (518, 'Psalms', 19, 40, 429),
       (519, 'Psalms', 19, 41, 261),
       (520, 'Psalms', 19, 42, 298)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (521, 'Psalms', 19, 43, 136),
       (522, 'Psalms', 19, 44, 505),
       (523, 'Psalms', 19, 45, 369),
       (524, 'Psalms', 19, 46, 225),
       (525, 'Psalms', 19, 47, 156),
       (526, 'Psalms', 19, 48, 249),
       (527, 'Psalms', 19, 49, 371),
       (528, 'Psalms', 19, 50, 426),
       (529, 'Psalms', 19, 51, 369),
       (530, 'Psalms', 19, 52, 209)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (531, 'Psalms', 19, 53, 171),
       (532, 'Psalms', 19, 54, 150),
       (533, 'Psalms', 19, 55, 469),
       (534, 'Psalms', 19, 56, 270),
       (535, 'Psalms', 19, 57, 264),
       (536, 'Psalms', 19, 58, 238),
       (537, 'Psalms', 19, 59, 390),
       (538, 'Psalms', 19, 60, 255),
       (539, 'Psalms', 19, 61, 156),
       (540, 'Psalms', 19, 62, 254)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (541, 'Psalms', 19, 63, 223),
       (542, 'Psalms', 19, 64, 206),
       (543, 'Psalms', 19, 65, 286),
       (544, 'Psalms', 19, 66, 349),
       (545, 'Psalms', 19, 67, 126),
       (546, 'Psalms', 19, 68, 731),
       (547, 'Psalms', 19, 69, 715),
       (548, 'Psalms', 19, 70, 122),
       (549, 'Psalms', 19, 71, 502),
       (550, 'Psalms', 19, 72, 396)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (551, 'Psalms', 19, 73, 456),
       (552, 'Psalms', 19, 74, 447),
       (553, 'Psalms', 19, 75, 212),
       (554, 'Psalms', 19, 76, 218),
       (555, 'Psalms', 19, 77, 365),
       (556, 'Psalms', 19, 78, 1299),
       (557, 'Psalms', 19, 79, 293),
       (558, 'Psalms', 19, 80, 362),
       (559, 'Psalms', 19, 81, 308),
       (560, 'Psalms', 19, 82, 126)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (561, 'Psalms', 19, 83, 295),
       (562, 'Psalms', 19, 84, 255),
       (563, 'Psalms', 19, 85, 228),
       (564, 'Psalms', 19, 86, 343),
       (565, 'Psalms', 19, 87, 127),
       (566, 'Psalms', 19, 88, 346),
       (567, 'Psalms', 19, 89, 929),
       (568, 'Psalms', 19, 90, 350),
       (569, 'Psalms', 19, 91, 301),
       (570, 'Psalms', 19, 92, 281)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (571, 'Psalms', 19, 93, 92),
       (572, 'Psalms', 19, 94, 363),
       (573, 'Psalms', 19, 95, 206),
       (574, 'Psalms', 19, 96, 225),
       (575, 'Psalms', 19, 97, 202),
       (576, 'Psalms', 19, 98, 176),
       (577, 'Psalms', 19, 99, 161),
       (578, 'Psalms', 19, 100, 92),
       (579, 'Psalms', 19, 101, 188),
       (580, 'Psalms', 19, 102, 503)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (581, 'Psalms', 19, 103, 360),
       (582, 'Psalms', 19, 104, 615),
       (583, 'Psalms', 19, 105, 679),
       (584, 'Psalms', 19, 106, 799),
       (585, 'Psalms', 19, 107, 720),
       (586, 'Psalms', 19, 108, 228),
       (587, 'Psalms', 19, 109, 575),
       (588, 'Psalms', 19, 110, 151),
       (589, 'Psalms', 19, 111, 181),
       (590, 'Psalms', 19, 112, 179)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (591, 'Psalms', 19, 113, 146),
       (592, 'Psalms', 19, 114, 113),
       (593, 'Psalms', 19, 115, 282),
       (594, 'Psalms', 19, 116, 291),
       (595, 'Psalms', 19, 117, 31),
       (596, 'Psalms', 19, 118, 482),
       (597, 'Psalms', 19, 119, 2647),
       (598, 'Psalms', 19, 120, 102),
       (599, 'Psalms', 19, 121, 118),
       (600, 'Psalms', 19, 122, 140)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (601, 'Psalms', 19, 123, 101),
       (602, 'Psalms', 19, 124, 132),
       (603, 'Psalms', 19, 125, 115),
       (604, 'Psalms', 19, 126, 105),
       (605, 'Psalms', 19, 127, 120),
       (606, 'Psalms', 19, 128, 107),
       (607, 'Psalms', 19, 129, 134),
       (608, 'Psalms', 19, 130, 122),
       (609, 'Psalms', 19, 131, 71),
       (610, 'Psalms', 19, 132, 298)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (611, 'Psalms', 19, 133, 76),
       (612, 'Psalms', 19, 134, 50),
       (613, 'Psalms', 19, 135, 340),
       (614, 'Psalms', 19, 136, 377),
       (615, 'Psalms', 19, 137, 172),
       (616, 'Psalms', 19, 138, 188),
       (617, 'Psalms', 19, 139, 449),
       (618, 'Psalms', 19, 140, 258),
       (619, 'Psalms', 19, 141, 225),
       (620, 'Psalms', 19, 142, 165)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (621, 'Psalms', 19, 143, 269),
       (622, 'Psalms', 19, 144, 314),
       (623, 'Psalms', 19, 145, 352),
       (624, 'Psalms', 19, 146, 178),
       (625, 'Psalms', 19, 147, 312),
       (626, 'Psalms', 19, 148, 215),
       (627, 'Psalms', 19, 149, 150),
       (628, 'Psalms', 19, 150, 80),
       (629, 'Proverbs', 20, 1, 564),
       (630, 'Proverbs', 20, 2, 334)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (631, 'Proverbs', 20, 3, 570),
       (632, 'Proverbs', 20, 4, 447),
       (633, 'Proverbs', 20, 5, 381),
       (634, 'Proverbs', 20, 6, 591),
       (635, 'Proverbs', 20, 7, 453),
       (636, 'Proverbs', 20, 8, 588),
       (637, 'Proverbs', 20, 9, 315),
       (638, 'Proverbs', 20, 10, 561),
       (639, 'Proverbs', 20, 11, 574),
       (640, 'Proverbs', 20, 12, 517)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (641, 'Proverbs', 20, 13, 434),
       (642, 'Proverbs', 20, 14, 623),
       (643, 'Proverbs', 20, 15, 571),
       (644, 'Proverbs', 20, 16, 584),
       (645, 'Proverbs', 20, 17, 512),
       (646, 'Proverbs', 20, 18, 408),
       (647, 'Proverbs', 20, 19, 536),
       (648, 'Proverbs', 20, 20, 520),
       (649, 'Proverbs', 20, 21, 542),
       (650, 'Proverbs', 20, 22, 527)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (651, 'Proverbs', 20, 23, 599),
       (652, 'Proverbs', 20, 24, 613),
       (653, 'Proverbs', 20, 25, 555),
       (654, 'Proverbs', 20, 26, 503),
       (655, 'Proverbs', 20, 27, 499),
       (656, 'Proverbs', 20, 28, 546),
       (657, 'Proverbs', 20, 29, 473),
       (658, 'Proverbs', 20, 30, 675),
       (659, 'Proverbs', 20, 31, 497),
       (660, 'Ecclesiastes', 21, 1, 399)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (661, 'Ecclesiastes', 21, 2, 763),
       (662, 'Ecclesiastes', 21, 3, 541),
       (663, 'Ecclesiastes', 21, 4, 408),
       (664, 'Ecclesiastes', 21, 5, 556),
       (665, 'Ecclesiastes', 21, 6, 315),
       (666, 'Ecclesiastes', 21, 7, 662),
       (667, 'Ecclesiastes', 21, 8, 530),
       (668, 'Ecclesiastes', 21, 9, 574),
       (669, 'Ecclesiastes', 21, 10, 423),
       (670, 'Ecclesiastes', 21, 11, 287)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (671, 'Ecclesiastes', 21, 12, 383),
       (672, 'Song of Solomon', 22, 1, 345),
       (673, 'Song of Solomon', 22, 2, 370),
       (674, 'Song of Solomon', 22, 3, 306),
       (675, 'Song of Solomon', 22, 4, 398),
       (676, 'Song of Solomon', 22, 5, 412),
       (677, 'Song of Solomon', 22, 6, 301),
       (678, 'Song of Solomon', 22, 7, 307),
       (679, 'Song of Solomon', 22, 8, 377),
       (680, 'Isaiah', 23, 1, 772)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (681, 'Isaiah', 23, 2, 591),
       (682, 'Isaiah', 23, 3, 601),
       (683, 'Isaiah', 23, 4, 213),
       (684, 'Isaiah', 23, 5, 898),
       (685, 'Isaiah', 23, 6, 370),
       (686, 'Isaiah', 23, 7, 719),
       (687, 'Isaiah', 23, 8, 592),
       (688, 'Isaiah', 23, 9, 618),
       (689, 'Isaiah', 23, 10, 959),
       (690, 'Isaiah', 23, 11, 534)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (691, 'Isaiah', 23, 12, 144),
       (692, 'Isaiah', 23, 13, 597),
       (693, 'Isaiah', 23, 14, 889),
       (694, 'Isaiah', 23, 15, 261),
       (695, 'Isaiah', 23, 16, 423),
       (696, 'Isaiah', 23, 17, 438),
       (697, 'Isaiah', 23, 18, 260),
       (698, 'Isaiah', 23, 19, 742),
       (699, 'Isaiah', 23, 20, 178),
       (700, 'Isaiah', 23, 21, 433)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (701, 'Isaiah', 23, 22, 694),
       (702, 'Isaiah', 23, 23, 479),
       (703, 'Isaiah', 23, 24, 603),
       (704, 'Isaiah', 23, 25, 388),
       (705, 'Isaiah', 23, 26, 558),
       (706, 'Isaiah', 23, 27, 425),
       (707, 'Isaiah', 23, 28, 833),
       (708, 'Isaiah', 23, 29, 766),
       (709, 'Isaiah', 23, 30, 1073),
       (710, 'Isaiah', 23, 31, 323)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (711, 'Isaiah', 23, 32, 453),
       (712, 'Isaiah', 23, 33, 603),
       (713, 'Isaiah', 23, 34, 526),
       (714, 'Isaiah', 23, 35, 286),
       (715, 'Isaiah', 23, 36, 708),
       (716, 'Isaiah', 23, 37, 1164),
       (717, 'Isaiah', 23, 38, 606),
       (718, 'Isaiah', 23, 39, 274),
       (719, 'Isaiah', 23, 40, 829),
       (720, 'Isaiah', 23, 41, 833)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (721, 'Isaiah', 23, 42, 702),
       (722, 'Isaiah', 23, 43, 735),
       (723, 'Isaiah', 23, 44, 907),
       (724, 'Isaiah', 23, 45, 796),
       (725, 'Isaiah', 23, 46, 356),
       (726, 'Isaiah', 23, 47, 483),
       (727, 'Isaiah', 23, 48, 640),
       (728, 'Isaiah', 23, 49, 882),
       (729, 'Isaiah', 23, 50, 380),
       (730, 'Isaiah', 23, 51, 783)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (731, 'Isaiah', 23, 52, 418),
       (732, 'Isaiah', 23, 53, 401),
       (733, 'Isaiah', 23, 54, 500),
       (734, 'Isaiah', 23, 55, 406),
       (735, 'Isaiah', 23, 56, 360),
       (736, 'Isaiah', 23, 57, 600),
       (737, 'Isaiah', 23, 58, 533),
       (738, 'Isaiah', 23, 59, 603),
       (739, 'Isaiah', 23, 60, 669),
       (740, 'Isaiah', 23, 61, 385)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (741, 'Isaiah', 23, 62, 363),
       (742, 'Isaiah', 23, 63, 558),
       (743, 'Isaiah', 23, 64, 321),
       (744, 'Isaiah', 23, 65, 780),
       (745, 'Isaiah', 23, 66, 839),
       (746, 'Jeremiah', 24, 1, 537),
       (747, 'Jeremiah', 24, 2, 1069),
       (748, 'Jeremiah', 24, 3, 823),
       (749, 'Jeremiah', 24, 4, 886),
       (750, 'Jeremiah', 24, 5, 895)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (751, 'Jeremiah', 24, 6, 856),
       (752, 'Jeremiah', 24, 7, 1008),
       (753, 'Jeremiah', 24, 8, 718),
       (754, 'Jeremiah', 24, 9, 793),
       (755, 'Jeremiah', 24, 10, 703),
       (756, 'Jeremiah', 24, 11, 759),
       (757, 'Jeremiah', 24, 12, 568),
       (758, 'Jeremiah', 24, 13, 768),
       (759, 'Jeremiah', 24, 14, 713),
       (760, 'Jeremiah', 24, 15, 718)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (761, 'Jeremiah', 24, 16, 715),
       (762, 'Jeremiah', 24, 17, 861),
       (763, 'Jeremiah', 24, 18, 673),
       (764, 'Jeremiah', 24, 19, 553),
       (765, 'Jeremiah', 24, 20, 621),
       (766, 'Jeremiah', 24, 21, 503),
       (767, 'Jeremiah', 24, 22, 859),
       (768, 'Jeremiah', 24, 23, 1186),
       (769, 'Jeremiah', 24, 24, 361),
       (770, 'Jeremiah', 24, 25, 1179)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (771, 'Jeremiah', 24, 26, 814),
       (772, 'Jeremiah', 24, 27, 782),
       (773, 'Jeremiah', 24, 28, 539),
       (774, 'Jeremiah', 24, 29, 1015),
       (775, 'Jeremiah', 24, 30, 731),
       (776, 'Jeremiah', 24, 31, 1312),
       (777, 'Jeremiah', 24, 32, 1469),
       (778, 'Jeremiah', 24, 33, 860),
       (779, 'Jeremiah', 24, 34, 848),
       (780, 'Jeremiah', 24, 35, 671)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (781, 'Jeremiah', 24, 36, 1136),
       (782, 'Jeremiah', 24, 37, 638),
       (783, 'Jeremiah', 24, 38, 1013),
       (784, 'Jeremiah', 24, 39, 582),
       (785, 'Jeremiah', 24, 40, 695),
       (786, 'Jeremiah', 24, 41, 693),
       (787, 'Jeremiah', 24, 42, 776),
       (788, 'Jeremiah', 24, 43, 470),
       (789, 'Jeremiah', 24, 44, 1249),
       (790, 'Jeremiah', 24, 45, 155)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (791, 'Jeremiah', 24, 46, 851),
       (792, 'Jeremiah', 24, 47, 214),
       (793, 'Jeremiah', 24, 48, 1223),
       (794, 'Jeremiah', 24, 49, 1215),
       (795, 'Jeremiah', 24, 50, 1494),
       (796, 'Jeremiah', 24, 51, 1900),
       (797, 'Jeremiah', 24, 52, 1113),
       (798, 'Lamentations', 25, 1, 791),
       (799, 'Lamentations', 25, 2, 908),
       (800, 'Lamentations', 25, 3, 957)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (801, 'Lamentations', 25, 4, 607),
       (802, 'Lamentations', 25, 5, 317),
       (803, 'Ezekiel', 26, 1, 889),
       (804, 'Ezekiel', 26, 2, 286),
       (805, 'Ezekiel', 26, 3, 836),
       (806, 'Ezekiel', 26, 4, 538),
       (807, 'Ezekiel', 26, 5, 654),
       (808, 'Ezekiel', 26, 6, 485),
       (809, 'Ezekiel', 26, 7, 791),
       (810, 'Ezekiel', 26, 8, 668)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (811, 'Ezekiel', 26, 9, 417),
       (812, 'Ezekiel', 26, 10, 669),
       (813, 'Ezekiel', 26, 11, 747),
       (814, 'Ezekiel', 26, 12, 820),
       (815, 'Ezekiel', 26, 13, 754),
       (816, 'Ezekiel', 26, 14, 756),
       (817, 'Ezekiel', 26, 15, 211),
       (818, 'Ezekiel', 26, 16, 1884),
       (819, 'Ezekiel', 26, 17, 794),
       (820, 'Ezekiel', 26, 18, 949)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (821, 'Ezekiel', 26, 19, 379),
       (822, 'Ezekiel', 26, 20, 1639),
       (823, 'Ezekiel', 26, 21, 983),
       (824, 'Ezekiel', 26, 22, 880),
       (825, 'Ezekiel', 26, 23, 1376),
       (826, 'Ezekiel', 26, 24, 802),
       (827, 'Ezekiel', 26, 25, 535),
       (828, 'Ezekiel', 26, 26, 750),
       (829, 'Ezekiel', 26, 27, 932),
       (830, 'Ezekiel', 26, 28, 828)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (831, 'Ezekiel', 26, 29, 736),
       (832, 'Ezekiel', 26, 30, 789),
       (833, 'Ezekiel', 26, 31, 692),
       (834, 'Ezekiel', 26, 32, 1111),
       (835, 'Ezekiel', 26, 33, 1109),
       (836, 'Ezekiel', 26, 34, 992),
       (837, 'Ezekiel', 26, 35, 414),
       (838, 'Ezekiel', 26, 36, 1225),
       (839, 'Ezekiel', 26, 37, 899),
       (840, 'Ezekiel', 26, 38, 802)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (841, 'Ezekiel', 26, 39, 974),
       (842, 'Ezekiel', 26, 40, 1577),
       (843, 'Ezekiel', 26, 41, 840),
       (844, 'Ezekiel', 26, 42, 602),
       (845, 'Ezekiel', 26, 43, 942),
       (846, 'Ezekiel', 26, 44, 1051),
       (847, 'Ezekiel', 26, 45, 911),
       (848, 'Ezekiel', 26, 46, 901),
       (849, 'Ezekiel', 26, 47, 832),
       (850, 'Ezekiel', 26, 48, 1086)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (851, 'Daniel', 27, 1, 615),
       (852, 'Daniel', 27, 2, 1571),
       (853, 'Daniel', 27, 3, 1044),
       (854, 'Daniel', 27, 4, 1332),
       (855, 'Daniel', 27, 5, 1037),
       (856, 'Daniel', 27, 6, 937),
       (857, 'Daniel', 27, 7, 966),
       (858, 'Daniel', 27, 8, 904),
       (859, 'Daniel', 27, 9, 1002),
       (860, 'Daniel', 27, 10, 661)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (861, 'Daniel', 27, 11, 1596),
       (862, 'Daniel', 27, 12, 434),
       (863, 'Hosea', 28, 1, 362),
       (864, 'Hosea', 28, 2, 709),
       (865, 'Hosea', 28, 3, 153),
       (866, 'Hosea', 28, 4, 493),
       (867, 'Hosea', 28, 5, 388),
       (868, 'Hosea', 28, 6, 263),
       (869, 'Hosea', 28, 7, 418),
       (870, 'Hosea', 28, 8, 341)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (871, 'Hosea', 28, 9, 498),
       (872, 'Hosea', 28, 10, 438),
       (873, 'Hosea', 28, 11, 332),
       (874, 'Hosea', 28, 12, 323),
       (875, 'Hosea', 28, 13, 446),
       (876, 'Hosea', 28, 14, 241),
       (877, 'Joel', 29, 1, 522),
       (878, 'Joel', 29, 2, 968),
       (879, 'Joel', 29, 3, 585),
       (880, 'Amos', 30, 1, 467)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (881, 'Amos', 30, 2, 454),
       (882, 'Amos', 30, 3, 407),
       (883, 'Amos', 30, 4, 443),
       (884, 'Amos', 30, 5, 689),
       (885, 'Amos', 30, 6, 421),
       (886, 'Amos', 30, 7, 485),
       (887, 'Amos', 30, 8, 422),
       (888, 'Amos', 30, 9, 555),
       (889, 'Obadiah', 31, 1, 670),
       (890, 'Jonah', 32, 1, 530)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (891, 'Jonah', 32, 2, 224),
       (892, 'Jonah', 32, 3, 267),
       (893, 'Jonah', 32, 4, 343),
       (894, 'Micah', 33, 1, 473),
       (895, 'Micah', 33, 2, 398),
       (896, 'Micah', 33, 3, 366),
       (897, 'Micah', 33, 4, 487),
       (898, 'Micah', 33, 5, 457),
       (899, 'Micah', 33, 6, 449),
       (900, 'Micah', 33, 7, 610)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (901, 'Nahum', 34, 1, 398),
       (902, 'Nahum', 34, 2, 362),
       (903, 'Nahum', 34, 3, 531),
       (904, 'Habakkuk', 35, 1, 429),
       (905, 'Habakkuk', 35, 2, 575),
       (906, 'Habakkuk', 35, 3, 497),
       (907, 'Zephaniah', 36, 1, 567),
       (908, 'Zephaniah', 36, 2, 473),
       (909, 'Zephaniah', 36, 3, 620),
       (910, 'Haggai', 37, 1, 458)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (911, 'Haggai', 37, 2, 678),
       (912, 'Zechariah', 38, 1, 618),
       (913, 'Zechariah', 38, 2, 321),
       (914, 'Zechariah', 38, 3, 301),
       (915, 'Zechariah', 38, 4, 379),
       (916, 'Zechariah', 38, 5, 349),
       (917, 'Zechariah', 38, 6, 433),
       (918, 'Zechariah', 38, 7, 387),
       (919, 'Zechariah', 38, 8, 713),
       (920, 'Zechariah', 38, 9, 539)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (921, 'Zechariah', 38, 10, 410),
       (922, 'Zechariah', 38, 11, 519),
       (923, 'Zechariah', 38, 12, 475),
       (924, 'Zechariah', 38, 13, 343),
       (925, 'Zechariah', 38, 14, 770),
       (926, 'Malachi', 39, 1, 497),
       (927, 'Malachi', 39, 2, 555),
       (928, 'Malachi', 39, 3, 559),
       (929, 'Malachi', 39, 4, 178),
       (930, 'Matthew', 40, 1, 499)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (931, 'Matthew', 40, 2, 633),
       (932, 'Matthew', 40, 3, 411),
       (933, 'Matthew', 40, 4, 569),
       (934, 'Matthew', 40, 5, 1104),
       (935, 'Matthew', 40, 6, 815),
       (936, 'Matthew', 40, 7, 659),
       (937, 'Matthew', 40, 8, 800),
       (938, 'Matthew', 40, 9, 874),
       (939, 'Matthew', 40, 10, 958),
       (940, 'Matthew', 40, 11, 692)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (941, 'Matthew', 40, 12, 1192),
       (942, 'Matthew', 40, 13, 1422),
       (943, 'Matthew', 40, 14, 764),
       (944, 'Matthew', 40, 15, 807),
       (945, 'Matthew', 40, 16, 688),
       (946, 'Matthew', 40, 17, 649),
       (947, 'Matthew', 40, 18, 898),
       (948, 'Matthew', 40, 19, 743),
       (949, 'Matthew', 40, 20, 777),
       (950, 'Matthew', 40, 21, 1188)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (951, 'Matthew', 40, 22, 879),
       (952, 'Matthew', 40, 23, 845),
       (953, 'Matthew', 40, 24, 1111),
       (954, 'Matthew', 40, 25, 1031),
       (955, 'Matthew', 40, 26, 1678),
       (956, 'Matthew', 40, 27, 1410),
       (957, 'Matthew', 40, 28, 440),
       (958, 'Mark', 41, 1, 962),
       (959, 'Mark', 41, 2, 736),
       (960, 'Mark', 41, 3, 695)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (961, 'Mark', 41, 4, 934),
       (962, 'Mark', 41, 5, 992),
       (963, 'Mark', 41, 6, 1349),
       (964, 'Mark', 41, 7, 821),
       (965, 'Mark', 41, 8, 858),
       (966, 'Mark', 41, 9, 1185),
       (967, 'Mark', 41, 10, 1258),
       (968, 'Mark', 41, 11, 772),
       (969, 'Mark', 41, 12, 1072),
       (970, 'Mark', 41, 13, 845)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (971, 'Mark', 41, 14, 1672),
       (972, 'Mark', 41, 15, 951),
       (973, 'Mark', 41, 16, 473),
       (974, 'Luke', 42, 1, 1655),
       (975, 'Luke', 42, 2, 1154),
       (976, 'Luke', 42, 3, 911),
       (977, 'Luke', 42, 4, 1069),
       (978, 'Luke', 42, 5, 981),
       (979, 'Luke', 42, 6, 1260),
       (980, 'Luke', 42, 7, 1232)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (981, 'Luke', 42, 8, 1489),
       (982, 'Luke', 42, 9, 1504),
       (983, 'Luke', 42, 10, 1032),
       (984, 'Luke', 42, 11, 1352),
       (985, 'Luke', 42, 12, 1477),
       (986, 'Luke', 42, 13, 904),
       (987, 'Luke', 42, 14, 863),
       (988, 'Luke', 42, 15, 768),
       (989, 'Luke', 42, 16, 815),
       (990, 'Luke', 42, 17, 837)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (991, 'Luke', 42, 18, 920),
       (992, 'Luke', 42, 19, 1079),
       (993, 'Luke', 42, 20, 995),
       (994, 'Luke', 42, 21, 846),
       (995, 'Luke', 42, 22, 1496),
       (996, 'Luke', 42, 23, 1134),
       (997, 'Luke', 42, 24, 1100),
       (998, 'John', 43, 1, 1064),
       (999, 'John', 43, 2, 531),
       (1000, 'John', 43, 3, 810)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1001, 'John', 43, 4, 1140),
       (1002, 'John', 43, 5, 1018),
       (1003, 'John', 43, 6, 1570),
       (1004, 'John', 43, 7, 1050),
       (1005, 'John', 43, 8, 1348),
       (1006, 'John', 43, 9, 891),
       (1007, 'John', 43, 10, 865),
       (1008, 'John', 43, 11, 1218),
       (1009, 'John', 43, 12, 1133),
       (1010, 'John', 43, 13, 862)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1011, 'John', 43, 14, 752),
       (1012, 'John', 43, 15, 643),
       (1013, 'John', 43, 16, 826),
       (1014, 'John', 43, 17, 652),
       (1015, 'John', 43, 18, 989),
       (1016, 'John', 43, 19, 1060),
       (1017, 'John', 43, 20, 767),
       (1018, 'John', 43, 21, 727),
       (1019, 'Acts', 44, 1, 685),
       (1020, 'Acts', 44, 2, 1058)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1021, 'Acts', 44, 3, 660),
       (1022, 'Acts', 44, 4, 920),
       (1023, 'Acts', 44, 5, 1079),
       (1024, 'Acts', 44, 6, 377),
       (1025, 'Acts', 44, 7, 1476),
       (1026, 'Acts', 44, 8, 897),
       (1027, 'Acts', 44, 9, 1061),
       (1028, 'Acts', 44, 10, 1148),
       (1029, 'Acts', 44, 11, 700),
       (1030, 'Acts', 44, 12, 691)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1031, 'Acts', 44, 13, 1307),
       (1032, 'Acts', 44, 14, 665),
       (1033, 'Acts', 44, 15, 957),
       (1034, 'Acts', 44, 16, 1011),
       (1035, 'Acts', 44, 17, 899),
       (1036, 'Acts', 44, 18, 693),
       (1037, 'Acts', 44, 19, 1025),
       (1038, 'Acts', 44, 20, 928),
       (1039, 'Acts', 44, 21, 1106),
       (1040, 'Acts', 44, 22, 796)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1041, 'Acts', 44, 23, 932),
       (1042, 'Acts', 44, 24, 641),
       (1043, 'Acts', 44, 25, 757),
       (1044, 'Acts', 44, 26, 811),
       (1045, 'Acts', 44, 27, 1121),
       (1046, 'Acts', 44, 28, 834),
       (1047, 'Romans', 45, 1, 739),
       (1048, 'Romans', 45, 2, 642),
       (1049, 'Romans', 45, 3, 618),
       (1050, 'Romans', 45, 4, 587)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1051, 'Romans', 45, 5, 524),
       (1052, 'Romans', 45, 6, 507),
       (1053, 'Romans', 45, 7, 636),
       (1054, 'Romans', 45, 8, 939),
       (1055, 'Romans', 45, 9, 746),
       (1056, 'Romans', 45, 10, 474),
       (1057, 'Romans', 45, 11, 840),
       (1058, 'Romans', 45, 12, 439),
       (1059, 'Romans', 45, 13, 380),
       (1060, 'Romans', 45, 14, 541)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1061, 'Romans', 45, 15, 785),
       (1062, 'Romans', 45, 16, 538),
       (1063, '1 Corinthians', 46, 1, 684),
       (1064, '1 Corinthians', 46, 2, 391),
       (1065, '1 Corinthians', 46, 3, 487),
       (1066, '1 Corinthians', 46, 4, 528),
       (1067, '1 Corinthians', 46, 5, 330),
       (1068, '1 Corinthians', 46, 6, 472),
       (1069, '1 Corinthians', 46, 7, 1010),
       (1070, '1 Corinthians', 46, 8, 308)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1071, '1 Corinthians', 46, 9, 708),
       (1072, '1 Corinthians', 46, 10, 679),
       (1073, '1 Corinthians', 46, 11, 756),
       (1074, '1 Corinthians', 46, 12, 621),
       (1075, '1 Corinthians', 46, 13, 288),
       (1076, '1 Corinthians', 46, 14, 912),
       (1077, '1 Corinthians', 46, 15, 1229),
       (1078, '1 Corinthians', 46, 16, 469),
       (1079, '2 Corinthians', 47, 1, 626),
       (1080, '2 Corinthians', 47, 2, 423)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1081, '2 Corinthians', 47, 3, 410),
       (1082, '2 Corinthians', 47, 4, 430),
       (1083, '2 Corinthians', 47, 5, 523),
       (1084, '2 Corinthians', 47, 6, 370),
       (1085, '2 Corinthians', 47, 7, 475),
       (1086, '2 Corinthians', 47, 8, 598),
       (1087, '2 Corinthians', 47, 9, 387),
       (1088, '2 Corinthians', 47, 10, 466),
       (1089, '2 Corinthians', 47, 11, 766),
       (1090, '2 Corinthians', 47, 12, 631)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1091, '2 Corinthians', 47, 13, 338),
       (1092, 'Galatians', 48, 1, 510),
       (1093, 'Galatians', 48, 2, 604),
       (1094, 'Galatians', 48, 3, 669),
       (1095, 'Galatians', 48, 4, 653),
       (1096, 'Galatians', 48, 5, 467),
       (1097, 'Galatians', 48, 6, 384),
       (1098, 'Ephesians', 49, 1, 539),
       (1099, 'Ephesians', 49, 2, 476),
       (1100, 'Ephesians', 49, 3, 444)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1101, 'Ephesians', 49, 4, 660),
       (1102, 'Ephesians', 49, 5, 605),
       (1103, 'Ephesians', 49, 6, 512),
       (1104, 'Philippians', 50, 1, 683),
       (1105, 'Philippians', 50, 2, 640),
       (1106, 'Philippians', 50, 3, 514),
       (1107, 'Philippians', 50, 4, 504),
       (1108, 'Colossians', 51, 1, 690),
       (1109, 'Colossians', 51, 2, 540),
       (1110, 'Colossians', 51, 3, 491)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1111, 'Colossians', 51, 4, 387),
       (1112, '1 Thessalonians', 52, 1, 252),
       (1113, '1 Thessalonians', 52, 2, 505),
       (1114, '1 Thessalonians', 52, 3, 313),
       (1115, '1 Thessalonians', 52, 4, 418),
       (1116, '1 Thessalonians', 52, 5, 442),
       (1117, '2 Thessalonians', 53, 1, 316),
       (1118, '2 Thessalonians', 53, 2, 410),
       (1119, '2 Thessalonians', 53, 3, 375),
       (1120, '1 Timothy', 54, 1, 459)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1121, '1 Timothy', 54, 2, 261),
       (1122, '1 Timothy', 54, 3, 327),
       (1123, '1 Timothy', 54, 4, 343),
       (1124, '1 Timothy', 54, 5, 508),
       (1125, '1 Timothy', 54, 6, 504),
       (1126, '2 Timothy', 55, 1, 426),
       (1127, '2 Timothy', 55, 2, 530),
       (1128, '2 Timothy', 55, 3, 314),
       (1129, '2 Timothy', 55, 4, 427),
       (1130, 'Titus', 56, 1, 359)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1131, 'Titus', 56, 2, 290),
       (1132, 'Titus', 56, 3, 307),
       (1133, 'Philemon', 57, 1, 469),
       (1134, 'Hebrews', 58, 1, 361),
       (1135, 'Hebrews', 58, 2, 487),
       (1136, 'Hebrews', 58, 3, 397),
       (1137, 'Hebrews', 58, 4, 435),
       (1138, 'Hebrews', 58, 5, 330),
       (1139, 'Hebrews', 58, 6, 444),
       (1140, 'Hebrews', 58, 7, 640)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1141, 'Hebrews', 58, 8, 417),
       (1142, 'Hebrews', 58, 9, 728),
       (1143, 'Hebrews', 58, 10, 835),
       (1144, 'Hebrews', 58, 11, 982),
       (1145, 'Hebrews', 58, 12, 741),
       (1146, 'Hebrews', 58, 13, 560),
       (1147, 'James', 59, 1, 575),
       (1148, 'James', 59, 2, 563),
       (1149, 'James', 59, 3, 391),
       (1150, 'James', 59, 4, 387)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1151, 'James', 59, 5, 499),
       (1152, '1 Peter', 60, 1, 626),
       (1153, '1 Peter', 60, 2, 567),
       (1154, '1 Peter', 60, 3, 560),
       (1155, '1 Peter', 60, 4, 471),
       (1156, '1 Peter', 60, 5, 316),
       (1157, '2 Peter', 61, 1, 522),
       (1158, '2 Peter', 61, 2, 587),
       (1159, '2 Peter', 61, 3, 502),
       (1160, '1 John', 62, 1, 258)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1161, '1 John', 62, 2, 766),
       (1162, '1 John', 62, 3, 557),
       (1163, '1 John', 62, 4, 497),
       (1164, '1 John', 62, 5, 515),
       (1165, '2 John', 63, 1, 313),
       (1166, '3 John', 64, 1, 314),
       (1167, 'Jude', 65, 1, 656),
       (1168, 'Revelation', 66, 1, 597),
       (1169, 'Revelation', 66, 2, 826),
       (1170, 'Revelation', 66, 3, 681)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1171, 'Revelation', 66, 4, 382),
       (1172, 'Revelation', 66, 5, 447),
       (1173, 'Revelation', 66, 6, 555),
       (1174, 'Revelation', 66, 7, 499),
       (1175, 'Revelation', 66, 8, 429),
       (1176, 'Revelation', 66, 9, 610),
       (1177, 'Revelation', 66, 10, 368),
       (1178, 'Revelation', 66, 11, 607),
       (1179, 'Revelation', 66, 12, 532),
       (1180, 'Revelation', 66, 13, 603)
ON CONFLICT DO NOTHING;
INSERT INTO static.chapters (id, book_name, book_id, chapter_nr, chapter_word_count)
VALUES (1181, 'Revelation', 66, 14, 680),
       (1182, 'Revelation', 66, 15, 264),
       (1183, 'Revelation', 66, 16, 593),
       (1184, 'Revelation', 66, 17, 557),
       (1185, 'Revelation', 66, 18, 784),
       (1186, 'Revelation', 66, 19, 675),
       (1187, 'Revelation', 66, 20, 500),
       (1188, 'Revelation', 66, 21, 769),
       (1189, 'Revelation', 66, 22, 606)
ON CONFLICT DO NOTHING;
