CREATE SCHEMA IF NOT EXISTS static;

CREATE TABLE IF NOT EXISTS static.verses
(
    id               int2 PRIMARY KEY, --int2 is up to 32,767 (there are 31,102 verses) 
    verse_nr         int2 NULL,
    verse_word_count int2 NULL
);

INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (250, 15, 10),
       (2053, 1, 8),
       (380, 19, 9),
       (626, 34, 9),
       (699, 6, 6),
       (977, 16, 11),
       (1166, 16, 14),
       (1460, 8, 12),
       (1535, 2, 6),
       (2433, 12, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3707, 14, 12),
       (4498, 8, 7),
       (5302, 11, 8),
       (6253, 50, 7),
       (6258, 55, 7),
       (6469, 8, 14),
       (6777, 22, 9),
       (8476, 26, 11),
       (8679, 25, 7),
       (9066, 14, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10254, 1, 4),
       (10393, 7, 11),
       (10653, 37, 9),
       (12288, 35, 4),
       (12622, 33, 4),
       (12907, 2, 6),
       (13031, 1, 8),
       (13073, 21, 12),
       (13130, 1, 6),
       (13205, 1, 8)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13357, 1, 6),
       (13647, 18, 13),
       (13866, 1, 7),
       (14063, 3, 11),
       (14142, 23, 14),
       (14316, 7, 10),
       (14651, 2, 9),
       (16149, 8, 10),
       (16227, 4, 12),
       (17389, 7, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17983, 13, 13),
       (20153, 25, 14),
       (20698, 17, 10),
       (20883, 1, 12),
       (21178, 20, 10),
       (21905, 30, 10),
       (22557, 8, 10),
       (22706, 6, 13),
       (23091, 1, 12),
       (23283, 48, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23473, 13, 11),
       (23933, 14, 3),
       (24305, 16, 6),
       (24450, 42, 8),
       (24476, 12, 15),
       (24583, 44, 3),
       (24660, 19, 11),
       (24736, 18, 11),
       (24993, 19, 12),
       (25409, 3, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25584, 30, 13),
       (25725, 36, 12),
       (26626, 45, 11),
       (26723, 23, 9),
       (27078, 18, 13),
       (27393, 30, 8),
       (27574, 16, 9),
       (27777, 7, 3),
       (27998, 6, 11),
       (28045, 22, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28337, 33, 11),
       (28602, 1, 13),
       (28781, 4, 16),
       (30267, 25, 7),
       (1, 1, 11),
       (30456, 9, 8),
       (30477, 11, 11),
       (30695, 22, 10),
       (4, 4, 18),
       (2, 2, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3, 3, 12),
       (5, 5, 23),
       (6, 6, 24),
       (7, 7, 27),
       (8, 8, 18),
       (9, 9, 26),
       (10, 10, 25),
       (11, 11, 33),
       (12, 12, 32),
       (13, 13, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14, 14, 34),
       (15, 15, 22),
       (16, 16, 28),
       (17, 17, 16),
       (18, 18, 26),
       (19, 19, 12),
       (20, 20, 26),
       (21, 21, 35),
       (22, 22, 24),
       (23, 23, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24, 24, 30),
       (25, 25, 35),
       (26, 26, 51),
       (27, 27, 23),
       (28, 28, 47),
       (29, 29, 42),
       (30, 30, 39),
       (31, 31, 26),
       (32, 1, 15),
       (33, 2, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (34, 3, 26),
       (35, 4, 26),
       (36, 5, 44),
       (37, 6, 18),
       (38, 7, 27),
       (39, 8, 20),
       (40, 9, 44),
       (41, 10, 22),
       (42, 11, 22),
       (43, 12, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4754, 35, 7),
       (44, 13, 21),
       (45, 14, 26),
       (46, 15, 22),
       (47, 16, 18),
       (48, 17, 30),
       (49, 18, 24),
       (50, 19, 46),
       (51, 20, 35),
       (52, 21, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (53, 22, 22),
       (54, 23, 29),
       (55, 24, 23),
       (56, 25, 15),
       (57, 1, 38),
       (58, 2, 20),
       (59, 3, 33),
       (60, 4, 13),
       (61, 5, 28),
       (62, 6, 56)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (63, 7, 26),
       (64, 8, 39),
       (65, 9, 15),
       (66, 10, 23),
       (67, 11, 26),
       (68, 12, 24),
       (69, 13, 26),
       (70, 14, 43),
       (71, 15, 29),
       (72, 16, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (73, 17, 54),
       (74, 18, 20),
       (75, 19, 34),
       (76, 20, 18),
       (77, 21, 17),
       (78, 22, 41),
       (79, 23, 21),
       (80, 24, 39),
       (81, 1, 26),
       (82, 2, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (83, 3, 23),
       (84, 4, 27),
       (85, 5, 21),
       (86, 6, 16),
       (137, 31, 17),
       (87, 7, 35),
       (88, 8, 29),
       (89, 9, 23),
       (90, 10, 21),
       (91, 11, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (92, 12, 26),
       (93, 13, 14),
       (94, 14, 48),
       (95, 15, 31),
       (96, 16, 22),
       (97, 17, 31),
       (98, 18, 19),
       (99, 19, 22),
       (100, 20, 18),
       (101, 21, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (102, 22, 26),
       (103, 23, 37),
       (104, 24, 12),
       (105, 25, 33),
       (106, 26, 28),
       (107, 1, 25),
       (108, 2, 22),
       (109, 3, 25),
       (110, 4, 20),
       (111, 5, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (112, 6, 12),
       (113, 7, 18),
       (114, 8, 16),
       (115, 9, 9),
       (116, 10, 18),
       (117, 11, 16),
       (118, 12, 9),
       (119, 13, 18),
       (120, 14, 16),
       (121, 15, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (122, 16, 18),
       (123, 17, 17),
       (124, 18, 13),
       (125, 19, 16),
       (126, 20, 17),
       (127, 21, 11),
       (128, 22, 18),
       (129, 23, 14),
       (130, 24, 14),
       (131, 25, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (132, 26, 19),
       (133, 27, 17),
       (134, 28, 14),
       (135, 29, 33),
       (136, 30, 19),
       (138, 32, 15),
       (139, 1, 23),
       (140, 2, 25),
       (141, 3, 29),
       (142, 4, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (143, 5, 28),
       (144, 6, 20),
       (145, 7, 39),
       (146, 8, 10),
       (147, 9, 21),
       (148, 10, 10),
       (149, 11, 15),
       (150, 12, 21),
       (151, 13, 33),
       (152, 14, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (153, 15, 30),
       (154, 16, 41),
       (155, 17, 35),
       (156, 18, 29),
       (157, 19, 31),
       (158, 20, 36),
       (159, 21, 28),
       (160, 22, 14),
       (161, 1, 26),
       (162, 2, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (163, 3, 25),
       (164, 4, 38),
       (165, 5, 11),
       (166, 6, 17),
       (167, 7, 27),
       (168, 8, 22),
       (169, 9, 19),
       (170, 10, 20),
       (171, 11, 42),
       (172, 12, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (173, 13, 33),
       (174, 14, 38),
       (175, 15, 22),
       (176, 16, 23),
       (177, 17, 27),
       (178, 18, 21),
       (179, 19, 22),
       (180, 20, 13),
       (321, 2, 13),
       (181, 21, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29880, 9, 8),
       (182, 22, 22),
       (183, 23, 48),
       (184, 24, 13),
       (185, 1, 34),
       (186, 2, 21),
       (187, 3, 23),
       (188, 4, 21),
       (189, 5, 28),
       (190, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (191, 7, 24),
       (192, 8, 23),
       (193, 9, 50),
       (194, 10, 19),
       (195, 11, 32),
       (196, 12, 22),
       (197, 13, 51),
       (198, 14, 19),
       (199, 15, 7),
       (200, 16, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (201, 17, 44),
       (202, 18, 17),
       (203, 19, 23),
       (204, 20, 26),
       (205, 21, 52),
       (206, 22, 23),
       (207, 1, 20),
       (208, 2, 45),
       (209, 3, 20),
       (210, 4, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (211, 5, 45),
       (212, 6, 22),
       (213, 7, 17),
       (214, 8, 13),
       (215, 9, 16),
       (216, 10, 36),
       (217, 11, 36),
       (218, 12, 29),
       (219, 13, 24),
       (220, 14, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (221, 15, 33),
       (4792, 31, 11),
       (222, 16, 36),
       (223, 17, 27),
       (494, 36, 13),
       (224, 18, 25),
       (225, 19, 16),
       (226, 20, 12),
       (227, 21, 17),
       (228, 22, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (229, 23, 38),
       (230, 24, 17),
       (231, 25, 17),
       (232, 26, 17),
       (233, 27, 19),
       (234, 28, 12),
       (235, 29, 16),
       (236, 1, 26),
       (237, 2, 18),
       (238, 3, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (239, 4, 12),
       (240, 5, 24),
       (241, 6, 13),
       (242, 7, 23),
       (243, 8, 15),
       (244, 9, 19),
       (245, 10, 20),
       (246, 11, 18),
       (247, 12, 13),
       (248, 13, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (249, 14, 12),
       (251, 16, 10),
       (252, 17, 10),
       (253, 18, 20),
       (254, 19, 30),
       (255, 20, 19),
       (256, 21, 23),
       (257, 22, 14),
       (258, 23, 13),
       (259, 24, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (260, 25, 30),
       (261, 26, 11),
       (262, 27, 7),
       (263, 28, 7),
       (264, 29, 14),
       (265, 30, 17),
       (266, 31, 19),
       (267, 32, 29),
       (268, 1, 13),
       (269, 2, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (270, 3, 28),
       (271, 4, 39),
       (272, 5, 18),
       (273, 6, 36),
       (274, 7, 20),
       (275, 8, 22),
       (276, 9, 35),
       (277, 10, 21),
       (278, 11, 16),
       (279, 12, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (280, 13, 18),
       (281, 14, 9),
       (282, 15, 18),
       (283, 16, 11),
       (284, 17, 18),
       (285, 18, 9),
       (286, 19, 18),
       (287, 20, 11),
       (288, 21, 18),
       (289, 22, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (290, 23, 16),
       (291, 24, 11),
       (292, 25, 18),
       (293, 26, 12),
       (294, 27, 18),
       (295, 28, 19),
       (296, 29, 37),
       (297, 30, 9),
       (298, 31, 54),
       (299, 32, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (300, 1, 30),
       (301, 2, 25),
       (302, 3, 29),
       (303, 4, 29),
       (304, 5, 49),
       (305, 6, 25),
       (306, 7, 28),
       (307, 8, 45),
       (308, 9, 10),
       (309, 10, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (310, 11, 35),
       (311, 12, 32),
       (312, 13, 28),
       (313, 14, 23),
       (314, 15, 22),
       (315, 16, 30),
       (316, 17, 17),
       (317, 18, 27),
       (318, 19, 28),
       (319, 20, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (320, 1, 24),
       (322, 3, 30),
       (323, 4, 24),
       (324, 5, 14),
       (325, 6, 27),
       (326, 7, 31),
       (327, 8, 29),
       (328, 9, 43),
       (329, 10, 43),
       (330, 11, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (331, 12, 25),
       (332, 13, 13),
       (333, 14, 33),
       (334, 15, 20),
       (335, 16, 32),
       (336, 17, 24),
       (337, 18, 26),
       (338, 1, 27),
       (339, 2, 34),
       (340, 3, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (341, 4, 13),
       (342, 5, 33),
       (343, 6, 15),
       (344, 7, 30),
       (345, 8, 47),
       (346, 9, 26),
       (347, 10, 31),
       (348, 11, 19),
       (349, 12, 19),
       (350, 13, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (351, 14, 31),
       (352, 15, 29),
       (353, 16, 25),
       (354, 17, 38),
       (355, 18, 19),
       (356, 19, 19),
       (357, 20, 23),
       (358, 21, 19),
       (359, 22, 25),
       (360, 23, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (361, 24, 29),
       (362, 1, 27),
       (529, 15, 19),
       (363, 2, 29),
       (364, 3, 22),
       (365, 4, 33),
       (366, 5, 34),
       (367, 6, 14),
       (368, 7, 26),
       (369, 8, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (370, 9, 34),
       (371, 10, 27),
       (372, 11, 16),
       (373, 12, 24),
       (374, 13, 35),
       (375, 14, 21),
       (376, 15, 19),
       (377, 16, 21),
       (378, 17, 29),
       (379, 18, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (381, 20, 10),
       (382, 21, 13),
       (383, 1, 21),
       (384, 2, 40),
       (385, 3, 34),
       (386, 4, 25),
       (387, 5, 38),
       (388, 6, 35),
       (389, 7, 24),
       (390, 8, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (391, 9, 19),
       (392, 10, 23),
       (393, 11, 32),
       (394, 12, 34),
       (395, 13, 31),
       (396, 14, 16),
       (397, 15, 19),
       (398, 16, 15),
       (399, 1, 29),
       (400, 2, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (401, 3, 13),
       (402, 4, 21),
       (403, 5, 28),
       (404, 6, 22),
       (405, 7, 35),
       (406, 8, 33),
       (4793, 32, 12),
       (407, 9, 24),
       (408, 10, 25),
       (409, 11, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (410, 12, 38),
       (411, 13, 32),
       (412, 14, 29),
       (413, 15, 24),
       (414, 16, 36),
       (415, 17, 36),
       (416, 18, 13),
       (417, 19, 38),
       (418, 20, 37),
       (419, 21, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (420, 22, 14),
       (421, 23, 49),
       (422, 24, 19),
       (423, 25, 19),
       (424, 26, 12),
       (425, 27, 25),
       (426, 1, 24),
       (427, 2, 37),
       (428, 3, 23),
       (429, 4, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (430, 5, 37),
       (431, 6, 24),
       (432, 7, 26),
       (433, 8, 31),
       (434, 9, 18),
       (435, 10, 35),
       (436, 11, 24),
       (437, 12, 21),
       (438, 13, 22),
       (439, 14, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (440, 15, 20),
       (441, 16, 23),
       (442, 17, 13),
       (443, 18, 24),
       (444, 19, 49),
       (445, 20, 20),
       (446, 21, 30),
       (447, 22, 17),
       (448, 23, 15),
       (4794, 33, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (449, 24, 24),
       (450, 25, 42),
       (451, 26, 24),
       (452, 27, 24),
       (453, 28, 35),
       (454, 29, 30),
       (455, 30, 35),
       (456, 31, 36),
       (457, 32, 38),
       (458, 33, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (459, 1, 38),
       (460, 2, 50),
       (461, 3, 32),
       (462, 4, 30),
       (463, 5, 31),
       (464, 6, 16),
       (465, 7, 13),
       (466, 8, 50),
       (467, 9, 49),
       (468, 10, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (469, 11, 29),
       (470, 12, 34),
       (471, 13, 25),
       (472, 14, 43),
       (473, 15, 33),
       (474, 16, 43),
       (475, 17, 39),
       (476, 18, 11),
       (477, 19, 41),
       (478, 20, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (479, 21, 27),
       (480, 22, 24),
       (481, 23, 13),
       (482, 24, 17),
       (483, 25, 24),
       (484, 26, 16),
       (485, 27, 18),
       (486, 28, 33),
       (572, 24, 18),
       (487, 29, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (488, 30, 37),
       (489, 31, 34),
       (490, 32, 23),
       (491, 33, 33),
       (492, 34, 49),
       (493, 35, 31),
       (495, 37, 24),
       (496, 38, 28),
       (497, 1, 23),
       (498, 2, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (499, 3, 38),
       (500, 4, 19),
       (501, 5, 37),
       (502, 6, 40),
       (503, 7, 42),
       (504, 8, 27),
       (505, 9, 47),
       (506, 10, 15),
       (507, 11, 27),
       (508, 12, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (509, 13, 46),
       (510, 14, 24),
       (511, 15, 15),
       (512, 16, 41),
       (513, 17, 21),
       (514, 18, 21),
       (515, 1, 18),
       (516, 2, 24),
       (517, 3, 20),
       (518, 4, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (519, 5, 16),
       (520, 6, 18),
       (521, 7, 27),
       (522, 8, 21),
       (523, 9, 17),
       (524, 10, 29),
       (525, 11, 16),
       (526, 12, 42),
       (527, 13, 19),
       (528, 14, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (530, 16, 46),
       (531, 17, 42),
       (532, 18, 20),
       (533, 19, 27),
       (534, 20, 24),
       (535, 21, 22),
       (536, 22, 31),
       (621, 29, 21),
       (537, 23, 51),
       (538, 24, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (539, 25, 19),
       (540, 26, 26),
       (541, 27, 18),
       (542, 28, 12),
       (543, 29, 18),
       (544, 30, 28),
       (545, 31, 15),
       (546, 32, 29),
       (547, 33, 21),
       (548, 34, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (549, 1, 25),
       (550, 2, 43),
       (551, 3, 48),
       (552, 4, 16),
       (553, 5, 31),
       (554, 6, 35),
       (555, 7, 38),
       (556, 8, 23),
       (557, 9, 39),
       (558, 10, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (559, 11, 22),
       (560, 12, 37),
       (561, 13, 43),
       (562, 14, 27),
       (563, 15, 15),
       (564, 16, 25),
       (565, 17, 41),
       (566, 18, 20),
       (567, 19, 24),
       (568, 20, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (569, 21, 15),
       (570, 22, 11),
       (571, 23, 15),
       (573, 1, 23),
       (574, 2, 28),
       (575, 3, 17),
       (576, 4, 30),
       (577, 5, 11),
       (578, 6, 38),
       (579, 7, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (580, 8, 34),
       (710, 17, 15),
       (581, 9, 43),
       (582, 10, 40),
       (583, 11, 37),
       (584, 12, 12),
       (585, 13, 44),
       (586, 14, 8),
       (587, 15, 27),
       (588, 16, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (589, 17, 42),
       (590, 18, 25),
       (591, 19, 28),
       (592, 20, 27),
       (593, 1, 18),
       (594, 2, 28),
       (595, 3, 39),
       (596, 4, 20),
       (597, 5, 34),
       (598, 6, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (599, 7, 58),
       (600, 8, 29),
       (601, 9, 21),
       (602, 10, 38),
       (603, 11, 31),
       (604, 12, 28),
       (605, 13, 25),
       (606, 14, 65),
       (607, 15, 38),
       (608, 16, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (609, 17, 23),
       (610, 18, 22),
       (4795, 34, 10),
       (611, 19, 23),
       (612, 20, 25),
       (613, 21, 22),
       (614, 22, 36),
       (615, 23, 25),
       (616, 24, 21),
       (617, 25, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (618, 26, 10),
       (619, 27, 43),
       (620, 28, 15),
       (622, 30, 53),
       (623, 31, 25),
       (624, 32, 38),
       (625, 33, 28),
       (627, 35, 35),
       (628, 36, 27),
       (629, 37, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (630, 38, 21),
       (631, 39, 14),
       (632, 40, 39),
       (633, 41, 30),
       (634, 42, 29),
       (635, 43, 42),
       (636, 44, 33),
       (637, 45, 40),
       (638, 46, 34),
       (639, 47, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (640, 48, 37),
       (641, 49, 32),
       (642, 50, 21),
       (643, 51, 24),
       (644, 52, 23),
       (645, 53, 32),
       (646, 54, 35),
       (647, 55, 26),
       (648, 56, 25),
       (649, 57, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (650, 58, 21),
       (651, 59, 18),
       (652, 60, 32),
       (653, 61, 26),
       (654, 62, 20),
       (655, 63, 27),
       (656, 64, 17),
       (657, 65, 35),
       (658, 66, 13),
       (659, 67, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (660, 1, 11),
       (661, 2, 16),
       (662, 3, 18),
       (663, 4, 22),
       (664, 5, 10),
       (665, 6, 32),
       (666, 7, 22),
       (667, 8, 27),
       (668, 9, 29),
       (669, 10, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (670, 11, 24),
       (671, 12, 21),
       (672, 13, 30),
       (673, 14, 7),
       (674, 15, 8),
       (675, 16, 25),
       (676, 17, 32),
       (677, 18, 24),
       (678, 19, 14),
       (679, 20, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (680, 21, 23),
       (681, 22, 26),
       (682, 23, 39),
       (683, 24, 17),
       (684, 25, 19),
       (685, 26, 33),
       (686, 27, 25),
       (687, 28, 16),
       (688, 29, 16),
       (689, 30, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (690, 31, 9),
       (691, 32, 19),
       (692, 33, 20),
       (693, 34, 28),
       (694, 1, 31),
       (695, 2, 23),
       (696, 3, 41),
       (697, 4, 34),
       (698, 5, 18),
       (744, 16, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (700, 7, 46),
       (701, 8, 36),
       (702, 9, 37),
       (703, 10, 31),
       (704, 11, 22),
       (705, 12, 19),
       (706, 13, 16),
       (707, 14, 20),
       (708, 15, 27),
       (709, 16, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (711, 18, 46),
       (712, 19, 17),
       (713, 20, 30),
       (714, 21, 20),
       (715, 22, 43),
       (716, 23, 10),
       (717, 24, 40),
       (718, 25, 27),
       (719, 26, 19),
       (720, 27, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (721, 28, 36),
       (722, 29, 38),
       (723, 30, 13),
       (724, 31, 26),
       (725, 32, 32),
       (726, 33, 18),
       (727, 34, 27),
       (728, 35, 13),
       (729, 1, 42),
       (730, 2, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (731, 3, 24),
       (732, 4, 28),
       (733, 5, 25),
       (734, 6, 20),
       (735, 7, 21),
       (736, 8, 15),
       (737, 9, 31),
       (738, 10, 22),
       (739, 11, 22),
       (740, 12, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (741, 13, 23),
       (742, 14, 23),
       (743, 15, 27),
       (745, 17, 21),
       (746, 18, 22),
       (747, 19, 37),
       (748, 20, 30),
       (749, 21, 27),
       (750, 22, 29),
       (751, 23, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (752, 24, 15),
       (753, 25, 43),
       (754, 26, 16),
       (755, 27, 38),
       (756, 28, 24),
       (757, 29, 41),
       (758, 30, 40),
       (759, 31, 36),
       (760, 32, 22),
       (761, 33, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (762, 34, 31),
       (763, 35, 15),
       (764, 36, 43),
       (765, 37, 46),
       (766, 38, 30),
       (767, 39, 29),
       (768, 40, 35),
       (769, 41, 37),
       (770, 42, 40),
       (771, 43, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (772, 44, 15),
       (773, 45, 40),
       (774, 46, 44),
       (775, 1, 26),
       (776, 2, 31),
       (777, 3, 21),
       (778, 4, 30),
       (779, 5, 29),
       (780, 6, 46),
       (781, 7, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (782, 8, 14),
       (783, 9, 30),
       (784, 10, 12),
       (785, 11, 42),
       (786, 12, 32),
       (787, 13, 38),
       (788, 14, 48),
       (789, 15, 40),
       (790, 16, 22),
       (791, 17, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (792, 18, 35),
       (793, 19, 22),
       (1694, 8, 10),
       (794, 20, 35),
       (795, 21, 19),
       (796, 22, 33),
       (797, 1, 18),
       (798, 2, 40),
       (799, 3, 35),
       (800, 4, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (801, 5, 19),
       (802, 6, 26),
       (803, 7, 30),
       (804, 8, 28),
       (805, 9, 19),
       (806, 10, 50),
       (807, 11, 12),
       (808, 12, 26),
       (809, 13, 42),
       (810, 14, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (811, 15, 25),
       (812, 16, 21),
       (813, 17, 14),
       (814, 18, 19),
       (815, 19, 25),
       (816, 20, 24),
       (817, 21, 22),
       (818, 22, 15),
       (819, 23, 26),
       (820, 24, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (821, 25, 41),
       (822, 26, 20),
       (823, 27, 28),
       (824, 28, 18),
       (825, 29, 15),
       (826, 30, 24),
       (827, 31, 17),
       (828, 32, 31),
       (829, 33, 33),
       (830, 34, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (831, 35, 29),
       (832, 1, 27),
       (833, 2, 28),
       (834, 3, 27),
       (835, 4, 16),
       (836, 5, 9),
       (837, 6, 26),
       (838, 7, 14),
       (839, 8, 22),
       (840, 9, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (841, 10, 10),
       (842, 11, 11),
       (843, 12, 11),
       (844, 13, 20),
       (845, 14, 38),
       (846, 15, 44),
       (847, 16, 43),
       (848, 17, 15),
       (849, 18, 24),
       (850, 19, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (851, 20, 32),
       (852, 21, 12),
       (853, 22, 14),
       (854, 23, 16),
       (855, 24, 14),
       (856, 25, 31),
       (857, 26, 28),
       (858, 27, 28),
       (859, 28, 13),
       (860, 29, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (861, 30, 37),
       (862, 31, 35),
       (863, 32, 40),
       (864, 33, 45),
       (865, 34, 14),
       (866, 35, 48),
       (867, 36, 20),
       (868, 37, 34),
       (869, 38, 35),
       (870, 39, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (871, 40, 40),
       (872, 41, 35),
       (873, 42, 23),
       (874, 43, 20),
       (875, 1, 35),
       (876, 2, 17),
       (877, 3, 23),
       (878, 4, 15),
       (879, 5, 29),
       (880, 6, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (881, 7, 21),
       (882, 8, 34),
       (883, 9, 16),
       (1403, 16, 17),
       (884, 10, 39),
       (885, 11, 19),
       (886, 12, 35),
       (887, 13, 36),
       (888, 14, 24),
       (889, 15, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (890, 16, 29),
       (891, 17, 15),
       (892, 18, 39),
       (893, 19, 19),
       (894, 20, 19),
       (895, 21, 27),
       (896, 22, 14),
       (897, 23, 24),
       (898, 24, 32),
       (899, 25, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (900, 26, 28),
       (901, 27, 33),
       (902, 28, 18),
       (903, 29, 38),
       (904, 30, 25),
       (905, 31, 25),
       (906, 32, 35),
       (907, 33, 41),
       (908, 34, 30),
       (909, 35, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (910, 36, 31),
       (911, 37, 34),
       (912, 38, 30),
       (913, 39, 33),
       (914, 40, 23),
       (915, 41, 33),
       (916, 42, 43),
       (917, 43, 51),
       (918, 44, 23),
       (919, 45, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (920, 46, 25),
       (921, 47, 13),
       (922, 48, 22),
       (923, 49, 19),
       (924, 50, 29),
       (925, 51, 21),
       (926, 52, 36),
       (927, 53, 28),
       (928, 54, 28),
       (929, 55, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (930, 1, 14),
       (931, 2, 22),
       (932, 3, 20),
       (933, 4, 28),
       (934, 5, 31),
       (935, 6, 27),
       (936, 7, 30),
       (937, 8, 22),
       (938, 9, 36),
       (939, 10, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (940, 11, 32),
       (941, 12, 26),
       (942, 13, 22),
       (943, 14, 15),
       (944, 15, 18),
       (945, 16, 32),
       (946, 17, 30),
       (947, 18, 27),
       (948, 19, 29),
       (949, 20, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (950, 21, 17),
       (951, 22, 28),
       (952, 23, 18),
       (953, 24, 19),
       (954, 25, 32),
       (955, 26, 24),
       (956, 27, 14),
       (957, 28, 26),
       (958, 29, 32),
       (959, 30, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (960, 31, 18),
       (961, 32, 39),
       (962, 1, 35),
       (963, 2, 21),
       (964, 3, 23),
       (965, 4, 21),
       (966, 5, 33),
       (967, 6, 14),
       (968, 7, 23),
       (969, 8, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (970, 9, 16),
       (971, 10, 44),
       (972, 11, 32),
       (973, 12, 19),
       (974, 13, 37),
       (975, 14, 45),
       (976, 15, 34),
       (978, 17, 26),
       (979, 18, 29),
       (980, 19, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (981, 20, 13),
       (982, 1, 21),
       (983, 2, 27),
       (984, 3, 22),
       (985, 4, 15),
       (986, 5, 29),
       (987, 6, 15),
       (988, 7, 45),
       (989, 8, 26),
       (990, 9, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (991, 10, 24),
       (992, 11, 28),
       (993, 12, 27),
       (994, 13, 23),
       (995, 14, 26),
       (996, 15, 24),
       (1253, 57, 21),
       (997, 16, 29),
       (998, 17, 23),
       (999, 18, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1000, 19, 30),
       (1001, 20, 23),
       (1002, 21, 42),
       (1003, 22, 30),
       (1004, 23, 26),
       (1005, 24, 35),
       (1006, 25, 43),
       (1007, 26, 26),
       (1008, 27, 19),
       (1009, 28, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1010, 29, 27),
       (1057, 16, 26),
       (1011, 30, 53),
       (1012, 31, 14),
       (1013, 1, 36),
       (1014, 2, 30),
       (1015, 3, 39),
       (1016, 4, 34),
       (1017, 5, 28),
       (1018, 6, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1019, 7, 30),
       (1020, 8, 26),
       (1021, 9, 16),
       (1022, 10, 31),
       (1023, 11, 33),
       (1024, 12, 28),
       (1025, 13, 15),
       (1026, 14, 31),
       (1027, 15, 16),
       (1028, 16, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1029, 17, 27),
       (1030, 18, 27),
       (1031, 19, 17),
       (1032, 20, 22),
       (1033, 21, 13),
       (1034, 22, 35),
       (1035, 23, 20),
       (1036, 24, 8),
       (1037, 25, 12),
       (1254, 1, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1038, 26, 26),
       (1039, 27, 22),
       (1040, 28, 12),
       (1041, 29, 28),
       (1042, 1, 12),
       (1043, 2, 29),
       (1044, 3, 9),
       (1045, 4, 11),
       (1046, 5, 25),
       (1047, 6, 49)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1048, 7, 26),
       (1049, 8, 10),
       (1050, 9, 16),
       (1051, 10, 27),
       (1052, 11, 14),
       (1053, 12, 25),
       (1054, 13, 23),
       (1055, 14, 29),
       (1056, 15, 27),
       (1058, 17, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1059, 18, 32),
       (1060, 19, 16),
       (1061, 20, 21),
       (1062, 21, 25),
       (1063, 22, 16),
       (1064, 23, 16),
       (1065, 24, 31),
       (1066, 25, 15),
       (1067, 26, 15),
       (1068, 27, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1069, 28, 10),
       (1070, 29, 18),
       (1071, 30, 25),
       (1072, 31, 23),
       (1073, 32, 18),
       (1074, 33, 16),
       (1075, 34, 16),
       (1076, 35, 30),
       (1077, 36, 12),
       (1078, 37, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1079, 38, 15),
       (1080, 39, 39),
       (1081, 40, 29),
       (1082, 41, 7),
       (1083, 42, 7),
       (1084, 43, 29),
       (1085, 1, 17),
       (1086, 2, 50),
       (1087, 3, 28),
       (1088, 4, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1089, 5, 20),
       (1090, 6, 16),
       (1091, 7, 32),
       (1092, 8, 35),
       (1093, 9, 36),
       (1094, 10, 48),
       (1095, 11, 14),
       (1096, 12, 13),
       (1097, 13, 31),
       (1098, 14, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1099, 15, 24),
       (1100, 16, 20),
       (1101, 17, 30),
       (1102, 18, 21),
       (1103, 19, 11),
       (1315, 24, 26),
       (1104, 20, 37),
       (1105, 21, 20),
       (1106, 22, 40),
       (1107, 23, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1108, 24, 22),
       (1109, 25, 42),
       (1110, 26, 20),
       (1111, 27, 31),
       (1112, 28, 35),
       (1113, 29, 20),
       (1114, 30, 19),
       (1115, 31, 19),
       (1116, 32, 33),
       (1117, 33, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1118, 34, 19),
       (1119, 35, 40),
       (1120, 36, 20),
       (1121, 1, 27),
       (1122, 2, 24),
       (1123, 3, 14),
       (1124, 4, 15),
       (1125, 5, 22),
       (1126, 6, 16),
       (1127, 7, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1128, 8, 31),
       (1379, 20, 17),
       (1129, 9, 40),
       (1130, 10, 19),
       (1131, 11, 45),
       (1132, 12, 34),
       (1133, 13, 20),
       (1134, 14, 52),
       (1135, 15, 18),
       (1136, 16, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1137, 17, 29),
       (1138, 18, 42),
       (1139, 19, 22),
       (1140, 20, 31),
       (1141, 21, 30),
       (1142, 22, 27),
       (1143, 23, 27),
       (1144, 24, 45),
       (1230, 34, 29),
       (1145, 25, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1146, 26, 30),
       (1147, 27, 19),
       (1148, 28, 32),
       (1149, 29, 35),
       (1150, 30, 21),
       (1151, 1, 36),
       (1152, 2, 23),
       (1153, 3, 23),
       (1154, 4, 31),
       (1155, 5, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1156, 6, 35),
       (1157, 7, 25),
       (1158, 8, 34),
       (1159, 9, 37),
       (1160, 10, 29),
       (1161, 11, 31),
       (1162, 12, 26),
       (1163, 13, 22),
       (1164, 14, 43),
       (1165, 15, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1167, 17, 27),
       (1168, 18, 24),
       (1169, 19, 34),
       (1170, 20, 29),
       (1171, 21, 24),
       (1172, 22, 31),
       (1173, 23, 30),
       (1174, 1, 27),
       (1175, 2, 22),
       (1176, 3, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1177, 4, 23),
       (1178, 5, 41),
       (1179, 6, 18),
       (1180, 7, 26),
       (1181, 8, 36),
       (1182, 9, 23),
       (1183, 10, 28),
       (1184, 11, 30),
       (1185, 12, 18),
       (1186, 13, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1187, 14, 36),
       (1188, 15, 29),
       (1189, 16, 32),
       (1190, 17, 29),
       (1191, 18, 17),
       (1192, 19, 31),
       (1193, 20, 43),
       (1194, 21, 20),
       (1195, 22, 13),
       (1196, 23, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1197, 1, 23),
       (1198, 2, 24),
       (1199, 3, 31),
       (1200, 4, 22),
       (1201, 5, 23),
       (1202, 6, 16),
       (1203, 7, 22),
       (1204, 8, 47),
       (1205, 9, 16),
       (1206, 10, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1207, 11, 23),
       (1208, 12, 40),
       (1209, 13, 24),
       (1210, 14, 29),
       (1211, 15, 36),
       (1212, 16, 19),
       (1213, 17, 18),
       (1214, 18, 24),
       (1215, 19, 31),
       (1216, 20, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1217, 21, 31),
       (1218, 22, 19),
       (1219, 23, 17),
       (1220, 24, 28),
       (1221, 25, 23),
       (1222, 26, 20),
       (1223, 27, 35),
       (1224, 28, 21),
       (1225, 29, 15),
       (1226, 30, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1227, 31, 24),
       (1228, 32, 27),
       (1229, 33, 20),
       (1231, 35, 33),
       (1232, 36, 34),
       (1233, 37, 19),
       (1234, 38, 24),
       (1235, 39, 24),
       (1236, 40, 28),
       (1237, 41, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1238, 42, 34),
       (1239, 43, 32),
       (1240, 44, 28),
       (1241, 45, 33),
       (1242, 46, 32),
       (1243, 47, 13),
       (1244, 48, 44),
       (1245, 49, 24),
       (1246, 50, 27),
       (1247, 51, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1248, 52, 22),
       (1249, 53, 18),
       (1250, 54, 32),
       (1251, 55, 33),
       (1252, 56, 34),
       (1255, 2, 31),
       (1256, 3, 13),
       (1257, 4, 20),
       (1258, 5, 22),
       (1259, 6, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1260, 7, 40),
       (1261, 8, 11),
       (1262, 9, 28),
       (1263, 10, 17),
       (1264, 11, 17),
       (1265, 12, 18),
       (1266, 13, 34),
       (1267, 14, 18),
       (1268, 15, 23),
       (1269, 16, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1270, 17, 11),
       (1271, 18, 17),
       (1272, 19, 28),
       (1273, 20, 23),
       (1274, 21, 39),
       (1526, 19, 16),
       (1275, 22, 30),
       (1276, 23, 16),
       (1277, 24, 31),
       (1278, 25, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1279, 26, 12),
       (1280, 27, 32),
       (1281, 28, 41),
       (1282, 29, 22),
       (1283, 30, 20),
       (1284, 31, 14),
       (1285, 32, 26),
       (1286, 33, 41),
       (1287, 34, 37),
       (1288, 35, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1289, 36, 34),
       (1290, 37, 32),
       (1291, 38, 45),
       (1292, 1, 9),
       (1293, 2, 32),
       (1294, 3, 27),
       (1295, 4, 17),
       (1296, 5, 31),
       (4796, 35, 11),
       (1297, 6, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1298, 7, 49),
       (1299, 8, 35),
       (1300, 9, 34),
       (1301, 10, 14),
       (1302, 11, 46),
       (1303, 12, 30),
       (1304, 13, 12),
       (1305, 14, 32),
       (1306, 15, 29),
       (1307, 16, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1308, 17, 18),
       (1309, 18, 54),
       (1310, 19, 23),
       (1311, 20, 17),
       (1312, 21, 45),
       (1313, 22, 24),
       (1314, 23, 36),
       (1692, 6, 14),
       (1316, 25, 22),
       (1317, 26, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1318, 27, 25),
       (1319, 28, 22),
       (1320, 29, 39),
       (1321, 30, 27),
       (1322, 31, 18),
       (1323, 32, 43),
       (1324, 33, 27),
       (1325, 34, 33),
       (1326, 1, 34),
       (1327, 2, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1328, 3, 17),
       (1329, 4, 43),
       (1330, 5, 22),
       (1331, 6, 12),
       (1332, 7, 27),
       (1333, 8, 36),
       (1334, 9, 21),
       (1335, 10, 28),
       (1336, 11, 20),
       (1337, 12, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1338, 13, 17),
       (1339, 14, 24),
       (1340, 15, 26),
       (1341, 16, 49),
       (1342, 17, 40),
       (1343, 18, 41),
       (1344, 19, 14),
       (1345, 20, 42),
       (1346, 21, 20),
       (1347, 22, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1348, 23, 22),
       (1349, 24, 23),
       (1350, 25, 12),
       (1351, 26, 36),
       (1352, 27, 18),
       (1353, 28, 24),
       (1354, 29, 25),
       (1355, 30, 30),
       (1356, 31, 38),
       (1357, 32, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1358, 33, 28),
       (1359, 34, 28),
       (1360, 1, 40),
       (1361, 2, 15),
       (1362, 3, 29),
       (1363, 4, 31),
       (1364, 5, 25),
       (1365, 6, 27),
       (1366, 7, 24),
       (1367, 8, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1368, 9, 32),
       (1369, 10, 37),
       (1370, 11, 29),
       (1371, 12, 22),
       (1372, 13, 30),
       (1373, 14, 18),
       (1374, 15, 19),
       (1375, 16, 25),
       (1376, 17, 25),
       (1377, 18, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1378, 19, 31),
       (1380, 21, 26),
       (1381, 22, 27),
       (1382, 23, 36),
       (1383, 24, 24),
       (1384, 25, 19),
       (1385, 26, 29),
       (1386, 27, 36),
       (1387, 28, 22),
       (1388, 1, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1389, 2, 22),
       (1390, 3, 29),
       (1391, 4, 27),
       (1392, 5, 34),
       (1393, 6, 29),
       (1394, 7, 25),
       (1395, 8, 24),
       (1396, 9, 13),
       (1397, 10, 23),
       (1398, 11, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1399, 12, 34),
       (1400, 13, 13),
       (1401, 14, 11),
       (1402, 15, 32),
       (1404, 17, 25),
       (1405, 18, 23),
       (1406, 19, 11),
       (1407, 20, 27),
       (1408, 21, 22),
       (1409, 22, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1410, 23, 7),
       (1411, 24, 13),
       (1412, 25, 25),
       (1413, 26, 28),
       (1414, 27, 32),
       (1415, 28, 25),
       (1416, 29, 36),
       (1417, 30, 21),
       (1418, 31, 43),
       (1419, 32, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1420, 33, 19),
       (1421, 34, 41),
       (1422, 1, 43),
       (1423, 2, 15),
       (1424, 3, 25),
       (1425, 4, 47),
       (1426, 5, 16),
       (1427, 6, 46),
       (1428, 7, 17),
       (1429, 8, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1430, 9, 56),
       (1431, 10, 13),
       (1432, 11, 34),
       (1433, 12, 21),
       (1434, 13, 33),
       (1435, 14, 37),
       (1436, 15, 42),
       (1437, 16, 18),
       (1438, 17, 45),
       (1439, 18, 57)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1440, 19, 48),
       (1441, 20, 32),
       (1442, 21, 26),
       (1443, 22, 33),
       (1444, 23, 31),
       (1445, 24, 47),
       (1446, 25, 26),
       (1447, 26, 32),
       (1448, 27, 26),
       (1449, 28, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1450, 29, 53),
       (1451, 30, 32),
       (1452, 31, 21),
       (1453, 1, 30),
       (1454, 2, 23),
       (1455, 3, 21),
       (1456, 4, 38),
       (1457, 5, 36),
       (1458, 6, 25),
       (1459, 7, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1461, 9, 32),
       (1462, 10, 30),
       (1463, 11, 24),
       (1464, 12, 20),
       (1465, 13, 33),
       (1466, 14, 37),
       (1467, 15, 31),
       (1468, 16, 43),
       (1469, 17, 39),
       (1470, 18, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1471, 19, 45),
       (1472, 20, 28),
       (1473, 21, 25),
       (1474, 22, 29),
       (1475, 1, 26),
       (1476, 2, 15),
       (1477, 3, 26),
       (1478, 4, 31),
       (1479, 5, 12),
       (1480, 6, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1481, 7, 27),
       (1482, 8, 26),
       (1483, 9, 33),
       (1484, 10, 30),
       (1485, 11, 31),
       (1486, 12, 14),
       (1487, 13, 26),
       (1488, 14, 11),
       (1489, 15, 31),
       (1490, 16, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1491, 17, 26),
       (1492, 18, 9),
       (1493, 19, 15),
       (1494, 20, 15),
       (1495, 21, 11),
       (1496, 22, 18),
       (1497, 23, 14),
       (1498, 24, 34),
       (1499, 25, 40),
       (1500, 26, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1501, 27, 23),
       (1502, 28, 31),
       (1503, 29, 34),
       (1504, 30, 37),
       (1505, 31, 22),
       (1506, 32, 17),
       (1507, 33, 30),
       (1508, 1, 16),
       (1509, 2, 17),
       (1510, 3, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1511, 4, 38),
       (1512, 5, 47),
       (1513, 6, 16),
       (1514, 7, 33),
       (1515, 8, 32),
       (1516, 9, 18),
       (1517, 10, 36),
       (1518, 11, 42),
       (1519, 12, 12),
       (1520, 13, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1521, 14, 27),
       (1522, 15, 35),
       (1523, 16, 17),
       (1524, 17, 52),
       (1525, 18, 20),
       (1527, 20, 30),
       (1528, 21, 23),
       (1529, 22, 20),
       (1530, 23, 26),
       (1531, 24, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1532, 25, 26),
       (1533, 26, 24),
       (1534, 1, 23),
       (1536, 3, 5),
       (1537, 4, 7),
       (1538, 5, 22),
       (1539, 6, 12),
       (1540, 7, 24),
       (1541, 8, 13),
       (1542, 9, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1543, 10, 42),
       (1544, 11, 24),
       (1545, 12, 27),
       (1546, 13, 13),
       (1547, 14, 34),
       (1548, 15, 27),
       (1549, 16, 43),
       (1550, 17, 22),
       (1551, 18, 27),
       (1552, 19, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1553, 20, 16),
       (1554, 21, 16),
       (1555, 22, 26),
       (1556, 1, 19),
       (1557, 2, 25),
       (1558, 3, 42),
       (1559, 4, 15),
       (1560, 5, 37),
       (1561, 6, 29),
       (1562, 7, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1563, 8, 19),
       (1564, 9, 33),
       (1565, 10, 34),
       (1566, 11, 38),
       (1567, 12, 28),
       (1568, 13, 32),
       (1569, 14, 34),
       (1570, 15, 34),
       (1571, 16, 25),
       (1572, 17, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1573, 18, 22),
       (1574, 19, 26),
       (1575, 20, 27),
       (1576, 21, 17),
       (1577, 22, 24),
       (1578, 23, 45),
       (1579, 24, 18),
       (1580, 25, 14),
       (1581, 1, 37),
       (1582, 2, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1583, 3, 20),
       (1584, 4, 32),
       (1585, 5, 25),
       (1586, 6, 37),
       (1587, 7, 32),
       (1623, 21, 42),
       (1588, 8, 61),
       (1589, 9, 26),
       (1590, 10, 25),
       (1591, 11, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1592, 12, 40),
       (1593, 13, 46),
       (1594, 14, 30),
       (1595, 15, 54),
       (1596, 16, 48),
       (1597, 17, 45),
       (1598, 18, 61),
       (1599, 19, 22),
       (1600, 20, 31),
       (1601, 21, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1602, 22, 44),
       (1603, 1, 28),
       (1604, 2, 17),
       (1605, 3, 27),
       (1606, 4, 35),
       (1607, 5, 29),
       (1608, 6, 37),
       (1609, 7, 38),
       (1610, 8, 32),
       (1611, 9, 55)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1612, 10, 33),
       (1613, 11, 29),
       (1614, 12, 18),
       (1615, 13, 19),
       (1616, 14, 49),
       (1617, 15, 33),
       (1618, 16, 32),
       (1619, 17, 16),
       (1620, 18, 46),
       (1621, 19, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1622, 20, 33),
       (1624, 22, 17),
       (1625, 23, 33),
       (1626, 24, 22),
       (1627, 25, 32),
       (1628, 26, 19),
       (1629, 27, 27),
       (1630, 28, 24),
       (1631, 29, 17),
       (1632, 30, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1633, 31, 31),
       (1634, 1, 33),
       (1635, 2, 30),
       (1636, 3, 42),
       (1637, 4, 26),
       (1638, 5, 21),
       (1639, 6, 16),
       (1640, 7, 22),
       (1641, 8, 39),
       (1642, 9, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1643, 10, 28),
       (1644, 11, 19),
       (1645, 12, 18),
       (1646, 13, 18),
       (1647, 14, 38),
       (1648, 15, 22),
       (1693, 7, 19),
       (1649, 16, 30),
       (1650, 17, 20),
       (1651, 18, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1652, 19, 32),
       (1653, 20, 18),
       (1654, 21, 43),
       (1655, 22, 25),
       (1656, 23, 27),
       (1657, 1, 39),
       (1658, 2, 13),
       (1659, 3, 25),
       (1660, 4, 25),
       (1661, 5, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1662, 6, 46),
       (1663, 7, 40),
       (6421, 39, 13),
       (1664, 8, 34),
       (1665, 9, 24),
       (1666, 10, 7),
       (1667, 11, 21),
       (1668, 12, 28),
       (1669, 13, 37),
       (1670, 14, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1671, 15, 29),
       (1672, 16, 35),
       (1673, 17, 12),
       (1674, 18, 28),
       (1675, 19, 20),
       (1676, 20, 35),
       (1677, 21, 11),
       (1678, 22, 11),
       (1679, 23, 26),
       (1680, 24, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1681, 25, 36),
       (1682, 26, 26),
       (1683, 27, 26),
       (1684, 28, 19),
       (1685, 29, 23),
       (1686, 30, 19),
       (1687, 1, 23),
       (1688, 2, 29),
       (1689, 3, 20),
       (1690, 4, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1691, 5, 28),
       (1695, 9, 33),
       (1696, 10, 34),
       (1697, 11, 26),
       (1698, 12, 21),
       (1699, 13, 17),
       (1700, 14, 18),
       (1701, 15, 42),
       (1702, 16, 38),
       (1703, 17, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1704, 18, 28),
       (1705, 19, 65),
       (1706, 20, 50),
       (1707, 21, 35),
       (1708, 22, 29),
       (1709, 23, 17),
       (1710, 24, 25),
       (1711, 25, 13),
       (1712, 1, 26),
       (1713, 2, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1714, 3, 45),
       (1715, 4, 19),
       (1716, 5, 37),
       (1717, 6, 23),
       (1718, 7, 20),
       (1719, 8, 37),
       (1720, 9, 44),
       (1721, 10, 29),
       (1722, 11, 27),
       (1723, 12, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1724, 13, 27),
       (1725, 14, 12),
       (1726, 15, 22),
       (1727, 16, 31),
       (1728, 17, 44),
       (1729, 18, 26),
       (1730, 19, 29),
       (1731, 20, 39),
       (1732, 21, 51),
       (1733, 22, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1734, 23, 20),
       (1735, 24, 40),
       (1736, 25, 20),
       (1737, 26, 42),
       (1738, 27, 21),
       (1739, 28, 31),
       (1740, 29, 51),
       (1741, 30, 10),
       (1742, 31, 30),
       (1743, 32, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1744, 1, 30),
       (1745, 2, 14),
       (1746, 3, 38),
       (1747, 4, 31),
       (1748, 5, 18),
       (1749, 6, 28),
       (1750, 7, 35),
       (1751, 8, 30),
       (1752, 9, 33),
       (1753, 10, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1754, 11, 25),
       (1755, 12, 20),
       (1756, 13, 37),
       (1757, 14, 35),
       (1758, 15, 26),
       (1759, 16, 30),
       (1760, 17, 16),
       (1761, 18, 33),
       (1762, 19, 45),
       (1763, 20, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1764, 21, 19),
       (1765, 22, 40),
       (1766, 23, 31),
       (1767, 24, 29),
       (1768, 25, 37),
       (1769, 26, 17),
       (1770, 27, 29),
       (1771, 28, 26),
       (1925, 4, 23),
       (1772, 29, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1773, 30, 18),
       (1774, 31, 22),
       (1775, 32, 16),
       (1776, 33, 32),
       (1777, 34, 28),
       (1778, 35, 24),
       (1779, 1, 34),
       (1780, 2, 42),
       (1781, 3, 40),
       (1782, 4, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1820, 3, 36),
       (1783, 5, 52),
       (1784, 6, 51),
       (1785, 7, 37),
       (1786, 8, 27),
       (1787, 9, 39),
       (1788, 10, 29),
       (1789, 11, 27),
       (1790, 12, 42),
       (1791, 13, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1792, 14, 39),
       (1793, 15, 57),
       (1794, 16, 23),
       (1795, 17, 27),
       (1796, 18, 10),
       (1797, 19, 32),
       (1798, 20, 17),
       (1799, 21, 28),
       (1800, 22, 23),
       (1801, 23, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1802, 24, 29),
       (1803, 25, 23),
       (1804, 26, 40),
       (1805, 27, 14),
       (1806, 28, 30),
       (1807, 29, 16),
       (1808, 1, 39),
       (1809, 2, 31),
       (1926, 5, 14),
       (1810, 3, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1811, 4, 18),
       (1812, 5, 45),
       (1813, 6, 25),
       (1814, 7, 36),
       (1815, 8, 44),
       (1816, 9, 23),
       (1817, 10, 31),
       (1818, 1, 14),
       (1819, 2, 22),
       (1821, 4, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1822, 5, 23),
       (1823, 6, 28),
       (1824, 7, 28),
       (1825, 8, 23),
       (1826, 9, 26),
       (1827, 10, 26),
       (1828, 11, 34),
       (1829, 12, 43),
       (1830, 13, 46),
       (1831, 14, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1832, 15, 42),
       (1833, 16, 45),
       (1834, 17, 40),
       (1835, 18, 30),
       (1836, 19, 43),
       (1837, 20, 15),
       (1838, 21, 28),
       (1839, 22, 53),
       (1840, 23, 46),
       (1841, 24, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1842, 25, 30),
       (1843, 26, 20),
       (1844, 27, 42),
       (1845, 28, 20),
       (1846, 29, 50),
       (1847, 30, 37),
       (1848, 31, 36),
       (1849, 32, 19),
       (1850, 33, 26),
       (1851, 34, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1852, 35, 28),
       (1853, 36, 27),
       (1854, 37, 22),
       (1855, 38, 18),
       (1856, 39, 40),
       (1857, 40, 18),
       (1858, 41, 36),
       (1859, 42, 39),
       (1860, 43, 21),
       (1861, 44, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1862, 45, 11),
       (1863, 46, 29),
       (1864, 47, 9),
       (1865, 48, 50),
       (1866, 49, 19),
       (1867, 50, 17),
       (1868, 51, 26),
       (1869, 1, 7),
       (1870, 2, 26),
       (1871, 3, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1872, 4, 10),
       (1873, 5, 53),
       (1874, 6, 19),
       (1875, 7, 32),
       (1876, 8, 28),
       (1877, 9, 42),
       (1878, 10, 14),
       (1879, 11, 30),
       (1880, 12, 30),
       (1881, 13, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1882, 14, 39),
       (1883, 15, 59),
       (1884, 16, 29),
       (1885, 17, 48),
       (1886, 18, 31),
       (1887, 19, 36),
       (1888, 20, 18),
       (1889, 21, 39),
       (1890, 22, 20),
       (1891, 1, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1892, 2, 33),
       (1893, 3, 22),
       (1894, 4, 40),
       (1895, 5, 46),
       (1896, 6, 13),
       (1897, 7, 20),
       (1898, 8, 30),
       (1899, 9, 33),
       (1900, 10, 36),
       (1901, 11, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1902, 12, 41),
       (1903, 13, 44),
       (1904, 14, 12),
       (1905, 15, 21),
       (1906, 16, 34),
       (1907, 17, 39),
       (1908, 18, 25),
       (1909, 19, 31),
       (1910, 20, 39),
       (1911, 21, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1912, 22, 33),
       (1913, 23, 25),
       (1914, 24, 35),
       (1915, 25, 34),
       (1916, 26, 29),
       (1917, 27, 38),
       (1918, 28, 35),
       (1919, 29, 32),
       (1920, 30, 24),
       (1921, 31, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1922, 1, 37),
       (1923, 2, 31),
       (1924, 3, 11),
       (1965, 17, 14),
       (1927, 6, 20),
       (1928, 7, 26),
       (1929, 8, 30),
       (1930, 9, 32),
       (1931, 10, 19),
       (1932, 11, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1933, 12, 11),
       (1934, 13, 24),
       (1935, 14, 16),
       (1973, 25, 26),
       (1936, 15, 26),
       (1937, 16, 36),
       (1938, 17, 37),
       (1939, 18, 8),
       (1940, 19, 44),
       (1941, 20, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1942, 21, 25),
       (1943, 22, 31),
       (1944, 23, 28),
       (1945, 24, 12),
       (1946, 25, 40),
       (1947, 26, 61),
       (1948, 27, 25),
       (1949, 1, 46),
       (1950, 2, 19),
       (1951, 3, 55)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1952, 4, 43),
       (1953, 5, 31),
       (1954, 6, 29),
       (1955, 7, 30),
       (1956, 8, 50),
       (1957, 9, 26),
       (1958, 10, 34),
       (1959, 11, 7),
       (1960, 12, 41),
       (1961, 13, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1962, 14, 29),
       (1963, 15, 40),
       (1964, 16, 43),
       (1966, 18, 32),
       (1967, 19, 15),
       (1968, 20, 30),
       (1969, 21, 22),
       (1970, 22, 33),
       (1971, 23, 52),
       (1972, 24, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1974, 26, 21),
       (1975, 27, 24),
       (1976, 28, 17),
       (1977, 29, 42),
       (1978, 30, 9),
       (1979, 31, 29),
       (1980, 32, 45),
       (1981, 33, 28),
       (1982, 34, 16),
       (1983, 35, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1984, 36, 11),
       (1985, 1, 39),
       (1986, 2, 31),
       (1987, 3, 36),
       (1988, 4, 21),
       (1989, 5, 34),
       (1990, 6, 44),
       (1991, 7, 33),
       (1992, 8, 10),
       (1993, 9, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (1994, 10, 27),
       (1995, 11, 24),
       (1996, 12, 53),
       (1997, 13, 14),
       (1998, 14, 35),
       (1999, 15, 14),
       (2000, 16, 17),
       (2001, 1, 34),
       (2002, 2, 17),
       (2003, 3, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2004, 4, 28),
       (2005, 5, 28),
       (2006, 6, 25),
       (2093, 15, 16),
       (2007, 7, 31),
       (2008, 8, 39),
       (2009, 9, 27),
       (2010, 10, 37),
       (2011, 11, 21),
       (2012, 12, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2052, 25, 11),
       (2013, 13, 28),
       (2014, 14, 43),
       (2015, 15, 19),
       (2016, 16, 31),
       (2017, 17, 17),
       (2018, 18, 32),
       (2019, 19, 30),
       (2020, 20, 28),
       (2021, 21, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2022, 22, 46),
       (2023, 23, 31),
       (2024, 24, 19),
       (2025, 25, 30),
       (2026, 26, 23),
       (2027, 27, 18),
       (2028, 1, 29),
       (2029, 2, 28),
       (2030, 3, 32),
       (2031, 4, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2032, 5, 31),
       (2033, 6, 28),
       (2034, 7, 23),
       (2035, 8, 27),
       (2036, 9, 42),
       (2037, 10, 24),
       (2038, 11, 26),
       (2039, 12, 40),
       (2040, 13, 37),
       (2041, 14, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2042, 15, 18),
       (2043, 16, 45),
       (2044, 17, 24),
       (2045, 18, 33),
       (2046, 19, 21),
       (2047, 20, 28),
       (2048, 21, 24),
       (2049, 22, 19),
       (2050, 23, 28),
       (2051, 24, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2054, 2, 21),
       (2055, 3, 9),
       (2056, 4, 37),
       (2057, 5, 43),
       (2058, 6, 15),
       (2059, 7, 26),
       (2060, 8, 9),
       (2061, 9, 11),
       (2062, 10, 45),
       (2063, 11, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2064, 12, 22),
       (2065, 13, 5),
       (2066, 14, 6),
       (2067, 15, 5),
       (2068, 16, 10),
       (2069, 17, 38),
       (2070, 18, 33),
       (2071, 19, 24),
       (2072, 20, 28),
       (2073, 21, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2074, 22, 27),
       (2075, 23, 22),
       (2076, 24, 44),
       (2077, 25, 31),
       (2078, 26, 18),
       (2079, 1, 12),
       (2080, 2, 23),
       (2081, 3, 25),
       (2082, 4, 32),
       (2083, 5, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2084, 6, 39),
       (2085, 7, 23),
       (2086, 8, 39),
       (2087, 9, 19),
       (2088, 10, 20),
       (2089, 11, 20),
       (2090, 12, 16),
       (2091, 13, 27),
       (2092, 14, 26),
       (2094, 16, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2095, 17, 16),
       (2096, 18, 25),
       (2097, 19, 37),
       (2098, 20, 25),
       (2099, 21, 19),
       (2143, 29, 28),
       (2100, 22, 45),
       (2101, 23, 13),
       (2102, 24, 13),
       (2103, 25, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2104, 26, 31),
       (2105, 27, 28),
       (2106, 28, 35),
       (2107, 29, 50),
       (2108, 30, 24),
       (2109, 31, 22),
       (2110, 32, 29),
       (2111, 33, 29),
       (2112, 34, 25),
       (2113, 35, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2114, 36, 39),
       (2115, 1, 31),
       (2116, 2, 22),
       (2117, 3, 30),
       (2118, 4, 22),
       (2119, 5, 46),
       (2120, 6, 33),
       (2121, 7, 33),
       (2122, 8, 32),
       (2123, 9, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2124, 10, 34),
       (2125, 11, 35),
       (2126, 12, 16),
       (2127, 13, 22),
       (2128, 14, 28),
       (2129, 15, 25),
       (2130, 16, 28),
       (2131, 17, 21),
       (2132, 18, 9),
       (2133, 19, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2134, 20, 15),
       (2135, 21, 22),
       (2136, 22, 10),
       (2137, 23, 20),
       (2226, 30, 12),
       (2138, 24, 25),
       (2139, 25, 31),
       (2140, 26, 23),
       (2141, 27, 37),
       (2142, 28, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2144, 30, 29),
       (2145, 31, 31),
       (2146, 1, 21),
       (2147, 2, 26),
       (2148, 3, 11),
       (2149, 4, 22),
       (2150, 5, 28),
       (2151, 6, 14),
       (2152, 7, 23),
       (2153, 8, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2154, 9, 25),
       (2155, 10, 16),
       (2156, 11, 45),
       (2157, 12, 37),
       (2158, 13, 33),
       (2159, 14, 13),
       (2160, 15, 43),
       (2161, 16, 39),
       (2162, 17, 15),
       (2163, 18, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2164, 19, 31),
       (2165, 20, 25),
       (2166, 21, 27),
       (2167, 22, 31),
       (2168, 23, 35),
       (2169, 24, 29),
       (2170, 25, 28),
       (2171, 26, 21),
       (2172, 27, 31),
       (2173, 28, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2174, 29, 27),
       (2175, 30, 21),
       (2176, 31, 45),
       (2177, 32, 12),
       (2178, 33, 29),
       (2179, 1, 28),
       (2180, 2, 23),
       (2181, 3, 37),
       (2182, 4, 33),
       (2183, 5, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2184, 6, 23),
       (8580, 25, 11),
       (2185, 7, 31),
       (2186, 8, 30),
       (2187, 9, 17),
       (2188, 10, 32),
       (2189, 11, 24),
       (2190, 12, 40),
       (2191, 13, 18),
       (2192, 14, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2193, 15, 14),
       (2194, 16, 32),
       (2195, 17, 27),
       (2196, 18, 27),
       (2197, 1, 7),
       (2198, 2, 27),
       (2199, 3, 17),
       (2200, 4, 13),
       (2201, 5, 11),
       (2202, 6, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2203, 7, 15),
       (2204, 8, 14),
       (2205, 9, 27),
       (2206, 10, 38),
       (2207, 11, 27),
       (2208, 12, 39),
       (2209, 13, 14),
       (2210, 14, 21),
       (2211, 15, 18),
       (2212, 16, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2213, 17, 30),
       (2214, 18, 24),
       (2215, 19, 33),
       (2216, 20, 35),
       (2217, 21, 26),
       (2218, 22, 47),
       (2219, 23, 32),
       (2220, 24, 18),
       (2221, 25, 27),
       (2222, 26, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2223, 27, 18),
       (2224, 28, 23),
       (2225, 29, 31),
       (2227, 31, 38),
       (2228, 32, 36),
       (8581, 26, 11),
       (2229, 33, 41),
       (2230, 34, 18),
       (2231, 35, 43),
       (2232, 36, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2233, 37, 22),
       (2234, 38, 14),
       (2235, 39, 15),
       (2236, 40, 18),
       (2237, 1, 32),
       (2238, 2, 27),
       (2239, 3, 21),
       (2240, 4, 39),
       (2241, 5, 36),
       (2242, 6, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2243, 7, 21),
       (2244, 8, 25),
       (2245, 9, 27),
       (2246, 10, 36),
       (2247, 11, 26),
       (2248, 12, 26),
       (2249, 13, 46),
       (2250, 14, 21),
       (2251, 15, 15),
       (2252, 16, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2253, 17, 24),
       (2254, 18, 17),
       (2255, 19, 32),
       (2256, 20, 15),
       (2257, 21, 18),
       (2258, 22, 15),
       (2259, 23, 17),
       (2260, 24, 36),
       (2261, 25, 25),
       (2262, 26, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2263, 27, 31),
       (2264, 28, 18),
       (2265, 29, 28),
       (2266, 30, 21),
       (2267, 31, 29),
       (2268, 32, 25),
       (4083, 7, 11),
       (2269, 33, 39),
       (2270, 34, 19),
       (2271, 35, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2272, 36, 28),
       (2273, 37, 33),
       (2274, 1, 30),
       (2275, 2, 31),
       (2276, 3, 34),
       (2277, 4, 28),
       (2278, 5, 22),
       (2279, 6, 18),
       (2280, 7, 26),
       (2281, 8, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2282, 9, 33),
       (2283, 10, 26),
       (2284, 11, 38),
       (2285, 12, 25),
       (2286, 13, 16),
       (2287, 14, 21),
       (2288, 15, 19),
       (2289, 16, 37),
       (2290, 17, 23),
       (2291, 18, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2292, 19, 28),
       (2293, 20, 28),
       (2294, 21, 47),
       (2295, 1, 43),
       (2296, 2, 16),
       (2297, 3, 40),
       (2298, 4, 53),
       (2299, 5, 20),
       (2300, 6, 24),
       (2301, 7, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2302, 8, 38),
       (2303, 9, 19),
       (2304, 10, 25),
       (2305, 11, 41),
       (2306, 12, 40),
       (2307, 13, 8),
       (4084, 8, 11),
       (8978, 43, 12),
       (2308, 14, 26),
       (2309, 15, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2310, 16, 20),
       (2311, 17, 26),
       (2312, 18, 12),
       (2313, 19, 12),
       (2314, 20, 22),
       (2315, 21, 39),
       (2316, 22, 17),
       (2317, 23, 25),
       (2318, 24, 21),
       (2319, 25, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2320, 26, 34),
       (2321, 27, 39),
       (2322, 28, 44),
       (2323, 29, 34),
       (2324, 30, 46),
       (2325, 31, 13),
       (2326, 32, 43),
       (2327, 33, 32),
       (2328, 34, 21),
       (2329, 35, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2330, 36, 23),
       (2331, 37, 27),
       (2332, 38, 46),
       (2333, 39, 33),
       (2334, 40, 30),
       (2335, 41, 37),
       (2336, 42, 25),
       (2337, 43, 56),
       (2338, 1, 33),
       (2339, 2, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2340, 3, 22),
       (2341, 4, 23),
       (2342, 5, 36),
       (2343, 6, 18),
       (2344, 7, 17),
       (2345, 8, 12),
       (2346, 9, 36),
       (2347, 10, 27),
       (2348, 11, 17),
       (2349, 12, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2350, 13, 35),
       (2351, 14, 26),
       (2352, 15, 23),
       (2353, 16, 21),
       (2354, 17, 27),
       (2355, 18, 30),
       (2356, 19, 23),
       (2357, 20, 61),
       (2358, 21, 57),
       (2359, 22, 49)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2360, 23, 26),
       (2361, 24, 29),
       (2362, 25, 34),
       (2363, 26, 28),
       (2364, 27, 46),
       (2365, 28, 51),
       (2366, 29, 25),
       (2367, 30, 29),
       (2368, 31, 17),
       (2369, 32, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2370, 33, 28),
       (2371, 34, 35),
       (2372, 35, 26),
       (2373, 36, 34),
       (2374, 37, 27),
       (2375, 38, 21),
       (2376, 39, 19),
       (2377, 40, 39),
       (2378, 41, 40),
       (2379, 42, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2380, 43, 20),
       (2381, 44, 29),
       (2382, 45, 15),
       (2383, 46, 32),
       (2384, 1, 18),
       (2385, 2, 36),
       (2429, 8, 20),
       (2386, 3, 34),
       (2387, 4, 41),
       (2388, 5, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2389, 6, 32),
       (2390, 7, 21),
       (2391, 8, 21),
       (2392, 9, 22),
       (2393, 10, 43),
       (2394, 11, 7),
       (2395, 12, 47),
       (2396, 13, 37),
       (2397, 14, 23),
       (2398, 15, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2399, 16, 44),
       (2400, 17, 7),
       (2401, 18, 37),
       (2402, 19, 14),
       (2403, 20, 37),
       (2404, 21, 34),
       (2405, 22, 7),
       (2406, 23, 35),
       (2407, 24, 18),
       (2408, 25, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2409, 26, 16),
       (2410, 27, 21),
       (2411, 28, 19),
       (2412, 29, 18),
       (2413, 30, 23),
       (2414, 31, 23),
       (2415, 32, 33),
       (2416, 33, 23),
       (2417, 34, 29),
       (2418, 35, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2419, 36, 35),
       (2420, 37, 27),
       (2421, 38, 18),
       (2422, 1, 7),
       (2423, 2, 21),
       (2424, 3, 25),
       (2425, 4, 15),
       (2426, 5, 20),
       (2427, 6, 43),
       (2428, 7, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2430, 9, 17),
       (2431, 10, 27),
       (2432, 11, 26),
       (2434, 13, 39),
       (2435, 14, 40),
       (2436, 15, 36),
       (2437, 16, 21),
       (2438, 17, 33),
       (2439, 18, 34),
       (2440, 1, 60)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2441, 2, 31),
       (2442, 3, 20),
       (2443, 4, 40),
       (2444, 5, 26),
       (2445, 6, 32),
       (2446, 7, 26),
       (2447, 8, 48),
       (2448, 9, 18),
       (2449, 10, 29),
       (2450, 11, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2451, 12, 43),
       (2452, 13, 52),
       (2453, 14, 16),
       (2454, 15, 39),
       (2455, 16, 21),
       (2456, 17, 26),
       (2457, 18, 37),
       (2458, 19, 43),
       (2459, 20, 35),
       (2460, 21, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2461, 22, 23),
       (2462, 23, 39),
       (2463, 24, 33),
       (2464, 25, 23),
       (2465, 26, 34),
       (2466, 27, 50),
       (2467, 28, 25),
       (2468, 29, 30),
       (2469, 30, 37),
       (2470, 31, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2471, 32, 25),
       (2472, 33, 19),
       (2473, 34, 38),
       (2474, 35, 14),
       (2475, 1, 47),
       (2476, 2, 29),
       (2477, 3, 33),
       (2478, 4, 20),
       (2479, 5, 50),
       (2480, 6, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2481, 7, 51),
       (2482, 8, 38),
       (2483, 9, 30),
       (2484, 10, 31),
       (2485, 11, 40),
       (2486, 12, 46),
       (2487, 13, 43),
       (2488, 14, 16),
       (2489, 15, 18),
       (2490, 16, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2491, 17, 30),
       (2492, 18, 11),
       (2493, 19, 43),
       (2494, 20, 18),
       (2495, 21, 18),
       (2496, 22, 35),
       (2497, 23, 21),
       (2498, 1, 34),
       (2499, 2, 28),
       (2500, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2501, 4, 40),
       (2502, 5, 18),
       (2503, 6, 25),
       (2504, 7, 43),
       (2505, 8, 14),
       (2633, 28, 14),
       (2506, 9, 46),
       (2507, 10, 56),
       (2508, 11, 33),
       (2509, 12, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2510, 13, 20),
       (2511, 14, 19),
       (2512, 15, 35),
       (2513, 16, 29),
       (2514, 17, 8),
       (2515, 18, 38),
       (2516, 19, 21),
       (2517, 20, 43),
       (2518, 21, 23),
       (2519, 22, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2520, 23, 19),
       (2521, 24, 35),
       (2522, 25, 28),
       (2523, 26, 31),
       (2524, 27, 27),
       (2525, 28, 34),
       (2526, 29, 48),
       (2527, 30, 27),
       (2528, 31, 23),
       (2529, 32, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2530, 33, 16),
       (2531, 34, 37),
       (2532, 35, 35),
       (2533, 1, 29),
       (2534, 2, 37),
       (2535, 3, 13),
       (2536, 4, 22),
       (2537, 5, 28),
       (2538, 6, 13),
       (2539, 7, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2540, 8, 17),
       (2541, 9, 16),
       (2542, 10, 17),
       (2543, 11, 20),
       (2544, 12, 16),
       (2545, 13, 13),
       (2546, 14, 19),
       (2547, 15, 29),
       (2869, 19, 7),
       (2548, 16, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2549, 17, 21),
       (2550, 18, 15),
       (2551, 19, 31),
       (2552, 20, 16),
       (2553, 21, 43),
       (2554, 22, 40),
       (2555, 23, 28),
       (2556, 24, 33),
       (2557, 25, 32),
       (2558, 26, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2559, 27, 21),
       (2560, 28, 20),
       (2561, 29, 35),
       (2562, 30, 29),
       (2563, 31, 24),
       (2564, 32, 16),
       (2565, 33, 21),
       (2566, 34, 25),
       (2567, 35, 56),
       (2568, 1, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2569, 2, 35),
       (2570, 3, 39),
       (2571, 4, 23),
       (2572, 5, 25),
       (2573, 6, 38),
       (2574, 7, 18),
       (2575, 8, 40),
       (2576, 9, 25),
       (2577, 10, 19),
       (2578, 11, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2579, 12, 33),
       (2580, 13, 23),
       (8979, 44, 12),
       (2581, 14, 19),
       (2582, 15, 23),
       (2583, 16, 13),
       (2584, 17, 36),
       (2585, 18, 18),
       (2586, 19, 20),
       (2587, 20, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2588, 21, 20),
       (2589, 22, 21),
       (2590, 23, 16),
       (2591, 24, 31),
       (2592, 25, 17),
       (2593, 26, 18),
       (2594, 27, 14),
       (2595, 28, 16),
       (2596, 29, 31),
       (2597, 30, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2598, 31, 19),
       (2599, 32, 28),
       (2600, 33, 23),
       (2601, 34, 25),
       (2602, 35, 27),
       (2603, 36, 28),
       (2604, 37, 27),
       (2605, 38, 27),
       (2606, 1, 39),
       (2607, 2, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2608, 3, 33),
       (2609, 4, 13),
       (2610, 5, 19),
       (2611, 6, 28),
       (2612, 7, 22),
       (2613, 8, 30),
       (2614, 9, 33),
       (2615, 10, 30),
       (2616, 11, 17),
       (2617, 12, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2618, 13, 25),
       (2619, 14, 17),
       (2620, 15, 18),
       (2621, 16, 33),
       (2622, 17, 35),
       (2623, 18, 35),
       (2624, 19, 41),
       (2625, 20, 19),
       (2626, 21, 42),
       (2627, 22, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2628, 23, 19),
       (2629, 24, 15),
       (2630, 25, 40),
       (2631, 26, 33),
       (2632, 27, 32),
       (2634, 29, 21),
       (2635, 1, 31),
       (2636, 2, 28),
       (2637, 3, 32),
       (2638, 4, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2639, 5, 21),
       (2640, 6, 14),
       (2641, 7, 25),
       (2642, 8, 31),
       (2643, 9, 24),
       (2644, 10, 22),
       (2645, 11, 28),
       (2646, 12, 28),
       (2647, 13, 9),
       (2648, 14, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2649, 15, 31),
       (2650, 16, 14),
       (2651, 17, 39),
       (2652, 18, 48),
       (2653, 19, 27),
       (2654, 20, 17),
       (2655, 21, 44),
       (2656, 22, 22),
       (2657, 23, 36),
       (2658, 24, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2659, 25, 32),
       (2660, 26, 46),
       (2661, 27, 33),
       (2662, 28, 26),
       (2663, 29, 17),
       (2664, 30, 32),
       (2665, 31, 34),
       (2666, 1, 31),
       (2667, 2, 17),
       (2668, 3, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2669, 4, 17),
       (2670, 5, 41),
       (2671, 6, 28),
       (2672, 7, 26),
       (2673, 8, 30),
       (2674, 9, 23),
       (2675, 10, 21),
       (2676, 11, 12),
       (2677, 12, 12),
       (2678, 13, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2679, 14, 35),
       (2680, 15, 16),
       (2681, 16, 24),
       (2682, 17, 20),
       (2683, 18, 31),
       (2684, 19, 31),
       (2685, 20, 37),
       (2686, 21, 49),
       (2687, 22, 15),
       (2688, 23, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2689, 24, 20),
       (2690, 25, 26),
       (2691, 26, 26),
       (2692, 27, 18),
       (2693, 28, 23),
       (2694, 29, 23),
       (2695, 30, 28),
       (2696, 31, 21),
       (2697, 32, 31),
       (2698, 33, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2699, 34, 20),
       (2700, 35, 14),
       (2701, 36, 10),
       (2702, 37, 26),
       (2703, 38, 22),
       (2704, 39, 20),
       (2705, 40, 42),
       (2706, 41, 32),
       (2707, 42, 17),
       (10024, 40, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2708, 43, 27),
       (2709, 1, 7),
       (2710, 2, 20),
       (2711, 3, 20),
       (2712, 4, 30),
       (2713, 5, 26),
       (2714, 6, 21),
       (2715, 7, 20),
       (2716, 8, 21),
       (2717, 9, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2718, 10, 25),
       (2719, 11, 13),
       (2720, 12, 23),
       (2721, 13, 29),
       (2722, 14, 12),
       (2723, 15, 37),
       (2724, 16, 14),
       (2725, 17, 27),
       (2726, 18, 28),
       (2727, 19, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2728, 20, 27),
       (2729, 21, 28),
       (2730, 22, 21),
       (2731, 23, 16),
       (2732, 24, 22),
       (2733, 25, 12),
       (2734, 26, 15),
       (2735, 27, 13),
       (2736, 28, 12),
       (2737, 29, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2738, 30, 21),
       (2739, 31, 15),
       (2740, 32, 23),
       (2741, 33, 30),
       (2742, 34, 17),
       (2743, 35, 26),
       (2744, 36, 22),
       (2745, 37, 21),
       (2746, 38, 32),
       (2747, 1, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2748, 2, 37),
       (2749, 3, 38),
       (2750, 4, 26),
       (2751, 5, 38),
       (2752, 6, 14),
       (2753, 7, 22),
       (2754, 8, 31),
       (2755, 9, 37),
       (2756, 10, 28),
       (2757, 11, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2758, 12, 36),
       (2759, 13, 41),
       (2760, 14, 26),
       (2761, 15, 35),
       (2762, 16, 28),
       (2989, 11, 21),
       (2763, 17, 49),
       (2764, 1, 32),
       (2765, 2, 58),
       (2766, 3, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2767, 4, 32),
       (2768, 5, 23),
       (2769, 6, 16),
       (2770, 7, 22),
       (2771, 8, 32),
       (2772, 9, 32),
       (2773, 10, 31),
       (2774, 11, 32),
       (2775, 12, 26),
       (2776, 13, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2777, 14, 37),
       (2778, 15, 17),
       (2779, 16, 36),
       (2780, 1, 29),
       (2781, 2, 39),
       (2782, 3, 33),
       (2783, 4, 30),
       (2784, 5, 38),
       (2785, 6, 26),
       (2786, 7, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2787, 8, 35),
       (2788, 9, 49),
       (2789, 10, 30),
       (2790, 11, 22),
       (2791, 12, 15),
       (2792, 13, 35),
       (2793, 14, 31),
       (2794, 15, 30),
       (2795, 16, 30),
       (2796, 17, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2797, 1, 7),
       (2798, 2, 34),
       (2799, 3, 37),
       (3069, 16, 20),
       (2800, 4, 35),
       (2801, 5, 21),
       (2802, 6, 26),
       (2803, 7, 57),
       (2804, 8, 33),
       (2805, 9, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2806, 10, 27),
       (2807, 11, 24),
       (2808, 12, 39),
       (2809, 13, 39),
       (2810, 14, 30),
       (2811, 15, 27),
       (2812, 16, 18),
       (2813, 17, 21),
       (2814, 18, 52),
       (2815, 19, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2816, 20, 37),
       (2817, 21, 28),
       (2818, 22, 27),
       (2819, 23, 25),
       (2820, 24, 32),
       (2821, 25, 45),
       (2822, 26, 38),
       (2823, 27, 28),
       (2824, 28, 33),
       (2825, 29, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10581, 5, 7),
       (2826, 30, 40),
       (2827, 31, 51),
       (2828, 32, 22),
       (2829, 33, 30),
       (2830, 34, 43),
       (2831, 35, 63),
       (2832, 1, 36),
       (2833, 2, 46),
       (2834, 3, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3142, 30, 22),
       (2835, 4, 50),
       (2836, 5, 24),
       (2837, 6, 43),
       (2838, 7, 44),
       (2839, 8, 34),
       (2840, 9, 39),
       (2841, 10, 36),
       (2842, 11, 60),
       (2843, 12, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2844, 13, 39),
       (2845, 14, 7),
       (2846, 15, 51),
       (2847, 16, 50),
       (2848, 17, 34),
       (2849, 18, 48),
       (2850, 19, 12),
       (2851, 1, 7),
       (2852, 2, 33),
       (2853, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2854, 4, 46),
       (2855, 5, 43),
       (2856, 6, 29),
       (2857, 7, 26),
       (2858, 8, 7),
       (2859, 9, 42),
       (2860, 10, 46),
       (2861, 11, 25),
       (2862, 12, 48),
       (2863, 13, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2864, 14, 22),
       (2865, 15, 49),
       (2866, 16, 35),
       (2867, 17, 34),
       (2868, 18, 34),
       (2870, 20, 50),
       (2871, 21, 35),
       (2872, 22, 30),
       (2873, 23, 17),
       (2874, 24, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2875, 25, 38),
       (2876, 26, 27),
       (2877, 27, 34),
       (2878, 28, 29),
       (2879, 29, 13),
       (2880, 30, 33),
       (2881, 1, 14),
       (2882, 2, 28),
       (2883, 3, 21),
       (2884, 4, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2885, 5, 23),
       (2886, 6, 21),
       (2887, 7, 27),
       (2888, 8, 28),
       (2889, 9, 33),
       (2890, 10, 22),
       (2891, 11, 18),
       (2892, 12, 37),
       (2893, 13, 20),
       (2894, 14, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2895, 15, 32),
       (3161, 49, 18),
       (2896, 16, 39),
       (2897, 17, 20),
       (2898, 18, 51),
       (2899, 19, 32),
       (2900, 20, 33),
       (2901, 21, 46),
       (2902, 22, 7),
       (2903, 23, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2904, 24, 36),
       (2905, 25, 33),
       (2906, 26, 22),
       (2907, 27, 17),
       (2908, 28, 7),
       (2909, 29, 33),
       (4085, 9, 11),
       (2910, 30, 33),
       (2911, 31, 21),
       (2912, 32, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2913, 33, 26),
       (2914, 34, 47),
       (2915, 35, 40),
       (2916, 36, 29),
       (2917, 37, 34),
       (2918, 38, 29),
       (2919, 1, 7),
       (2920, 2, 32),
       (2921, 3, 15),
       (2922, 4, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2923, 5, 18),
       (2924, 6, 13),
       (2925, 7, 44),
       (2926, 8, 19),
       (2927, 9, 28),
       (2928, 10, 19),
       (2929, 11, 27),
       (2930, 12, 18),
       (2931, 13, 27),
       (2932, 14, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2933, 15, 47),
       (3162, 50, 16),
       (2934, 16, 32),
       (2935, 17, 24),
       (2936, 18, 24),
       (2937, 19, 15),
       (2938, 20, 20),
       (2939, 21, 42),
       (2940, 22, 25),
       (2941, 23, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2942, 24, 47),
       (2943, 25, 36),
       (2944, 26, 38),
       (2945, 27, 27),
       (2946, 28, 36),
       (2947, 29, 28),
       (2948, 30, 50),
       (2949, 31, 46),
       (2950, 32, 17),
       (2951, 33, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2952, 34, 18),
       (2953, 35, 33),
       (2954, 36, 15),
       (2955, 1, 22),
       (2956, 2, 31),
       (2957, 3, 36),
       (2958, 4, 28),
       (2959, 5, 23),
       (2960, 6, 24),
       (2961, 7, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2962, 8, 20),
       (2963, 9, 39),
       (2964, 10, 26),
       (2965, 11, 14),
       (2966, 12, 25),
       (2967, 13, 22),
       (2968, 14, 19),
       (2969, 15, 32),
       (2970, 16, 14),
       (2971, 17, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2972, 18, 36),
       (2973, 19, 29),
       (2974, 20, 17),
       (2975, 21, 19),
       (2976, 22, 30),
       (2977, 23, 28),
       (2978, 24, 34),
       (2979, 1, 35),
       (2980, 2, 17),
       (2981, 3, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2982, 4, 32),
       (2983, 5, 19),
       (2984, 6, 57),
       (2985, 7, 36),
       (2986, 8, 7),
       (2987, 9, 35),
       (2988, 10, 21),
       (4086, 10, 11),
       (2990, 12, 44),
       (2991, 13, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (2992, 14, 49),
       (2993, 15, 48),
       (2994, 16, 33),
       (2995, 17, 40),
       (2996, 18, 25),
       (2997, 19, 51),
       (2998, 20, 13),
       (2999, 1, 12),
       (3000, 2, 26),
       (3001, 3, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3002, 4, 37),
       (3003, 5, 19),
       (3004, 6, 19),
       (3005, 7, 22),
       (3006, 8, 20),
       (3007, 9, 31),
       (3008, 10, 40),
       (3009, 11, 24),
       (3010, 12, 16),
       (3274, 22, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3011, 13, 29),
       (3012, 14, 10),
       (3013, 15, 6),
       (3014, 16, 18),
       (3015, 17, 12),
       (3016, 18, 11),
       (3017, 19, 15),
       (3018, 20, 15),
       (3019, 21, 28),
       (3020, 22, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3021, 23, 15),
       (3022, 24, 20),
       (3023, 25, 20),
       (3024, 26, 27),
       (3025, 27, 30),
       (3026, 28, 24),
       (3027, 29, 31),
       (3028, 30, 18),
       (3029, 31, 27),
       (3030, 32, 58)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3031, 33, 22),
       (3032, 34, 30),
       (3033, 35, 35),
       (3034, 36, 25),
       (3035, 37, 20),
       (3036, 38, 21),
       (3037, 39, 23),
       (3038, 40, 38),
       (3039, 41, 18),
       (3040, 42, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3041, 43, 27),
       (3042, 44, 34),
       (3043, 45, 28),
       (3044, 46, 31),
       (3045, 47, 29),
       (3046, 1, 7),
       (3047, 2, 39),
       (3048, 3, 14),
       (3049, 4, 34),
       (3050, 5, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3051, 6, 52),
       (3052, 7, 38),
       (3053, 8, 47),
       (3054, 1, 10),
       (3055, 2, 51),
       (3056, 3, 56),
       (3057, 4, 45),
       (3058, 5, 42),
       (3059, 6, 48),
       (3060, 7, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3061, 8, 26),
       (3062, 9, 18),
       (3063, 10, 33),
       (3064, 11, 29),
       (3065, 12, 38),
       (3066, 13, 33),
       (3067, 14, 12),
       (3068, 15, 22),
       (3070, 17, 31),
       (3071, 18, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3072, 19, 27),
       (3073, 20, 44),
       (3074, 21, 36),
       (3075, 22, 20),
       (3076, 23, 28),
       (3077, 24, 29),
       (3078, 25, 52),
       (3079, 26, 39),
       (3080, 27, 31),
       (3081, 28, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3082, 29, 17),
       (3083, 30, 49),
       (3084, 31, 47),
       (3085, 32, 41),
       (3086, 33, 27),
       (3123, 11, 29),
       (3087, 34, 50),
       (3088, 35, 13),
       (3089, 36, 30),
       (3090, 37, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3091, 38, 21),
       (3092, 39, 37),
       (3093, 40, 19),
       (3094, 41, 23),
       (3095, 42, 30),
       (3096, 43, 39),
       (3097, 44, 22),
       (3098, 45, 35),
       (3099, 46, 28),
       (3100, 47, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3101, 48, 23),
       (3102, 49, 41),
       (3103, 50, 19),
       (3104, 51, 47),
       (3105, 52, 39),
       (3106, 53, 30),
       (4087, 11, 17),
       (3107, 54, 24),
       (3108, 55, 49),
       (3109, 56, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3110, 57, 36),
       (3111, 58, 40),
       (3112, 59, 37),
       (3113, 1, 7),
       (3114, 2, 22),
       (3115, 3, 28),
       (3116, 4, 26),
       (3117, 5, 19),
       (3118, 6, 41),
       (3119, 7, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3120, 8, 45),
       (3121, 9, 52),
       (3122, 10, 45),
       (11038, 22, 11),
       (3124, 12, 32),
       (3125, 13, 45),
       (3126, 14, 50),
       (3127, 15, 22),
       (3128, 16, 31),
       (3129, 17, 55)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3130, 18, 37),
       (3131, 19, 31),
       (3132, 20, 29),
       (3133, 21, 52),
       (3134, 22, 30),
       (3135, 23, 26),
       (3136, 24, 29),
       (3137, 25, 57),
       (3138, 26, 17),
       (3139, 27, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3140, 28, 55),
       (3141, 29, 34),
       (3143, 31, 41),
       (3144, 32, 26),
       (3145, 33, 10),
       (3146, 34, 34),
       (3147, 35, 28),
       (3148, 36, 42),
       (3149, 37, 35),
       (3150, 38, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3151, 39, 26),
       (3152, 40, 27),
       (3153, 41, 31),
       (3154, 42, 27),
       (3155, 43, 33),
       (3156, 44, 30),
       (3157, 45, 37),
       (3158, 46, 22),
       (3159, 47, 23),
       (3160, 48, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3163, 51, 39),
       (3164, 52, 36),
       (3165, 53, 30),
       (3166, 54, 16),
       (3167, 55, 12),
       (3168, 56, 14),
       (3169, 57, 18),
       (3170, 1, 10),
       (3171, 2, 28),
       (3172, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3173, 4, 21),
       (3174, 5, 21),
       (3175, 6, 29),
       (3176, 7, 28),
       (3177, 8, 31),
       (3178, 9, 15),
       (3179, 10, 36),
       (3180, 11, 32),
       (3181, 12, 25),
       (3182, 13, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3183, 14, 36),
       (4088, 12, 11),
       (3184, 15, 33),
       (3185, 16, 28),
       (3186, 17, 24),
       (3187, 18, 27),
       (3188, 19, 34),
       (3189, 20, 22),
       (3190, 21, 21),
       (3191, 22, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3192, 23, 25),
       (3193, 24, 29),
       (3194, 25, 54),
       (3195, 26, 36),
       (3196, 27, 25),
       (3197, 28, 24),
       (3198, 29, 32),
       (3199, 30, 35),
       (3200, 31, 31),
       (3201, 32, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3202, 33, 34),
       (3203, 1, 23),
       (3204, 2, 49),
       (3205, 3, 24),
       (3206, 4, 53),
       (3207, 5, 27),
       (3208, 6, 24),
       (3209, 7, 21),
       (3210, 8, 20),
       (3211, 9, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3212, 10, 31),
       (3213, 11, 38),
       (3214, 12, 33),
       (3215, 13, 32),
       (3216, 14, 40),
       (3217, 15, 49),
       (3218, 16, 48),
       (3219, 17, 44),
       (4089, 13, 11),
       (3220, 18, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3221, 19, 29),
       (3222, 20, 28),
       (3223, 21, 64),
       (3224, 22, 25),
       (3225, 23, 33),
       (3226, 24, 42),
       (3227, 25, 14),
       (3228, 26, 28),
       (3229, 27, 49),
       (3230, 28, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3231, 29, 44),
       (3232, 30, 24),
       (3233, 31, 22),
       (3234, 32, 36),
       (3235, 33, 40),
       (3236, 34, 34),
       (3237, 1, 7),
       (3238, 2, 28),
       (3239, 3, 29),
       (3240, 4, 49)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3241, 5, 49),
       (3242, 6, 31),
       (3243, 7, 31),
       (3244, 8, 31),
       (3245, 9, 27),
       (3246, 10, 45),
       (3247, 11, 40),
       (3248, 12, 26),
       (3249, 13, 43),
       (3250, 14, 54)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3251, 15, 47),
       (3252, 16, 17),
       (3253, 1, 7),
       (3254, 2, 16),
       (4090, 14, 11),
       (3255, 3, 40),
       (3256, 4, 20),
       (3257, 5, 23),
       (3258, 6, 22),
       (3259, 7, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3260, 8, 18),
       (3261, 9, 31),
       (3262, 10, 27),
       (3263, 11, 24),
       (3264, 12, 19),
       (3265, 13, 20),
       (3266, 14, 23),
       (3267, 15, 24),
       (3268, 16, 18),
       (3269, 17, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3270, 18, 28),
       (3271, 19, 22),
       (3272, 20, 17),
       (3273, 21, 31),
       (3275, 23, 28),
       (3276, 24, 25),
       (3277, 25, 22),
       (3278, 26, 29),
       (3279, 27, 22),
       (3280, 28, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3281, 29, 23),
       (3282, 30, 33),
       (3283, 1, 7),
       (3284, 2, 26),
       (3285, 3, 22),
       (3286, 4, 17),
       (3287, 5, 21),
       (3288, 6, 29),
       (3289, 7, 21),
       (3290, 8, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3291, 9, 29),
       (3292, 10, 34),
       (3293, 11, 15),
       (3294, 12, 20),
       (3295, 13, 26),
       (3296, 14, 23),
       (3297, 15, 32),
       (3298, 16, 27),
       (3299, 17, 23),
       (3300, 18, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3301, 19, 43),
       (3302, 20, 41),
       (3303, 21, 25),
       (3304, 22, 36),
       (3305, 23, 43),
       (3306, 24, 18),
       (3307, 25, 27),
       (3308, 26, 17),
       (3309, 27, 19),
       (3310, 28, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3311, 29, 23),
       (3312, 30, 13),
       (3313, 31, 28),
       (3314, 32, 26),
       (3315, 33, 17),
       (3353, 7, 31),
       (3316, 34, 38),
       (3317, 35, 17),
       (3318, 36, 29),
       (3319, 37, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3320, 1, 7),
       (3321, 2, 50),
       (3322, 3, 38),
       (3323, 4, 31),
       (3324, 5, 37),
       (3325, 6, 40),
       (3326, 7, 14),
       (3327, 8, 16),
       (3328, 9, 31),
       (3329, 10, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3330, 11, 32),
       (3331, 12, 30),
       (3332, 13, 30),
       (3333, 14, 31),
       (3334, 15, 22),
       (3335, 16, 34),
       (3336, 17, 59),
       (3337, 18, 45),
       (3338, 19, 32),
       (3339, 20, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3340, 21, 25),
       (3341, 22, 29),
       (3342, 23, 29),
       (3343, 24, 41),
       (3344, 25, 50),
       (3345, 26, 26),
       (3346, 27, 35),
       (3347, 1, 29),
       (3348, 2, 29),
       (3349, 3, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3350, 4, 16),
       (3351, 5, 26),
       (3352, 6, 37),
       (3354, 8, 28),
       (3355, 9, 25),
       (3356, 10, 42),
       (3357, 11, 20),
       (3358, 12, 32),
       (3359, 13, 10),
       (3360, 14, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3361, 15, 18),
       (3362, 16, 7),
       (3363, 17, 29),
       (3364, 18, 30),
       (3365, 19, 11),
       (3366, 20, 25),
       (3367, 21, 42),
       (3368, 22, 18),
       (3369, 23, 34),
       (3370, 24, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3371, 1, 7),
       (3372, 2, 37),
       (3373, 3, 45),
       (3374, 4, 46),
       (3375, 5, 26),
       (3376, 6, 28),
       (3377, 7, 25),
       (3378, 8, 22),
       (3379, 9, 26),
       (3380, 10, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3381, 11, 32),
       (3382, 12, 24),
       (3383, 13, 43),
       (3384, 14, 30),
       (3385, 15, 19),
       (3386, 16, 25),
       (3387, 17, 7),
       (3388, 18, 59),
       (3389, 19, 23),
       (3390, 20, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3391, 21, 40),
       (3392, 22, 34),
       (3393, 23, 33),
       (3394, 24, 27),
       (3395, 25, 39),
       (3396, 26, 7),
       (3397, 27, 44),
       (3398, 28, 20),
       (3399, 29, 20),
       (3400, 30, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3401, 31, 13),
       (3402, 32, 25),
       (3403, 33, 17),
       (3404, 1, 7),
       (3405, 2, 30),
       (3406, 3, 38),
       (3407, 4, 19),
       (3408, 5, 18),
       (3409, 6, 25),
       (3410, 7, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3411, 8, 28),
       (3412, 9, 7),
       (3413, 10, 45),
       (3414, 11, 25),
       (3415, 12, 27),
       (3416, 13, 46),
       (3417, 14, 39),
       (3418, 15, 31),
       (4091, 15, 11),
       (3419, 16, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3420, 17, 35),
       (3421, 18, 50),
       (3422, 19, 25),
       (3423, 20, 33),
       (3424, 21, 37),
       (3425, 22, 45),
       (3426, 23, 7),
       (3427, 24, 35),
       (3428, 25, 18),
       (3429, 26, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3430, 27, 40),
       (3431, 28, 29),
       (3432, 29, 23),
       (3433, 30, 25),
       (3434, 31, 21),
       (3435, 32, 35),
       (3436, 33, 7),
       (3437, 34, 26),
       (3438, 35, 16),
       (3439, 36, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3440, 37, 42),
       (3441, 38, 26),
       (3442, 39, 48),
       (3443, 40, 39),
       (3444, 41, 32),
       (3445, 42, 19),
       (3446, 43, 32),
       (3447, 44, 14),
       (3448, 1, 7),
       (3449, 2, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3450, 3, 35),
       (3451, 4, 15),
       (3452, 5, 23),
       (3453, 6, 19),
       (3454, 7, 28),
       (3455, 8, 26),
       (3456, 9, 38),
       (3457, 10, 37),
       (3747, 3, 27),
       (3458, 11, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3459, 12, 19),
       (3460, 13, 7),
       (3461, 14, 29),
       (3462, 15, 19),
       (3463, 16, 43),
       (3464, 17, 14),
       (3465, 18, 15),
       (3466, 19, 22),
       (3467, 20, 26),
       (3468, 21, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3469, 22, 24),
       (3470, 23, 36),
       (3471, 1, 10),
       (3472, 2, 30),
       (3473, 3, 22),
       (11087, 9, 10),
       (3474, 4, 30),
       (3475, 5, 35),
       (3476, 6, 36),
       (3477, 7, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3478, 8, 33),
       (3479, 9, 32),
       (3480, 10, 44),
       (3481, 11, 33),
       (3482, 12, 22),
       (3483, 13, 14),
       (3484, 14, 22),
       (3485, 15, 31),
       (3486, 16, 40),
       (3487, 17, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3488, 18, 23),
       (3489, 19, 19),
       (3490, 20, 23),
       (3491, 21, 23),
       (3492, 22, 31),
       (3493, 23, 23),
       (3494, 24, 17),
       (3495, 25, 32),
       (3496, 26, 22),
       (3497, 27, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3498, 28, 50),
       (3499, 29, 37),
       (3500, 30, 45),
       (3501, 31, 35),
       (3502, 32, 22),
       (3503, 33, 43),
       (3504, 34, 20),
       (3505, 35, 30),
       (3506, 36, 20),
       (3507, 37, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3508, 38, 28),
       (3509, 39, 26),
       (3510, 40, 24),
       (3511, 41, 31),
       (3512, 42, 23),
       (3513, 43, 14),
       (3514, 44, 29),
       (3515, 45, 38),
       (3516, 46, 44),
       (3517, 47, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3518, 48, 17),
       (3519, 49, 37),
       (3520, 50, 51),
       (3521, 51, 28),
       (3522, 52, 32),
       (3523, 53, 24),
       (3524, 54, 26),
       (3525, 55, 29),
       (3526, 1, 40),
       (3527, 2, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3528, 3, 14),
       (3529, 4, 27),
       (3530, 5, 33),
       (3531, 6, 40),
       (3532, 7, 16),
       (3533, 8, 28),
       (3534, 9, 22),
       (3535, 10, 20),
       (3536, 11, 16),
       (3537, 12, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3538, 13, 37),
       (3539, 14, 16),
       (3540, 15, 28),
       (3541, 16, 44),
       (3542, 17, 33),
       (3543, 18, 24),
       (3544, 19, 23),
       (3545, 20, 27),
       (3546, 21, 27),
       (3547, 22, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3548, 23, 19),
       (3549, 24, 21),
       (3550, 25, 45),
       (3551, 26, 34),
       (3552, 27, 17),
       (3553, 28, 21),
       (3554, 29, 19),
       (3555, 30, 31),
       (3556, 31, 27),
       (3557, 32, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3558, 33, 32),
       (3559, 34, 31),
       (3560, 35, 26),
       (3561, 36, 51),
       (3562, 37, 28),
       (3563, 38, 18),
       (3564, 39, 32),
       (3565, 40, 30),
       (3566, 41, 33),
       (3567, 42, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3568, 43, 43),
       (3569, 44, 42),
       (3570, 45, 38),
       (3571, 46, 24),
       (3572, 1, 7),
       (3573, 2, 27),
       (3574, 3, 33),
       (3575, 4, 14),
       (3576, 5, 30),
       (3577, 6, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3578, 7, 29),
       (3748, 4, 20),
       (3579, 8, 36),
       (3580, 9, 26),
       (3581, 10, 43),
       (3582, 11, 27),
       (3583, 12, 23),
       (3584, 13, 19),
       (3585, 14, 36),
       (3586, 15, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3587, 16, 41),
       (3588, 17, 18),
       (3589, 18, 39),
       (3632, 27, 20),
       (3590, 19, 34),
       (3591, 20, 26),
       (3592, 21, 28),
       (3593, 22, 22),
       (3594, 23, 33),
       (3595, 24, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3596, 25, 20),
       (3597, 26, 28),
       (3598, 27, 42),
       (3599, 28, 42),
       (3600, 29, 21),
       (3601, 30, 30),
       (3602, 31, 20),
       (3603, 32, 23),
       (3604, 33, 41),
       (3605, 34, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3606, 1, 39),
       (3607, 2, 33),
       (3608, 3, 27),
       (3609, 4, 19),
       (3610, 5, 21),
       (3611, 6, 8),
       (3612, 7, 8),
       (3613, 8, 8),
       (3614, 9, 8),
       (3615, 10, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3616, 11, 8),
       (3617, 12, 8),
       (3618, 13, 8),
       (3619, 14, 8),
       (3620, 15, 8),
       (3621, 16, 27),
       (3622, 17, 13),
       (3661, 2, 31),
       (3623, 18, 44),
       (3624, 19, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3625, 20, 46),
       (3626, 21, 20),
       (3627, 22, 47),
       (3628, 23, 20),
       (3629, 24, 37),
       (3630, 25, 21),
       (3631, 26, 37),
       (11127, 17, 11),
       (3633, 28, 37),
       (3634, 29, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3635, 30, 37),
       (3636, 31, 20),
       (3637, 32, 43),
       (3638, 33, 18),
       (3639, 34, 37),
       (3640, 35, 20),
       (3641, 36, 37),
       (3642, 37, 20),
       (3643, 38, 37),
       (3644, 39, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3645, 40, 37),
       (3646, 41, 20),
       (3647, 42, 37),
       (3648, 43, 20),
       (3649, 44, 28),
       (3650, 45, 33),
       (3651, 46, 19),
       (3652, 47, 15),
       (3653, 48, 7),
       (3654, 49, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3655, 50, 48),
       (3656, 51, 38),
       (3657, 52, 27),
       (3658, 53, 39),
       (3659, 54, 17),
       (3660, 1, 10),
       (3746, 2, 22),
       (3662, 3, 42),
       (3663, 4, 19),
       (3664, 5, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3665, 6, 18),
       (3666, 7, 22),
       (3667, 8, 18),
       (3668, 9, 32),
       (3669, 10, 33),
       (3670, 11, 18),
       (3671, 12, 29),
       (3672, 13, 19),
       (3673, 14, 21),
       (3674, 15, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3675, 16, 34),
       (3676, 17, 37),
       (3677, 18, 33),
       (3678, 19, 17),
       (3679, 20, 26),
       (3680, 21, 19),
       (3681, 22, 21),
       (3682, 23, 19),
       (3683, 24, 30),
       (3684, 25, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3685, 26, 19),
       (3686, 27, 29),
       (3687, 28, 19),
       (3688, 29, 21),
       (3689, 30, 19),
       (3690, 31, 30),
       (3691, 32, 39),
       (3692, 33, 16),
       (3693, 34, 35),
       (3694, 1, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3695, 2, 20),
       (3696, 3, 25),
       (3697, 4, 42),
       (3698, 5, 7),
       (3699, 6, 20),
       (3700, 7, 26),
       (3701, 8, 28),
       (3702, 9, 27),
       (3703, 10, 26),
       (3704, 11, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3867, 16, 10),
       (3705, 12, 36),
       (3706, 13, 44),
       (3708, 15, 25),
       (3709, 16, 15),
       (3710, 17, 16),
       (3711, 18, 17),
       (3712, 19, 15),
       (3713, 20, 24),
       (3714, 21, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3715, 22, 34),
       (3716, 23, 12),
       (3717, 24, 18),
       (3718, 25, 35),
       (3719, 26, 37),
       (3720, 27, 35),
       (3721, 28, 28),
       (3722, 29, 17),
       (3723, 30, 21),
       (3724, 31, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3725, 32, 31),
       (3726, 33, 21),
       (3727, 34, 28),
       (3728, 35, 29),
       (3729, 36, 39),
       (3730, 37, 18),
       (3731, 38, 50),
       (3732, 39, 35),
       (3733, 40, 30),
       (3734, 41, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3735, 42, 17),
       (3736, 43, 37),
       (3737, 44, 7),
       (3738, 45, 34),
       (3739, 46, 32),
       (3740, 47, 25),
       (3741, 48, 21),
       (3742, 49, 21),
       (3743, 50, 29),
       (3744, 51, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3745, 1, 10),
       (3749, 5, 32),
       (3750, 6, 26),
       (3751, 7, 39),
       (3752, 8, 27),
       (3753, 9, 36),
       (3754, 10, 23),
       (3755, 11, 28),
       (3756, 12, 39),
       (3757, 13, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3758, 14, 49),
       (3759, 15, 64),
       (3760, 16, 50),
       (3761, 17, 10),
       (3762, 18, 17),
       (3763, 19, 40),
       (3764, 20, 18),
       (3765, 21, 7),
       (3766, 22, 17),
       (3767, 23, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3768, 24, 17),
       (3769, 25, 37),
       (3770, 26, 51),
       (3771, 27, 40),
       (3772, 28, 35),
       (3773, 29, 18),
       (3774, 30, 32),
       (3775, 31, 36),
       (3776, 32, 41),
       (3777, 33, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3778, 34, 25),
       (3779, 35, 26),
       (3780, 36, 18),
       (3781, 37, 35),
       (3782, 38, 18),
       (3783, 39, 26),
       (3784, 40, 23),
       (3785, 41, 35),
       (3786, 42, 21),
       (3787, 43, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3788, 44, 17),
       (3789, 45, 28),
       (3790, 46, 27),
       (3791, 47, 34),
       (3792, 48, 16),
       (3793, 49, 33),
       (3794, 1, 7),
       (3795, 2, 29),
       (3796, 3, 28),
       (3797, 4, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3798, 5, 7),
       (3799, 6, 31),
       (3800, 7, 42),
       (3801, 8, 44),
       (3802, 9, 24),
       (3803, 10, 20),
       (3804, 11, 7),
       (3805, 12, 24),
       (3806, 13, 41),
       (3807, 14, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3808, 15, 55),
       (3809, 16, 13),
       (3810, 17, 34),
       (3811, 18, 54),
       (3812, 19, 47),
       (3813, 20, 26),
       (3814, 21, 48),
       (3815, 22, 32),
       (3816, 23, 22),
       (3817, 24, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3818, 25, 31),
       (3819, 26, 31),
       (3820, 27, 63),
       (3821, 28, 20),
       (3822, 29, 19),
       (3823, 30, 36),
       (3824, 31, 16),
       (3825, 1, 7),
       (3917, 66, 16),
       (3826, 2, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3827, 3, 36),
       (3828, 4, 25),
       (3829, 5, 46),
       (3830, 6, 19),
       (3831, 7, 33),
       (3832, 8, 12),
       (3833, 9, 38),
       (3834, 10, 27),
       (3835, 11, 40),
       (3836, 12, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3837, 13, 29),
       (3838, 14, 42),
       (3839, 15, 28),
       (3840, 16, 19),
       (3841, 17, 35),
       (3842, 18, 44),
       (3843, 19, 43),
       (3844, 20, 35),
       (3845, 21, 44),
       (3846, 22, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3847, 23, 24),
       (3848, 24, 7),
       (3849, 25, 14),
       (3850, 26, 12),
       (3851, 27, 17),
       (3852, 1, 47),
       (3853, 2, 30),
       (3854, 3, 35),
       (3855, 4, 7),
       (3856, 5, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3857, 6, 15),
       (3858, 7, 17),
       (3859, 8, 29),
       (3860, 9, 25),
       (3861, 10, 27),
       (3862, 11, 22),
       (3863, 12, 21),
       (3864, 13, 43),
       (3865, 14, 10),
       (3866, 15, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3868, 17, 31),
       (3869, 18, 15),
       (3870, 19, 44),
       (3871, 20, 10),
       (3872, 21, 16),
       (3873, 22, 10),
       (3874, 23, 31),
       (3875, 24, 16),
       (3876, 25, 42),
       (3877, 26, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3878, 27, 16),
       (3879, 28, 10),
       (3880, 29, 31),
       (3881, 30, 16),
       (3882, 31, 42),
       (3883, 32, 10),
       (3884, 33, 16),
       (3885, 34, 10),
       (3886, 35, 31),
       (3887, 36, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3888, 37, 42),
       (3889, 38, 10),
       (3890, 39, 16),
       (3891, 40, 10),
       (3892, 41, 31),
       (3893, 42, 16),
       (3894, 43, 42),
       (3895, 44, 10),
       (3896, 45, 16),
       (3897, 46, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3898, 47, 31),
       (3899, 48, 16),
       (3900, 49, 42),
       (3901, 50, 10),
       (3902, 51, 16),
       (3903, 52, 10),
       (3904, 53, 31),
       (3905, 54, 16),
       (3906, 55, 42),
       (3907, 56, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3908, 57, 16),
       (3909, 58, 10),
       (3910, 59, 31),
       (3911, 60, 16),
       (3912, 61, 42),
       (3913, 62, 10),
       (3914, 63, 16),
       (3915, 64, 10),
       (3916, 65, 31),
       (3918, 67, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3919, 68, 10),
       (3920, 69, 16),
       (3921, 70, 10),
       (3922, 71, 31),
       (3923, 72, 16),
       (3964, 24, 34),
       (3924, 73, 42),
       (3925, 74, 10),
       (3926, 75, 16),
       (3927, 76, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3928, 77, 31),
       (3929, 78, 16),
       (3930, 79, 42),
       (3931, 80, 10),
       (3932, 81, 16),
       (3933, 82, 10),
       (3934, 83, 31),
       (3935, 84, 29),
       (3936, 85, 32),
       (3937, 86, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3938, 87, 35),
       (3939, 88, 41),
       (3940, 89, 45),
       (3941, 1, 7),
       (3942, 2, 24),
       (3943, 3, 24),
       (3944, 4, 40),
       (3945, 5, 7),
       (3946, 6, 13),
       (3947, 7, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3948, 8, 28),
       (3949, 9, 24),
       (3950, 10, 21),
       (3951, 11, 32),
       (3952, 12, 38),
       (3953, 13, 22),
       (3954, 14, 19),
       (3955, 15, 30),
       (3956, 16, 37),
       (3957, 17, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3958, 18, 18),
       (3959, 19, 65),
       (3960, 20, 36),
       (3961, 21, 32),
       (3962, 22, 36),
       (3963, 23, 7),
       (3965, 25, 20),
       (3966, 26, 31),
       (3967, 1, 30),
       (3968, 2, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3969, 3, 36),
       (3970, 4, 15),
       (3971, 5, 37),
       (3972, 6, 40),
       (3973, 7, 42),
       (3974, 8, 18),
       (3975, 9, 7),
       (3976, 10, 41),
       (3977, 11, 25),
       (3978, 12, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3979, 13, 46),
       (3980, 14, 51),
       (3981, 15, 39),
       (3982, 16, 16),
       (3983, 17, 34),
       (3984, 18, 31),
       (3985, 19, 24),
       (3986, 20, 31),
       (3987, 21, 39),
       (3988, 22, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3989, 23, 29),
       (3990, 1, 7),
       (3991, 2, 32),
       (3992, 3, 23),
       (3993, 4, 22),
       (3994, 5, 19),
       (3995, 6, 30),
       (3996, 7, 20),
       (3997, 8, 26),
       (4040, 15, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (3998, 9, 42),
       (3999, 10, 54),
       (4000, 11, 34),
       (4362, 21, 12),
       (4001, 12, 27),
       (4002, 13, 15),
       (4003, 14, 32),
       (4004, 15, 19),
       (4005, 16, 19),
       (4006, 17, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4007, 18, 25),
       (4008, 19, 19),
       (4009, 20, 19),
       (4010, 21, 20),
       (4011, 22, 28),
       (4012, 23, 19),
       (4013, 24, 19),
       (4014, 25, 36),
       (4015, 26, 19),
       (4016, 27, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4017, 28, 18),
       (4018, 29, 48),
       (4019, 30, 22),
       (4020, 31, 31),
       (4021, 32, 30),
       (4022, 33, 35),
       (4023, 34, 18),
       (4024, 35, 33),
       (4025, 36, 19),
       (4026, 1, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4027, 2, 16),
       (4028, 3, 18),
       (4029, 4, 28),
       (4030, 5, 27),
       (4031, 6, 19),
       (4032, 7, 17),
       (4033, 8, 40),
       (4034, 9, 17),
       (4035, 10, 30),
       (4036, 11, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4037, 12, 40),
       (4038, 13, 25),
       (4039, 14, 18),
       (4082, 6, 11),
       (4041, 16, 45),
       (4042, 17, 46),
       (12063, 35, 12),
       (4043, 18, 52),
       (4044, 19, 19),
       (4045, 20, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4046, 21, 31),
       (4047, 22, 28),
       (4048, 23, 27),
       (4049, 24, 31),
       (4050, 25, 48),
       (4051, 26, 51),
       (4052, 27, 20),
       (4053, 28, 24),
       (4054, 29, 28),
       (4055, 30, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4056, 31, 53),
       (4057, 32, 41),
       (4058, 33, 32),
       (4059, 34, 19),
       (4060, 35, 14),
       (4061, 1, 24),
       (4062, 2, 22),
       (4063, 3, 20),
       (4064, 4, 27),
       (4065, 5, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4066, 6, 34),
       (4067, 7, 14),
       (4068, 8, 37),
       (4069, 9, 13),
       (4070, 10, 28),
       (4071, 11, 29),
       (4072, 12, 26),
       (4073, 13, 14),
       (4074, 14, 41),
       (4075, 15, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4076, 16, 15),
       (4077, 1, 7),
       (4078, 2, 38),
       (4079, 3, 28),
       (4080, 4, 16),
       (4081, 5, 11),
       (4092, 16, 25),
       (4093, 17, 31),
       (4094, 18, 26),
       (4095, 19, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4096, 20, 44),
       (4097, 21, 22),
       (4098, 22, 33),
       (4099, 23, 40),
       (4100, 24, 22),
       (4101, 25, 15),
       (4102, 26, 47),
       (4103, 27, 31),
       (4104, 28, 28),
       (4105, 29, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4106, 30, 27),
       (4107, 31, 26),
       (4108, 32, 56),
       (4109, 33, 32),
       (4110, 1, 17),
       (4111, 2, 39),
       (4112, 3, 35),
       (4113, 4, 18),
       (4114, 5, 21),
       (4115, 6, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4116, 7, 29),
       (4117, 8, 27),
       (4118, 9, 35),
       (4119, 10, 27),
       (4120, 11, 32),
       (4121, 12, 23),
       (4122, 13, 24),
       (4123, 14, 59),
       (4124, 15, 24),
       (4125, 16, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4126, 17, 20),
       (4127, 18, 40),
       (4128, 19, 30),
       (4129, 20, 11),
       (4130, 21, 21),
       (4131, 22, 36),
       (4132, 23, 24),
       (4133, 24, 33),
       (4134, 25, 28),
       (4135, 26, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4136, 27, 29),
       (4137, 28, 23),
       (4138, 29, 32),
       (4139, 30, 32),
       (4140, 31, 27),
       (4141, 32, 13),
       (4142, 33, 26),
       (4143, 34, 36),
       (4144, 35, 33),
       (4145, 36, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4146, 37, 20),
       (4147, 38, 25),
       (4148, 39, 17),
       (4149, 40, 39),
       (4150, 41, 18),
       (4151, 42, 19),
       (4152, 43, 33),
       (4153, 44, 29),
       (4154, 45, 24),
       (4155, 1, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4156, 2, 26),
       (4157, 3, 44),
       (4158, 4, 34),
       (4159, 5, 27),
       (4160, 6, 31),
       (4161, 7, 23),
       (4162, 8, 25),
       (4163, 9, 28),
       (4164, 10, 26),
       (4165, 11, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4166, 12, 20),
       (4167, 13, 26),
       (4168, 14, 38),
       (4169, 15, 36),
       (4170, 16, 18),
       (4171, 17, 7),
       (4172, 18, 21),
       (4173, 19, 24),
       (4174, 20, 30),
       (4175, 21, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4176, 22, 18),
       (4177, 23, 22),
       (4178, 24, 57),
       (4179, 25, 48),
       (4180, 26, 31),
       (4181, 27, 21),
       (4182, 28, 28),
       (4183, 29, 31),
       (4184, 30, 34),
       (4185, 31, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4186, 32, 21),
       (4187, 33, 19),
       (4188, 34, 19),
       (4189, 35, 25),
       (4190, 36, 21),
       (4191, 37, 7),
       (4192, 38, 38),
       (4193, 39, 47),
       (4194, 40, 16),
       (4195, 41, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4196, 1, 34),
       (4197, 2, 29),
       (4198, 3, 47),
       (4199, 4, 11),
       (4200, 5, 48),
       (4201, 6, 11),
       (4202, 7, 40),
       (4203, 8, 12),
       (4204, 9, 48),
       (4205, 10, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4206, 11, 22),
       (4207, 12, 21),
       (4208, 13, 38),
       (4209, 14, 37),
       (4210, 15, 30),
       (4211, 16, 21),
       (4212, 17, 34),
       (4368, 27, 21),
       (4213, 18, 31),
       (4214, 19, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4215, 20, 10),
       (4216, 21, 15),
       (4217, 22, 32),
       (4218, 23, 7),
       (4219, 24, 18),
       (4220, 25, 18),
       (4221, 26, 32),
       (4222, 27, 41),
       (4223, 28, 28),
       (4224, 29, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4225, 30, 41),
       (4226, 31, 25),
       (4227, 32, 26),
       (4228, 33, 27),
       (4229, 34, 24),
       (4230, 35, 19),
       (4231, 36, 7),
       (4232, 37, 30),
       (4233, 38, 45),
       (4234, 39, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4235, 40, 48),
       (4236, 41, 27),
       (4237, 42, 36),
       (4238, 43, 14),
       (4239, 44, 7),
       (4240, 45, 22),
       (4241, 46, 45),
       (4242, 47, 36),
       (4243, 48, 15),
       (4244, 49, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4245, 50, 19),
       (4246, 1, 7),
       (4247, 2, 37),
       (4248, 3, 26),
       (4249, 4, 20),
       (4250, 5, 39),
       (4251, 6, 37),
       (4252, 7, 15),
       (4531, 41, 25),
       (4253, 8, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4254, 9, 26),
       (4452, 5, 12),
       (4255, 10, 41),
       (4256, 11, 11),
       (4257, 12, 20),
       (4258, 13, 21),
       (4259, 1, 37),
       (4260, 2, 45),
       (4261, 3, 38),
       (4262, 4, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4263, 5, 27),
       (4264, 6, 35),
       (4265, 7, 48),
       (4266, 8, 49),
       (4267, 9, 52),
       (4268, 10, 21),
       (4269, 11, 53),
       (4270, 12, 34),
       (4271, 13, 31),
       (4272, 14, 8)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4273, 15, 41),
       (4274, 16, 38),
       (4275, 17, 51),
       (4276, 18, 22),
       (4277, 19, 52),
       (4278, 20, 34),
       (4279, 21, 35),
       (4280, 22, 21),
       (4281, 23, 40),
       (4282, 24, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4283, 25, 7),
       (4284, 26, 49),
       (4285, 27, 27),
       (4797, 36, 18),
       (4286, 28, 36),
       (4287, 29, 27),
       (4288, 30, 38),
       (4582, 4, 19),
       (4289, 31, 28),
       (4290, 32, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4291, 1, 10),
       (4292, 2, 38),
       (4293, 3, 27),
       (4294, 4, 27),
       (4295, 5, 24),
       (4296, 6, 24),
       (4297, 7, 33),
       (4298, 8, 25),
       (4299, 9, 49),
       (4300, 10, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4301, 11, 15),
       (4302, 12, 38),
       (4303, 13, 52),
       (4304, 14, 32),
       (4305, 15, 14),
       (4306, 16, 33),
       (4307, 17, 28),
       (4308, 18, 48),
       (4309, 19, 45),
       (4310, 20, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4311, 21, 35),
       (4312, 22, 21),
       (4313, 1, 34),
       (4314, 2, 19),
       (4315, 3, 21),
       (4316, 4, 22),
       (4317, 5, 43),
       (4318, 6, 33),
       (4319, 7, 7),
       (4320, 8, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4321, 9, 13),
       (4322, 10, 31),
       (4323, 11, 27),
       (4324, 12, 40),
       (4325, 13, 21),
       (4326, 14, 26),
       (4327, 15, 26),
       (4328, 16, 36),
       (4329, 17, 56),
       (4330, 18, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4331, 19, 46),
       (4332, 20, 23),
       (4333, 21, 17),
       (4334, 22, 19),
       (4335, 23, 20),
       (4336, 24, 36),
       (4337, 25, 14),
       (4338, 26, 26),
       (4339, 27, 21),
       (4340, 28, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4341, 29, 23),
       (4342, 1, 34),
       (4343, 2, 27),
       (4344, 3, 31),
       (4345, 4, 33),
       (4346, 5, 41),
       (4347, 6, 20),
       (4348, 7, 38),
       (4349, 8, 35),
       (4350, 9, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4351, 10, 11),
       (4352, 11, 20),
       (4353, 12, 12),
       (4354, 13, 41),
       (4355, 14, 22),
       (4356, 15, 21),
       (4357, 16, 27),
       (4358, 17, 14),
       (4359, 18, 29),
       (4360, 19, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4361, 20, 25),
       (4363, 22, 41),
       (4364, 23, 36),
       (4365, 24, 37),
       (4366, 25, 25),
       (4367, 26, 35),
       (4369, 28, 31),
       (4370, 29, 30),
       (4371, 30, 24),
       (4372, 31, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4373, 32, 22),
       (4374, 33, 31),
       (4375, 34, 43),
       (4376, 35, 24),
       (4377, 1, 19),
       (4378, 2, 16),
       (4379, 3, 23),
       (4380, 4, 44),
       (4381, 5, 54),
       (4382, 6, 54)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4383, 7, 33),
       (4384, 8, 31),
       (4385, 9, 14),
       (4386, 10, 19),
       (4387, 11, 36),
       (4388, 12, 22),
       (4389, 13, 31),
       (4390, 14, 21),
       (4391, 15, 13),
       (4392, 16, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4393, 17, 28),
       (4394, 18, 38),
       (4395, 19, 23),
       (4396, 20, 38),
       (4397, 21, 19),
       (4398, 22, 39),
       (4399, 23, 45),
       (4400, 24, 26),
       (4401, 25, 29),
       (4402, 26, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4403, 27, 29),
       (4404, 28, 28),
       (4405, 29, 27),
       (4406, 30, 37),
       (4407, 31, 36),
       (4408, 32, 33),
       (4409, 33, 32),
       (4410, 34, 36),
       (4411, 35, 35),
       (4412, 36, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4413, 37, 32),
       (4414, 38, 34),
       (4415, 39, 12),
       (4416, 40, 19),
       (4417, 41, 34),
       (4418, 1, 20),
       (4419, 2, 21),
       (4420, 3, 38),
       (4421, 4, 29),
       (4422, 5, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4423, 6, 22),
       (4424, 7, 33),
       (4425, 8, 20),
       (4426, 9, 34),
       (4427, 10, 31),
       (4428, 11, 26),
       (4429, 12, 20),
       (4430, 13, 42),
       (4431, 14, 30),
       (4432, 15, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4433, 16, 22),
       (4434, 17, 31),
       (4435, 18, 21),
       (4436, 19, 39),
       (4437, 20, 17),
       (4438, 21, 30),
       (4439, 22, 19),
       (4440, 23, 29),
       (4441, 24, 36),
       (4442, 25, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4443, 26, 21),
       (4444, 27, 28),
       (4445, 28, 16),
       (4446, 29, 20),
       (4447, 30, 19),
       (4448, 1, 32),
       (4449, 2, 24),
       (4450, 3, 23),
       (4451, 4, 23),
       (4453, 6, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4454, 7, 29),
       (4455, 8, 41),
       (4456, 9, 33),
       (4457, 10, 37),
       (4458, 11, 25),
       (4459, 12, 19),
       (4460, 13, 38),
       (4461, 14, 27),
       (4462, 15, 23),
       (4463, 16, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4464, 17, 46),
       (4465, 18, 21),
       (4466, 19, 17),
       (4467, 20, 28),
       (4468, 21, 27),
       (4469, 22, 13),
       (4470, 23, 17),
       (4471, 24, 26),
       (4472, 25, 18),
       (4473, 1, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4474, 2, 23),
       (4475, 3, 17),
       (4476, 4, 33),
       (4477, 5, 22),
       (4478, 6, 48),
       (4479, 7, 32),
       (4480, 8, 38),
       (4481, 9, 13),
       (4482, 10, 7),
       (4483, 11, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4484, 12, 12),
       (4485, 13, 34),
       (4798, 37, 19),
       (4486, 14, 34),
       (4487, 15, 29),
       (4488, 16, 7),
       (4489, 17, 7),
       (4490, 18, 47),
       (4491, 1, 24),
       (4492, 2, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4493, 3, 21),
       (4494, 4, 32),
       (4495, 5, 25),
       (4496, 6, 15),
       (4497, 7, 25),
       (4499, 9, 40),
       (4500, 10, 33),
       (4501, 11, 8),
       (4502, 12, 29),
       (4503, 13, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4504, 14, 15),
       (4505, 15, 29),
       (4506, 16, 15),
       (4507, 17, 15),
       (4508, 18, 23),
       (4509, 19, 18),
       (4510, 20, 31),
       (4511, 21, 21),
       (4512, 22, 22),
       (4513, 23, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4514, 24, 15),
       (4515, 25, 22),
       (4516, 26, 29),
       (4517, 27, 21),
       (4518, 28, 11),
       (4519, 29, 23),
       (4520, 30, 21),
       (4521, 31, 17),
       (4522, 32, 17),
       (4523, 33, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4524, 34, 22),
       (4525, 35, 31),
       (4526, 36, 15),
       (4527, 37, 34),
       (4528, 38, 29),
       (4529, 39, 15),
       (4530, 40, 24),
       (4532, 42, 26),
       (4533, 43, 23),
       (4534, 44, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4535, 45, 20),
       (4536, 46, 11),
       (4537, 47, 25),
       (4538, 48, 22),
       (4539, 49, 15),
       (4540, 50, 26),
       (4541, 51, 22),
       (4542, 52, 7),
       (4543, 53, 17),
       (4544, 54, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4545, 55, 22),
       (4546, 56, 16),
       (4547, 57, 35),
       (4548, 58, 36),
       (4549, 59, 33),
       (4550, 60, 12),
       (4551, 61, 13),
       (4552, 62, 43),
       (4553, 63, 29),
       (4554, 64, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4555, 65, 35),
       (4556, 1, 49),
       (4557, 2, 28),
       (4558, 3, 39),
       (4559, 4, 31),
       (4560, 5, 8),
       (4561, 6, 7),
       (4562, 7, 35),
       (4563, 8, 30),
       (4564, 9, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4565, 10, 18),
       (4566, 11, 47),
       (4567, 12, 27),
       (4568, 13, 21),
       (4569, 14, 40),
       (4570, 15, 7),
       (4571, 16, 17),
       (4572, 17, 39),
       (4573, 18, 26),
       (4574, 19, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4575, 20, 21),
       (4576, 21, 51),
       (4577, 22, 24),
       (4578, 23, 18),
       (4579, 1, 7),
       (4580, 2, 37),
       (4581, 3, 36),
       (4753, 34, 12),
       (4583, 5, 26),
       (4584, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4585, 7, 34),
       (4586, 8, 38),
       (4587, 9, 36),
       (4588, 10, 19),
       (4589, 11, 30),
       (4590, 12, 39),
       (4591, 13, 33),
       (4592, 14, 49),
       (4593, 15, 25),
       (4594, 16, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4595, 17, 20),
       (4596, 18, 16),
       (4597, 19, 35),
       (4598, 20, 26),
       (4599, 21, 14),
       (4600, 22, 14),
       (4601, 23, 19),
       (4602, 24, 39),
       (4603, 25, 18),
       (4604, 26, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4605, 27, 25),
       (4606, 28, 23),
       (4607, 29, 11),
       (4608, 30, 9),
       (4609, 31, 26),
       (4610, 1, 35),
       (4611, 2, 27),
       (4612, 3, 22),
       (4613, 4, 12),
       (4614, 5, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4655, 6, 28),
       (4615, 6, 43),
       (4616, 7, 29),
       (4617, 8, 32),
       (4618, 9, 23),
       (4619, 10, 11),
       (4620, 11, 28),
       (4621, 12, 32),
       (4622, 13, 35),
       (4623, 14, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4624, 15, 12),
       (4625, 16, 23),
       (4626, 17, 22),
       (4627, 18, 26),
       (4628, 19, 23),
       (4629, 20, 18),
       (4630, 21, 26),
       (4631, 22, 24),
       (4632, 23, 18),
       (4633, 24, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4634, 25, 23),
       (4635, 26, 18),
       (4636, 27, 26),
       (4637, 28, 24),
       (4638, 29, 18),
       (4639, 30, 26),
       (4640, 31, 23),
       (4641, 32, 18),
       (4642, 33, 26),
       (4643, 34, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4644, 35, 17),
       (4645, 36, 31),
       (4646, 37, 27),
       (4647, 38, 24),
       (4648, 39, 37),
       (4649, 40, 15),
       (4650, 1, 24),
       (4651, 2, 38),
       (4652, 3, 25),
       (4653, 4, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4654, 5, 39),
       (4696, 31, 12),
       (4656, 7, 35),
       (4657, 8, 43),
       (4658, 9, 25),
       (4659, 10, 20),
       (4660, 11, 32),
       (4661, 12, 48),
       (4662, 13, 23),
       (4663, 14, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4664, 15, 22),
       (4665, 16, 30),
       (4666, 1, 7),
       (4667, 2, 17),
       (4668, 3, 30),
       (4669, 4, 18),
       (4670, 5, 21),
       (4671, 6, 40),
       (4672, 7, 15),
       (4673, 8, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4674, 9, 33),
       (4675, 10, 19),
       (4676, 11, 17),
       (4677, 12, 43),
       (4678, 13, 22),
       (4679, 14, 28),
       (4680, 15, 13),
       (4681, 16, 33),
       (4682, 17, 22),
       (4683, 18, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4684, 19, 35),
       (4685, 20, 29),
       (4686, 21, 28),
       (4687, 22, 16),
       (4688, 23, 45),
       (4689, 24, 24),
       (4690, 25, 7),
       (4691, 26, 31),
       (4692, 27, 23),
       (4693, 28, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4694, 29, 18),
       (4695, 30, 51),
       (4697, 32, 26),
       (4698, 33, 7),
       (4699, 34, 7),
       (4700, 35, 21),
       (4701, 36, 31),
       (4702, 37, 15),
       (4703, 38, 18),
       (4704, 39, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4705, 40, 17),
       (4706, 41, 20),
       (4707, 42, 17),
       (4708, 43, 20),
       (4709, 44, 7),
       (4710, 45, 8),
       (4711, 46, 5),
       (4712, 47, 42),
       (4713, 48, 25),
       (4714, 49, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4715, 50, 35),
       (4716, 51, 16),
       (4717, 52, 34),
       (4718, 53, 14),
       (4719, 54, 36),
       (4720, 1, 40),
       (4721, 2, 28),
       (4722, 3, 18),
       (4723, 4, 21),
       (4724, 5, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4725, 6, 27),
       (4726, 7, 23),
       (4727, 8, 16),
       (4728, 9, 37),
       (4729, 10, 14),
       (4730, 11, 39),
       (4731, 12, 21),
       (4732, 13, 37),
       (4733, 14, 26),
       (4734, 15, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4735, 16, 23),
       (4736, 17, 40),
       (4737, 18, 19),
       (4738, 19, 31),
       (4739, 20, 24),
       (4740, 21, 24),
       (4741, 22, 33),
       (4742, 23, 23),
       (4743, 24, 23),
       (4744, 25, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4745, 26, 20),
       (4746, 27, 22),
       (4747, 28, 34),
       (4748, 29, 52),
       (4749, 30, 22),
       (4750, 31, 24),
       (4751, 32, 26),
       (4752, 33, 63),
       (4755, 36, 13),
       (4756, 37, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4757, 38, 23),
       (4758, 39, 23),
       (4759, 40, 15),
       (4760, 41, 18),
       (4761, 42, 19),
       (4762, 1, 30),
       (4763, 2, 26),
       (4764, 3, 41),
       (4765, 4, 23),
       (4766, 5, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4767, 6, 18),
       (4768, 7, 22),
       (4769, 8, 33),
       (4770, 9, 28),
       (4771, 10, 12),
       (4772, 11, 15),
       (4773, 12, 13),
       (4774, 13, 10),
       (4775, 14, 19),
       (4776, 15, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4777, 16, 14),
       (4778, 17, 11),
       (4779, 18, 10),
       (4780, 19, 11),
       (4781, 20, 11),
       (4782, 21, 10),
       (4783, 22, 10),
       (4784, 23, 11),
       (4785, 24, 11),
       (4786, 25, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4787, 26, 10),
       (4788, 27, 10),
       (4789, 28, 10),
       (4790, 29, 10),
       (4791, 30, 10),
       (4799, 38, 46),
       (4800, 39, 18),
       (4801, 40, 27),
       (4802, 41, 11),
       (4803, 42, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4804, 43, 10),
       (4805, 44, 16),
       (4806, 45, 11),
       (4807, 46, 12),
       (4808, 47, 16),
       (4809, 48, 21),
       (4810, 49, 19),
       (4811, 50, 17),
       (4812, 51, 22),
       (4813, 52, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4814, 53, 23),
       (4815, 54, 53),
       (4816, 55, 48),
       (4817, 56, 21),
       (4818, 1, 7),
       (4819, 2, 40),
       (4820, 3, 32),
       (4821, 4, 42),
       (4822, 5, 24),
       (4823, 6, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4824, 7, 20),
       (4825, 8, 24),
       (4826, 9, 25),
       (4827, 10, 14),
       (4828, 11, 35),
       (4829, 12, 33),
       (4830, 13, 34),
       (4831, 14, 39),
       (4832, 15, 21),
       (4833, 16, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4834, 17, 26),
       (4835, 18, 16),
       (4836, 19, 19),
       (4837, 20, 15),
       (4838, 21, 11),
       (4839, 22, 17),
       (4840, 23, 21),
       (4841, 24, 17),
       (4842, 25, 17),
       (4843, 26, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4844, 27, 17),
       (4845, 28, 17),
       (4846, 29, 21),
       (4847, 1, 17),
       (4848, 2, 36),
       (4849, 3, 27),
       (4850, 4, 29),
       (4851, 5, 55),
       (4852, 6, 39),
       (4853, 7, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5308, 17, 10),
       (4854, 8, 49),
       (4855, 9, 7),
       (4856, 10, 22),
       (4857, 11, 25),
       (4858, 12, 26),
       (4859, 13, 16),
       (4860, 14, 26),
       (4861, 15, 34),
       (4862, 16, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4863, 17, 32),
       (4864, 18, 34),
       (4865, 19, 22),
       (4866, 20, 19),
       (4867, 21, 41),
       (4868, 22, 18),
       (4869, 23, 32),
       (4870, 24, 18),
       (4871, 25, 51),
       (4872, 26, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4873, 27, 31),
       (4874, 28, 36),
       (4875, 29, 20),
       (4876, 30, 27),
       (4877, 31, 26),
       (4878, 32, 33),
       (4879, 33, 42),
       (4880, 34, 30),
       (4881, 1, 53),
       (4882, 2, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4883, 3, 59),
       (4884, 4, 44),
       (4885, 5, 24),
       (4886, 6, 38),
       (4887, 7, 33),
       (4888, 8, 44),
       (4889, 9, 28),
       (4890, 10, 12),
       (5309, 18, 16),
       (4891, 11, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4892, 12, 29),
       (4893, 13, 28),
       (4894, 1, 34),
       (4895, 2, 17),
       (4896, 3, 41),
       (4897, 4, 27),
       (4898, 5, 16),
       (4899, 6, 18),
       (4900, 7, 59),
       (4901, 8, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4902, 9, 19),
       (4903, 10, 20),
       (4904, 11, 25),
       (4905, 12, 15),
       (4906, 13, 21),
       (4907, 14, 19),
       (4908, 15, 40),
       (4909, 16, 32),
       (4910, 17, 52),
       (4911, 18, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4912, 19, 40),
       (4913, 20, 23),
       (4914, 21, 31),
       (4915, 22, 49),
       (4916, 23, 19),
       (4917, 24, 22),
       (4918, 25, 38),
       (4919, 26, 16),
       (4920, 27, 36),
       (4921, 28, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4922, 29, 13),
       (4923, 30, 26),
       (4924, 31, 36),
       (4925, 32, 12),
       (4926, 33, 38),
       (4927, 34, 15),
       (4928, 35, 25),
       (4929, 36, 34),
       (4930, 37, 18),
       (5833, 22, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4931, 38, 26),
       (4932, 39, 42),
       (4933, 40, 21),
       (4934, 41, 48),
       (4935, 42, 27),
       (4936, 43, 28),
       (4937, 44, 29),
       (4938, 45, 20),
       (4939, 46, 16),
       (4940, 1, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4941, 2, 7),
       (4942, 3, 11),
       (4943, 4, 39),
       (4944, 5, 39),
       (4945, 6, 27),
       (4946, 7, 38),
       (4947, 8, 41),
       (4948, 9, 40),
       (4949, 10, 17),
       (4950, 11, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4951, 12, 41),
       (4952, 13, 18),
       (4953, 14, 46),
       (4954, 15, 22),
       (4955, 16, 20),
       (4956, 17, 7),
       (4957, 18, 13),
       (4994, 18, 37),
       (4958, 19, 49),
       (4959, 20, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4960, 21, 26),
       (4961, 22, 34),
       (4962, 23, 27),
       (4963, 24, 41),
       (4964, 25, 43),
       (4965, 26, 21),
       (4966, 27, 26),
       (4967, 28, 30),
       (4968, 29, 36),
       (4969, 30, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5310, 19, 15),
       (4970, 31, 28),
       (4971, 32, 16),
       (4972, 33, 21),
       (4973, 34, 27),
       (4974, 35, 21),
       (4975, 36, 43),
       (4976, 37, 35),
       (4977, 1, 30),
       (4978, 2, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4979, 3, 30),
       (4980, 4, 34),
       (4981, 5, 19),
       (4982, 6, 26),
       (4983, 7, 18),
       (4984, 8, 34),
       (4985, 9, 14),
       (4986, 10, 25),
       (4987, 11, 52),
       (4988, 12, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (4989, 13, 37),
       (4990, 14, 35),
       (4991, 15, 7),
       (4992, 16, 43),
       (4993, 17, 29),
       (4995, 19, 28),
       (4996, 20, 40),
       (4997, 21, 36),
       (4998, 22, 17),
       (4999, 23, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5000, 24, 40),
       (5001, 25, 23),
       (5002, 26, 32),
       (5003, 27, 34),
       (5004, 28, 31),
       (5005, 29, 11),
       (5006, 1, 40),
       (5007, 2, 32),
       (5311, 20, 8),
       (5008, 3, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5009, 4, 18),
       (5010, 5, 34),
       (5011, 6, 38),
       (5012, 7, 25),
       (5013, 8, 25),
       (5014, 9, 45),
       (5015, 10, 52),
       (5016, 11, 27),
       (5017, 12, 29),
       (5018, 13, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5019, 14, 29),
       (5020, 15, 32),
       (5021, 16, 23),
       (5022, 17, 22),
       (5023, 18, 23),
       (5024, 19, 52),
       (5025, 20, 30),
       (5026, 21, 40),
       (5027, 22, 25),
       (5028, 23, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5029, 24, 12),
       (5030, 25, 52),
       (12641, 16, 7),
       (5031, 26, 44),
       (5032, 27, 26),
       (5033, 28, 25),
       (5034, 29, 29),
       (5035, 30, 30),
       (5036, 31, 29),
       (5037, 32, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5038, 33, 24),
       (5039, 34, 57),
       (5040, 35, 21),
       (5041, 36, 39),
       (5042, 37, 28),
       (5043, 38, 29),
       (5044, 39, 28),
       (5045, 40, 47),
       (5046, 41, 13),
       (5047, 42, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5048, 43, 28),
       (5049, 44, 14),
       (5050, 45, 26),
       (5051, 46, 39),
       (5052, 47, 30),
       (5053, 48, 22),
       (5054, 49, 21),
       (5055, 1, 37),
       (5056, 2, 11),
       (5057, 3, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5058, 4, 18),
       (5059, 5, 34),
       (5060, 6, 21),
       (5061, 7, 9),
       (5062, 8, 36),
       (5063, 9, 44),
       (5064, 10, 15),
       (5065, 11, 26),
       (5066, 12, 15),
       (5067, 13, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5068, 14, 68),
       (12642, 17, 9),
       (5069, 15, 43),
       (5070, 16, 36),
       (5071, 17, 5),
       (5072, 18, 6),
       (5073, 19, 5),
       (5074, 20, 10),
       (5075, 21, 39),
       (5076, 22, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5077, 23, 41),
       (5078, 24, 43),
       (5079, 25, 29),
       (5080, 26, 30),
       (5081, 27, 35),
       (5082, 28, 45),
       (5083, 29, 34),
       (5084, 30, 10),
       (5085, 31, 45),
       (5086, 32, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5087, 33, 41),
       (5088, 1, 34),
       (5089, 2, 42),
       (5090, 3, 42),
       (5091, 4, 10),
       (5092, 5, 22),
       (5093, 6, 15),
       (5094, 7, 38),
       (5095, 8, 21),
       (5096, 9, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5097, 10, 39),
       (5098, 11, 35),
       (5099, 12, 23),
       (5100, 13, 18),
       (5101, 14, 19),
       (5102, 15, 36),
       (5103, 16, 14),
       (5104, 17, 22),
       (5105, 18, 40),
       (5106, 19, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5107, 20, 28),
       (5108, 21, 26),
       (5109, 22, 22),
       (5110, 23, 25),
       (5111, 24, 29),
       (5112, 25, 25),
       (5113, 1, 52),
       (5114, 2, 35),
       (5115, 3, 26),
       (5116, 4, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5117, 5, 32),
       (5118, 6, 36),
       (5119, 7, 29),
       (5120, 8, 45),
       (5121, 9, 31),
       (5122, 10, 30),
       (5123, 11, 22),
       (5124, 12, 37),
       (5125, 13, 59),
       (5126, 14, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5127, 15, 36),
       (5128, 16, 36),
       (5129, 17, 19),
       (5130, 18, 23),
       (5131, 19, 44),
       (5132, 20, 23),
       (5133, 21, 24),
       (5134, 22, 32),
       (5135, 23, 23),
       (5136, 24, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5137, 25, 44),
       (5138, 26, 36),
       (5139, 1, 34),
       (5140, 2, 44),
       (5141, 3, 52),
       (5142, 4, 16),
       (5143, 5, 21),
       (5144, 6, 20),
       (5145, 7, 27),
       (5146, 8, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5147, 9, 32),
       (5148, 10, 24),
       (5149, 11, 25),
       (5150, 12, 17),
       (5151, 13, 24),
       (5152, 14, 29),
       (5153, 15, 34),
       (5154, 16, 33),
       (5155, 17, 21),
       (5156, 18, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5157, 19, 34),
       (5158, 20, 27),
       (5159, 1, 31),
       (5160, 2, 29),
       (5161, 3, 50),
       (5162, 4, 47),
       (5163, 5, 57),
       (5164, 6, 25),
       (5165, 7, 41),
       (5166, 8, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5167, 9, 45),
       (5168, 10, 48),
       (5169, 11, 30),
       (5170, 12, 47),
       (5171, 13, 19),
       (5172, 14, 30),
       (5173, 15, 29),
       (5174, 16, 34),
       (5175, 17, 23),
       (5176, 18, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5177, 19, 28),
       (5178, 20, 21),
       (5179, 21, 46),
       (5180, 22, 16),
       (5181, 23, 41),
       (5182, 24, 14),
       (5183, 25, 25),
       (5184, 26, 37),
       (5185, 27, 24),
       (5186, 28, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5187, 29, 22),
       (5188, 1, 33),
       (5189, 2, 27),
       (5190, 3, 32),
       (5191, 4, 42),
       (5192, 5, 29),
       (5193, 6, 35),
       (5194, 7, 18),
       (5195, 8, 37),
       (5196, 9, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5197, 10, 30),
       (5198, 11, 32),
       (5199, 12, 43),
       (5200, 13, 19),
       (5201, 14, 20),
       (5202, 15, 28),
       (5203, 16, 13),
       (5204, 17, 29),
       (5205, 18, 20),
       (5206, 19, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5207, 20, 24),
       (5208, 21, 25),
       (5209, 22, 27),
       (5210, 1, 22),
       (5211, 2, 37),
       (5212, 3, 26),
       (5213, 4, 43),
       (5214, 5, 16),
       (5215, 6, 46),
       (5216, 7, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5217, 8, 33),
       (5218, 9, 32),
       (5219, 10, 39),
       (5220, 11, 26),
       (5221, 12, 32),
       (5222, 13, 39),
       (5223, 14, 34),
       (5224, 15, 19),
       (5225, 16, 21),
       (5226, 17, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5227, 18, 36),
       (5228, 19, 34),
       (5229, 20, 17),
       (5230, 21, 34),
       (5231, 22, 33),
       (5232, 23, 22),
       (5233, 24, 34),
       (5234, 25, 40),
       (5235, 26, 13),
       (5236, 27, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5237, 28, 39),
       (5238, 29, 38),
       (5239, 30, 36),
       (5240, 31, 30),
       (5241, 32, 20),
       (5242, 1, 39),
       (5243, 2, 31),
       (5244, 3, 41),
       (5245, 4, 10),
       (5246, 5, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5247, 6, 39),
       (5248, 7, 33),
       (5249, 8, 24),
       (5250, 9, 21),
       (5251, 10, 38),
       (5252, 11, 58),
       (12643, 18, 7),
       (5253, 12, 42),
       (5254, 13, 18),
       (5255, 14, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5256, 15, 49),
       (5257, 16, 18),
       (5258, 17, 51),
       (5259, 18, 58),
       (5260, 19, 19),
       (5261, 20, 40),
       (5262, 21, 55),
       (5263, 22, 25),
       (5264, 23, 26),
       (5265, 24, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5266, 25, 32),
       (5267, 26, 23),
       (5268, 27, 43),
       (5418, 11, 35),
       (5269, 28, 42),
       (5270, 29, 29),
       (5271, 30, 43),
       (5272, 31, 40),
       (5273, 32, 22),
       (5274, 1, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5275, 2, 32),
       (5276, 3, 40),
       (5277, 4, 28),
       (5278, 5, 70),
       (5279, 6, 50),
       (5280, 7, 35),
       (5281, 8, 26),
       (5282, 9, 27),
       (5283, 10, 37),
       (5284, 11, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5285, 12, 21),
       (5286, 13, 34),
       (5287, 14, 31),
       (5288, 15, 34),
       (5289, 16, 49),
       (5290, 17, 42),
       (5291, 18, 36),
       (5292, 1, 24),
       (5293, 2, 35),
       (5294, 3, 8)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5295, 4, 16),
       (5296, 5, 22),
       (5297, 6, 26),
       (5298, 7, 44),
       (5299, 8, 33),
       (5300, 9, 20),
       (5301, 10, 17),
       (5303, 12, 20),
       (5304, 13, 13),
       (5305, 14, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5306, 15, 18),
       (5307, 16, 12),
       (5312, 21, 57),
       (5313, 22, 21),
       (5314, 23, 56),
       (5315, 24, 45),
       (5316, 25, 28),
       (5317, 26, 49),
       (5318, 27, 23),
       (5319, 28, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5320, 29, 52),
       (5321, 1, 13),
       (5322, 2, 39),
       (5323, 3, 20),
       (5324, 4, 30),
       (5325, 5, 26),
       (5326, 6, 38),
       (5327, 7, 41),
       (12644, 19, 8),
       (5328, 8, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5329, 9, 50),
       (5330, 10, 42),
       (5331, 11, 35),
       (5332, 12, 33),
       (5333, 13, 17),
       (5334, 14, 33),
       (5335, 15, 29),
       (5336, 16, 30),
       (5337, 17, 34),
       (5338, 18, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5339, 19, 40),
       (5340, 20, 23),
       (5341, 21, 27),
       (5342, 22, 24),
       (5343, 23, 19),
       (5344, 1, 31),
       (5345, 2, 31),
       (5346, 3, 56),
       (5347, 4, 36),
       (5348, 5, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5349, 6, 43),
       (5350, 7, 29),
       (5351, 8, 28),
       (5352, 9, 28),
       (5353, 10, 34),
       (5354, 11, 64),
       (5355, 12, 20),
       (5356, 13, 24),
       (5357, 14, 40),
       (5358, 15, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5359, 16, 48),
       (5360, 17, 22),
       (5361, 18, 31),
       (12645, 20, 7),
       (5362, 19, 34),
       (5363, 20, 23),
       (5364, 21, 25),
       (5365, 22, 14),
       (5366, 1, 30),
       (5367, 2, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5368, 3, 29),
       (5369, 4, 34),
       (5370, 5, 35),
       (5371, 6, 33),
       (5372, 7, 36),
       (5373, 8, 49),
       (5374, 9, 33),
       (5375, 10, 38),
       (5376, 11, 47),
       (5377, 12, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5378, 13, 14),
       (5379, 14, 41),
       (5380, 15, 39),
       (5381, 16, 40),
       (5382, 17, 24),
       (5383, 18, 37),
       (5384, 19, 41),
       (5385, 20, 49),
       (5386, 1, 32),
       (5387, 2, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5388, 3, 39),
       (5389, 4, 28),
       (5390, 5, 28),
       (5391, 6, 34),
       (5392, 7, 24),
       (5393, 8, 18),
       (5394, 9, 26),
       (5395, 10, 36),
       (5396, 11, 17),
       (5397, 12, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5398, 13, 9),
       (5399, 14, 31),
       (5400, 15, 27),
       (5401, 16, 44),
       (5402, 17, 15),
       (5403, 18, 36),
       (5404, 19, 28),
       (5405, 20, 36),
       (5406, 21, 19),
       (5407, 22, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5408, 1, 30),
       (5409, 2, 24),
       (5410, 3, 31),
       (5411, 4, 27),
       (5412, 5, 55),
       (5413, 6, 42),
       (5414, 7, 14),
       (5415, 8, 30),
       (5416, 9, 41),
       (5417, 10, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9212, 27, 16),
       (5419, 12, 28),
       (5420, 13, 24),
       (5421, 14, 35),
       (5422, 15, 41),
       (5423, 16, 17),
       (5424, 17, 26),
       (5425, 18, 24),
       (5426, 19, 28),
       (5427, 20, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5428, 21, 24),
       (5429, 1, 45),
       (5430, 2, 22),
       (5431, 3, 34),
       (5432, 4, 21),
       (5433, 5, 44),
       (5469, 21, 34),
       (5434, 6, 39),
       (5435, 7, 35),
       (5436, 8, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5437, 9, 30),
       (5438, 10, 17),
       (5439, 11, 37),
       (5440, 12, 21),
       (5441, 13, 23),
       (5442, 14, 47),
       (5443, 15, 25),
       (5444, 16, 24),
       (5445, 17, 29),
       (5446, 18, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5447, 19, 59),
       (5448, 20, 38),
       (5449, 1, 31),
       (5450, 2, 25),
       (5451, 3, 42),
       (5452, 4, 35),
       (5453, 5, 42),
       (5454, 6, 29),
       (5455, 7, 20),
       (5456, 8, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5457, 9, 27),
       (5458, 10, 25),
       (5459, 11, 24),
       (5460, 12, 20),
       (5461, 13, 48),
       (5462, 14, 45),
       (5463, 15, 37),
       (5464, 16, 43),
       (5465, 17, 40),
       (5466, 18, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5467, 19, 29),
       (5468, 20, 31),
       (5470, 22, 25),
       (5471, 23, 44),
       (5472, 1, 28),
       (5473, 2, 44),
       (5474, 3, 43),
       (5475, 4, 32),
       (5476, 5, 34),
       (5477, 6, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5478, 7, 30),
       (5479, 8, 30),
       (5480, 9, 30),
       (5481, 10, 12),
       (5482, 11, 12),
       (5483, 12, 17),
       (5484, 13, 15),
       (5485, 14, 38),
       (5486, 15, 31),
       (5487, 16, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5488, 17, 45),
       (5489, 18, 14),
       (5490, 19, 48),
       (5491, 20, 18),
       (5492, 21, 57),
       (10276, 23, 14),
       (5493, 22, 40),
       (5494, 23, 26),
       (5495, 24, 56),
       (5496, 25, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5497, 26, 36),
       (5498, 27, 19),
       (5499, 28, 28),
       (5500, 29, 39),
       (5501, 30, 18),
       (5502, 1, 23),
       (5503, 2, 26),
       (5504, 3, 32),
       (5505, 4, 39),
       (5618, 6, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5506, 5, 28),
       (5507, 6, 15),
       (5508, 7, 26),
       (5509, 8, 19),
       (5510, 9, 19),
       (5511, 10, 37),
       (5512, 11, 27),
       (5513, 12, 16),
       (5514, 13, 34),
       (5515, 14, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5516, 15, 18),
       (5517, 16, 33),
       (5518, 17, 22),
       (5519, 18, 37),
       (5520, 19, 24),
       (5521, 20, 44),
       (5522, 21, 36),
       (5523, 22, 15),
       (5524, 23, 33),
       (5525, 24, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5526, 25, 32),
       (5527, 1, 53),
       (5528, 2, 19),
       (5529, 3, 41),
       (5530, 4, 46),
       (5531, 5, 41),
       (5532, 6, 22),
       (5533, 7, 44),
       (5534, 8, 35),
       (5535, 9, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5536, 10, 22),
       (5537, 11, 21),
       (5538, 12, 15),
       (5539, 13, 35),
       (5540, 14, 31),
       (5541, 15, 41),
       (5542, 16, 34),
       (5543, 17, 23),
       (5544, 18, 27),
       (5545, 19, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5546, 20, 28),
       (5547, 21, 29),
       (5548, 22, 23),
       (5549, 1, 28),
       (5550, 2, 36),
       (5551, 3, 32),
       (5552, 4, 13),
       (5553, 5, 54),
       (5554, 6, 32),
       (5555, 7, 57)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5556, 8, 26),
       (5557, 9, 52),
       (5558, 10, 18),
       (5559, 11, 40),
       (5560, 12, 14),
       (5561, 13, 15),
       (5562, 14, 15),
       (5563, 15, 32),
       (5564, 16, 19),
       (5565, 17, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5566, 18, 31),
       (5567, 19, 50),
       (5568, 1, 28),
       (10277, 24, 4),
       (5569, 2, 56),
       (5570, 3, 42),
       (5571, 4, 23),
       (5572, 5, 41),
       (5573, 6, 17),
       (5574, 7, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5575, 8, 28),
       (5576, 9, 22),
       (5577, 10, 38),
       (5578, 11, 35),
       (5619, 7, 31),
       (5579, 12, 53),
       (5580, 13, 62),
       (5581, 14, 44),
       (5582, 15, 35),
       (5583, 16, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5584, 17, 34),
       (5585, 18, 29),
       (5586, 19, 37),
       (5587, 1, 22),
       (5588, 2, 37),
       (5589, 3, 49),
       (5590, 4, 35),
       (5591, 5, 25),
       (5592, 6, 24),
       (5593, 7, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5594, 8, 16),
       (5595, 9, 30),
       (5596, 10, 24),
       (5597, 11, 10),
       (5598, 12, 29),
       (5599, 13, 20),
       (5600, 14, 18),
       (5601, 15, 39),
       (5602, 16, 20),
       (5603, 17, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5604, 18, 21),
       (5605, 19, 22),
       (5606, 20, 26),
       (5607, 21, 18),
       (5608, 22, 27),
       (5609, 23, 18),
       (5610, 24, 17),
       (5611, 25, 20),
       (5612, 26, 22),
       (5613, 1, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5614, 2, 23),
       (5615, 3, 16),
       (5616, 4, 32),
       (5617, 5, 10),
       (5620, 8, 34),
       (5621, 9, 32),
       (5622, 10, 26),
       (5623, 11, 41),
       (5624, 12, 42),
       (5625, 13, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5626, 14, 33),
       (5627, 15, 46),
       (5628, 16, 16),
       (5629, 17, 10),
       (5630, 18, 26),
       (5631, 19, 18),
       (5632, 20, 41),
       (5633, 21, 25),
       (5634, 22, 35),
       (5635, 23, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5636, 24, 24),
       (5637, 25, 41),
       (5638, 26, 30),
       (5639, 27, 28),
       (5640, 28, 15),
       (5641, 29, 38),
       (5642, 30, 36),
       (5643, 31, 49),
       (5644, 32, 37),
       (10278, 25, 4)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5645, 33, 28),
       (5646, 34, 17),
       (5647, 35, 34),
       (5648, 36, 36),
       (5649, 37, 22),
       (5650, 38, 21),
       (5651, 39, 26),
       (5652, 40, 26),
       (5653, 41, 19),
       (5654, 42, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5655, 43, 26),
       (5656, 44, 24),
       (6245, 42, 6),
       (5657, 45, 42),
       (5658, 46, 20),
       (5659, 47, 23),
       (5660, 48, 43),
       (5661, 49, 28),
       (5662, 50, 21),
       (5663, 51, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5664, 52, 45),
       (5665, 53, 40),
       (5666, 54, 37),
       (5667, 55, 44),
       (5668, 56, 45),
       (5669, 57, 48),
       (5670, 58, 32),
       (5671, 59, 28),
       (5672, 60, 24),
       (5673, 61, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5674, 62, 31),
       (5675, 63, 52),
       (5676, 64, 44),
       (5677, 65, 39),
       (5678, 66, 25),
       (5679, 67, 42),
       (5717, 8, 22),
       (5680, 68, 46),
       (5681, 1, 34),
       (5682, 2, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5683, 3, 14),
       (5684, 4, 22),
       (5685, 5, 29),
       (5686, 6, 24),
       (5687, 7, 29),
       (5688, 8, 27),
       (5689, 9, 20),
       (6246, 43, 7),
       (5690, 10, 27),
       (5691, 11, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5692, 12, 25),
       (5693, 13, 41),
       (5694, 14, 13),
       (5695, 15, 26),
       (5696, 16, 27),
       (5697, 17, 20),
       (5698, 18, 46),
       (5699, 19, 42),
       (5700, 20, 44),
       (5701, 21, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5702, 22, 43),
       (5703, 23, 47),
       (5704, 24, 23),
       (5705, 25, 33),
       (5706, 26, 23),
       (5707, 27, 24),
       (5708, 28, 28),
       (5709, 29, 34),
       (5710, 1, 44),
       (5711, 2, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5712, 3, 32),
       (5713, 4, 28),
       (5714, 5, 32),
       (5715, 6, 33),
       (5716, 7, 22),
       (5793, 34, 15),
       (5718, 9, 53),
       (5719, 10, 43),
       (5720, 11, 22),
       (5721, 12, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5722, 13, 35),
       (5723, 14, 21),
       (5724, 15, 16),
       (5725, 16, 53),
       (5726, 17, 24),
       (5727, 18, 33),
       (5728, 19, 37),
       (5729, 20, 49),
       (5730, 1, 11),
       (5731, 2, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5732, 3, 35),
       (5733, 4, 27),
       (5734, 5, 25),
       (5735, 6, 34),
       (5736, 7, 50),
       (5737, 8, 29),
       (5738, 9, 32),
       (5739, 10, 27),
       (5740, 11, 30),
       (5741, 12, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5742, 13, 35),
       (5743, 14, 44),
       (5744, 15, 24),
       (5745, 16, 51),
       (5746, 17, 61),
       (5747, 18, 28),
       (5748, 19, 36),
       (5749, 20, 50),
       (5750, 21, 60),
       (5751, 22, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5752, 23, 41),
       (5753, 24, 26),
       (5754, 25, 16),
       (5755, 26, 33),
       (5756, 27, 33),
       (5757, 28, 31),
       (5758, 29, 57),
       (6247, 44, 12),
       (5759, 30, 22),
       (5760, 1, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5761, 2, 30),
       (5762, 3, 15),
       (5763, 4, 25),
       (5764, 5, 23),
       (5765, 6, 27),
       (5766, 7, 27),
       (5767, 8, 34),
       (5768, 9, 15),
       (5769, 10, 31),
       (5770, 11, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5771, 12, 14),
       (5772, 13, 39),
       (5773, 14, 39),
       (5774, 15, 34),
       (5775, 16, 16),
       (5776, 17, 28),
       (5777, 18, 18),
       (5778, 19, 18),
       (5779, 20, 32),
       (5780, 21, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5781, 22, 31),
       (5782, 23, 14),
       (5783, 24, 35),
       (5784, 25, 27),
       (5785, 26, 20),
       (5786, 27, 33),
       (5787, 28, 16),
       (5788, 29, 17),
       (5789, 30, 26),
       (5790, 31, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5791, 32, 26),
       (5792, 33, 14),
       (10279, 26, 4),
       (5794, 35, 35),
       (5795, 36, 32),
       (5796, 37, 16),
       (5797, 38, 29),
       (5798, 39, 38),
       (5799, 40, 16),
       (5800, 41, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5801, 42, 33),
       (5802, 43, 34),
       (5803, 44, 25),
       (5804, 45, 14),
       (5805, 46, 37),
       (5806, 47, 35),
       (5807, 48, 10),
       (5808, 49, 41),
       (5809, 50, 30),
       (5810, 51, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5811, 52, 25),
       (5812, 1, 20),
       (5813, 2, 40),
       (5814, 3, 27),
       (5815, 4, 13),
       (5816, 5, 21),
       (5817, 6, 13),
       (5818, 7, 40),
       (5819, 8, 32),
       (5820, 9, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5821, 10, 24),
       (5822, 11, 34),
       (5823, 12, 28),
       (5824, 13, 28),
       (5825, 14, 23),
       (5826, 15, 19),
       (5827, 16, 48),
       (5828, 17, 50),
       (5829, 18, 17),
       (5830, 19, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5831, 20, 27),
       (5832, 21, 37),
       (5834, 23, 25),
       (5835, 24, 26),
       (5836, 25, 17),
       (5837, 26, 24),
       (5838, 27, 26),
       (5839, 28, 25),
       (6248, 45, 8),
       (5840, 29, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5841, 1, 34),
       (5842, 2, 21),
       (5843, 3, 19),
       (5844, 4, 45),
       (5845, 5, 20),
       (5846, 6, 27),
       (5847, 7, 23),
       (5848, 8, 28),
       (5849, 9, 36),
       (5850, 10, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5851, 11, 31),
       (5852, 12, 22),
       (5853, 1, 27),
       (5854, 2, 33),
       (5855, 3, 23),
       (5856, 4, 37),
       (5857, 5, 37),
       (5858, 6, 26),
       (5859, 7, 43),
       (5860, 8, 49)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5861, 9, 29),
       (5862, 10, 10),
       (5863, 11, 43),
       (5864, 12, 19),
       (5865, 13, 25),
       (5866, 14, 40),
       (5867, 15, 53),
       (5868, 16, 23),
       (5869, 17, 28),
       (5870, 18, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5871, 1, 41),
       (10280, 27, 6),
       (5872, 2, 28),
       (5873, 3, 35),
       (5874, 4, 27),
       (5875, 5, 40),
       (5876, 6, 27),
       (5877, 7, 31),
       (5878, 8, 15),
       (5879, 9, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5880, 10, 48),
       (5881, 11, 40),
       (5882, 12, 35),
       (5883, 13, 30),
       (5884, 14, 37),
       (5885, 15, 28),
       (5886, 16, 35),
       (5887, 17, 22),
       (5888, 18, 49),
       (5889, 19, 53)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5890, 20, 23),
       (5891, 21, 28),
       (5892, 22, 32),
       (5893, 23, 31),
       (5894, 24, 29),
       (5895, 1, 34),
       (5896, 2, 19),
       (5897, 3, 37),
       (5898, 4, 41),
       (5899, 5, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5900, 6, 35),
       (5901, 7, 36),
       (5902, 8, 35),
       (5903, 9, 19),
       (5904, 10, 46),
       (5905, 11, 21),
       (5906, 12, 18),
       (5907, 13, 61),
       (5908, 14, 31),
       (5909, 15, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5910, 16, 55),
       (5911, 17, 42),
       (5912, 1, 22),
       (5913, 2, 15),
       (5914, 3, 48),
       (5915, 4, 22),
       (5916, 5, 46),
       (5917, 6, 25),
       (5918, 7, 53),
       (5919, 8, 58)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5920, 9, 37),
       (5921, 10, 42),
       (5922, 11, 30),
       (5923, 12, 30),
       (5924, 13, 19),
       (5925, 14, 27),
       (5926, 15, 7),
       (5927, 16, 19),
       (5928, 17, 14),
       (5929, 18, 60)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5930, 19, 28),
       (5931, 20, 18),
       (5932, 21, 26),
       (5933, 22, 17),
       (5934, 23, 41),
       (5935, 24, 27),
       (5936, 1, 72),
       (5937, 2, 23),
       (5938, 3, 20),
       (5939, 4, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5940, 5, 34),
       (5941, 6, 69),
       (5942, 7, 28),
       (5943, 8, 27),
       (5944, 9, 31),
       (5945, 10, 28),
       (6417, 35, 11),
       (5946, 11, 26),
       (5947, 12, 41),
       (5948, 13, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5949, 14, 40),
       (5950, 15, 31),
       (5951, 1, 20),
       (5952, 2, 24),
       (5953, 3, 23),
       (5954, 4, 32),
       (5955, 5, 56),
       (5956, 6, 36),
       (5957, 7, 25),
       (5958, 8, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5959, 9, 28),
       (5960, 10, 37),
       (5961, 11, 27),
       (5962, 12, 17),
       (5963, 13, 48),
       (5964, 14, 20),
       (5965, 15, 40),
       (5966, 16, 29),
       (5967, 17, 40),
       (5968, 18, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5969, 19, 25),
       (5970, 20, 58),
       (5971, 21, 31),
       (5972, 22, 36),
       (5973, 23, 43),
       (5974, 24, 37),
       (5975, 25, 42),
       (5976, 26, 55),
       (5977, 27, 14),
       (6011, 8, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5978, 1, 49),
       (5979, 2, 42),
       (5980, 3, 43),
       (5981, 4, 21),
       (5982, 5, 42),
       (5983, 6, 35),
       (5984, 7, 44),
       (5985, 8, 17),
       (5986, 9, 37),
       (5987, 10, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5988, 11, 41),
       (5989, 12, 40),
       (5990, 13, 49),
       (5991, 14, 53),
       (5992, 15, 41),
       (5993, 16, 23),
       (5994, 17, 33),
       (5995, 18, 31),
       (5996, 19, 37),
       (5997, 20, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (5998, 21, 52),
       (5999, 22, 24),
       (6000, 23, 30),
       (6001, 24, 58),
       (6002, 25, 33),
       (6003, 26, 38),
       (6004, 1, 46),
       (6005, 2, 43),
       (6006, 3, 33),
       (6007, 4, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6008, 5, 38),
       (6009, 6, 35),
       (6010, 7, 25),
       (6012, 9, 33),
       (6013, 10, 27),
       (6014, 11, 41),
       (6015, 12, 25),
       (6016, 13, 42),
       (6017, 14, 58),
       (6018, 15, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6019, 16, 29),
       (6020, 17, 29),
       (6021, 18, 39),
       (6022, 19, 39),
       (6023, 20, 48),
       (6024, 21, 33),
       (6025, 22, 43),
       (6026, 23, 14),
       (6027, 24, 59),
       (6028, 25, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6029, 26, 24),
       (6030, 27, 26),
       (6031, 28, 18),
       (6032, 29, 56),
       (6033, 30, 15),
       (6034, 31, 50),
       (6035, 32, 26),
       (6036, 33, 80),
       (6037, 34, 28),
       (6038, 35, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6039, 1, 52),
       (6040, 2, 16),
       (6041, 3, 17),
       (6042, 4, 32),
       (6043, 5, 27),
       (6044, 6, 36),
       (6045, 7, 24),
       (6046, 8, 23),
       (6047, 9, 38),
       (12646, 21, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6048, 10, 33),
       (6049, 11, 44),
       (6050, 12, 34),
       (6051, 13, 32),
       (6052, 14, 17),
       (6053, 15, 26),
       (6054, 16, 34),
       (6055, 17, 28),
       (6056, 18, 33),
       (6057, 19, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6058, 20, 25),
       (6059, 21, 31),
       (6060, 22, 29),
       (6061, 23, 30),
       (6062, 24, 57),
       (6063, 25, 22),
       (6064, 26, 24),
       (6065, 27, 33),
       (6066, 1, 56),
       (6067, 2, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6068, 3, 32),
       (6069, 4, 26),
       (6070, 5, 48),
       (6071, 6, 51),
       (6072, 7, 23),
       (6073, 8, 27),
       (6074, 9, 16),
       (6075, 10, 37),
       (6076, 11, 55),
       (6077, 12, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6078, 13, 47),
       (6079, 14, 27),
       (6080, 15, 14),
       (6081, 16, 14),
       (6082, 17, 18),
       (6083, 18, 21),
       (12991, 12, 14),
       (6084, 19, 33),
       (6085, 20, 42),
       (6086, 21, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6087, 22, 22),
       (6088, 23, 37),
       (6089, 24, 61),
       (6090, 25, 30),
       (6091, 26, 27),
       (6092, 27, 52),
       (6093, 28, 53),
       (6094, 29, 17),
       (6095, 30, 54),
       (6096, 31, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6097, 32, 43),
       (6098, 33, 25),
       (6099, 34, 22),
       (6100, 35, 38),
       (6101, 36, 19),
       (6102, 37, 55),
       (6103, 38, 15),
       (6104, 39, 65),
       (6105, 40, 41),
       (6106, 41, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6107, 42, 23),
       (6108, 43, 14),
       (6109, 1, 33),
       (6110, 2, 34),
       (6111, 3, 37),
       (6112, 4, 32),
       (6113, 5, 22),
       (6114, 6, 38),
       (6115, 7, 24),
       (6116, 8, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6117, 9, 20),
       (6118, 10, 29),
       (6119, 11, 31),
       (6254, 51, 12),
       (6255, 52, 6),
       (6120, 12, 38),
       (6121, 13, 23),
       (6122, 14, 43),
       (6123, 15, 26),
       (6124, 16, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6125, 17, 35),
       (6126, 18, 11),
       (6127, 19, 26),
       (6128, 20, 38),
       (6129, 21, 45),
       (6130, 22, 27),
       (6131, 23, 38),
       (6132, 1, 39),
       (6133, 2, 51),
       (6134, 3, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6135, 4, 22),
       (6136, 5, 32),
       (6137, 6, 36),
       (6138, 7, 54),
       (6139, 8, 39),
       (6140, 9, 16),
       (6141, 10, 11),
       (6142, 11, 11),
       (6143, 12, 11),
       (6144, 13, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6145, 14, 11),
       (6146, 15, 11),
       (6147, 16, 12),
       (6148, 17, 11),
       (6149, 18, 11),
       (6150, 19, 11),
       (6151, 20, 12),
       (6152, 21, 11),
       (6153, 22, 13),
       (6154, 23, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6155, 24, 12),
       (6156, 1, 33),
       (6157, 2, 18),
       (6158, 3, 42),
       (6159, 4, 25),
       (6160, 5, 24),
       (6161, 6, 42),
       (6162, 7, 19),
       (6163, 8, 28),
       (6164, 9, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6165, 10, 23),
       (6166, 11, 20),
       (6167, 12, 34),
       (6168, 13, 27),
       (6169, 14, 30),
       (6170, 15, 16),
       (6171, 16, 35),
       (6172, 17, 19),
       (6173, 18, 7),
       (6174, 19, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6175, 20, 12),
       (6176, 21, 48),
       (6177, 22, 24),
       (6178, 23, 35),
       (6179, 24, 18),
       (6180, 25, 27),
       (6181, 26, 17),
       (6182, 27, 43),
       (6183, 28, 20),
       (6184, 29, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6185, 30, 29),
       (6186, 31, 40),
       (6187, 32, 19),
       (6188, 33, 24),
       (6189, 1, 45),
       (6190, 2, 21),
       (6191, 3, 28),
       (6192, 4, 39),
       (6193, 5, 16),
       (6194, 6, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6195, 7, 34),
       (6196, 8, 23),
       (6197, 9, 36),
       (6198, 10, 45),
       (6199, 11, 40),
       (6200, 12, 48),
       (6201, 13, 18),
       (6256, 53, 8),
       (6202, 14, 27),
       (6203, 15, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6204, 1, 36),
       (6205, 2, 20),
       (6206, 3, 40),
       (6207, 4, 32),
       (6208, 5, 36),
       (6209, 6, 32),
       (6210, 7, 56),
       (6211, 8, 56),
       (6212, 9, 39),
       (6213, 10, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6214, 11, 40),
       (6215, 12, 29),
       (6216, 13, 39),
       (6217, 14, 20),
       (6218, 15, 20),
       (6219, 16, 22),
       (6220, 17, 22),
       (6221, 18, 35),
       (6222, 19, 37),
       (6223, 20, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6224, 21, 27),
       (6225, 22, 7),
       (6226, 23, 7),
       (6227, 24, 6),
       (6228, 25, 11),
       (6229, 26, 6),
       (6230, 27, 9),
       (6231, 28, 9),
       (6232, 29, 6),
       (6233, 30, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6234, 31, 7),
       (6235, 32, 19),
       (6236, 33, 9),
       (6237, 34, 9),
       (6238, 35, 7),
       (6239, 36, 14),
       (6240, 37, 7),
       (6241, 38, 7),
       (6242, 39, 6),
       (6243, 40, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6244, 41, 14),
       (6249, 46, 18),
       (6250, 47, 26),
       (6251, 48, 11),
       (6252, 49, 10),
       (6257, 54, 17),
       (6259, 56, 7),
       (6260, 57, 10),
       (6261, 58, 6),
       (6262, 59, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6263, 60, 15),
       (6264, 61, 9),
       (6265, 62, 16),
       (6266, 63, 33),
       (6267, 1, 38),
       (6268, 2, 21),
       (6269, 3, 32),
       (6270, 4, 12),
       (6271, 5, 29),
       (6272, 6, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6273, 7, 22),
       (6274, 8, 38),
       (6275, 9, 31),
       (6276, 10, 31),
       (6277, 1, 44),
       (6278, 2, 67),
       (6279, 3, 39),
       (6280, 4, 50),
       (6281, 5, 20),
       (6282, 6, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6283, 7, 30),
       (6284, 8, 21),
       (6285, 9, 47),
       (6286, 10, 32),
       (6287, 11, 56),
       (6288, 12, 23),
       (6289, 13, 28),
       (6290, 14, 37),
       (6291, 15, 45),
       (6418, 36, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6292, 16, 50),
       (6293, 17, 32),
       (6294, 18, 45),
       (6295, 1, 30),
       (6296, 2, 18),
       (6297, 3, 31),
       (6298, 4, 36),
       (6299, 5, 31),
       (6300, 6, 29),
       (6301, 7, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6302, 8, 44),
       (6303, 9, 31),
       (6304, 10, 26),
       (6305, 11, 36),
       (6306, 12, 45),
       (6307, 13, 42),
       (6308, 14, 49),
       (6309, 15, 30),
       (6310, 16, 53),
       (6311, 17, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6312, 18, 19),
       (6313, 19, 41),
       (6314, 20, 32),
       (6315, 21, 24),
       (6316, 22, 9),
       (6317, 23, 7),
       (6318, 24, 13),
       (6319, 25, 6),
       (6320, 26, 7),
       (6321, 27, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6322, 28, 32),
       (6323, 1, 37),
       (6324, 2, 13),
       (6325, 3, 8),
       (6326, 4, 7),
       (6327, 5, 9),
       (6328, 6, 11),
       (6329, 7, 12),
       (6330, 8, 34),
       (6419, 37, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6331, 9, 44),
       (6332, 10, 25),
       (6333, 11, 24),
       (6334, 12, 27),
       (6335, 13, 24),
       (6336, 14, 24),
       (6337, 15, 16),
       (6338, 16, 19),
       (6339, 17, 18),
       (6340, 18, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6341, 19, 7),
       (6342, 20, 7),
       (6343, 21, 11),
       (6344, 22, 28),
       (6345, 23, 22),
       (6346, 24, 19),
       (6347, 25, 12),
       (6348, 26, 17),
       (6349, 27, 37),
       (6350, 28, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6351, 29, 34),
       (6352, 30, 14),
       (6353, 31, 22),
       (6354, 32, 21),
       (6355, 33, 28),
       (6356, 34, 40),
       (6357, 35, 13),
       (6358, 36, 7),
       (6359, 37, 8),
       (6360, 38, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6361, 39, 22),
       (6362, 40, 18),
       (6363, 41, 14),
       (6364, 42, 7),
       (6365, 43, 7),
       (6366, 44, 7),
       (6367, 45, 9),
       (6368, 46, 12),
       (6369, 47, 53),
       (6370, 48, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6371, 49, 35),
       (6372, 50, 32),
       (6373, 51, 56),
       (6374, 1, 7),
       (6375, 2, 21),
       (6376, 3, 28),
       (6420, 38, 26),
       (6377, 4, 56),
       (6378, 5, 32),
       (6379, 6, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6380, 7, 35),
       (6381, 8, 43),
       (6382, 9, 46),
       (6383, 1, 38),
       (6384, 2, 31),
       (6385, 3, 25),
       (6386, 4, 50),
       (6387, 5, 38),
       (6388, 6, 44),
       (6389, 7, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6390, 8, 22),
       (6391, 9, 31),
       (6392, 10, 28),
       (6393, 11, 31),
       (6394, 12, 22),
       (6395, 13, 27),
       (6396, 14, 11),
       (6397, 15, 11),
       (6398, 16, 24),
       (6399, 17, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6400, 18, 12),
       (6401, 19, 17),
       (6402, 20, 32),
       (6403, 21, 27),
       (6404, 22, 14),
       (6405, 23, 16),
       (6406, 24, 12),
       (6407, 25, 21),
       (6408, 26, 20),
       (6409, 27, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6410, 28, 16),
       (6411, 29, 12),
       (6412, 30, 16),
       (6413, 31, 12),
       (6414, 32, 34),
       (6415, 33, 17),
       (6416, 34, 30),
       (6422, 40, 30),
       (6423, 41, 26),
       (6424, 42, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6425, 43, 24),
       (6426, 44, 37),
       (6427, 45, 22),
       (6428, 1, 15),
       (6429, 2, 29),
       (6430, 3, 25),
       (6431, 4, 44),
       (6432, 5, 55),
       (6433, 6, 15),
       (6434, 7, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6435, 8, 43),
       (6436, 9, 60),
       (6437, 10, 46),
       (6438, 11, 52),
       (6439, 12, 30),
       (6440, 13, 37),
       (6441, 14, 36),
       (6442, 15, 33),
       (6443, 16, 43),
       (6444, 17, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6445, 18, 35),
       (6446, 19, 53),
       (6447, 20, 33),
       (6448, 21, 28),
       (6449, 22, 35),
       (6450, 23, 38),
       (6451, 24, 39),
       (6452, 25, 38),
       (6453, 26, 20),
       (6522, 12, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6454, 27, 59),
       (6455, 28, 53),
       (6456, 29, 45),
       (6528, 18, 21),
       (6457, 30, 47),
       (6458, 31, 62),
       (6459, 32, 45),
       (6460, 33, 42),
       (6461, 34, 28),
       (6462, 1, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6463, 2, 34),
       (6464, 3, 31),
       (6465, 4, 42),
       (6466, 5, 34),
       (6467, 6, 37),
       (6468, 7, 37),
       (6470, 9, 26),
       (6471, 10, 25),
       (6472, 11, 13),
       (6473, 12, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6474, 13, 57),
       (6475, 14, 57),
       (6476, 15, 52),
       (6477, 16, 52),
       (6478, 1, 36),
       (6479, 2, 40),
       (6480, 3, 28),
       (6481, 4, 28),
       (6482, 5, 27),
       (6483, 6, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6484, 7, 42),
       (6485, 8, 40),
       (6486, 9, 28),
       (6487, 10, 21),
       (6488, 11, 45),
       (6489, 12, 30),
       (6490, 13, 33),
       (6491, 14, 32),
       (6492, 15, 53),
       (6493, 16, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6494, 17, 57),
       (6495, 18, 30),
       (6496, 19, 31),
       (6497, 20, 27),
       (6498, 21, 13),
       (6499, 22, 27),
       (6500, 23, 24),
       (6501, 24, 20),
       (6502, 25, 21),
       (6503, 26, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6504, 27, 44),
       (6505, 28, 12),
       (6506, 29, 27),
       (6507, 30, 29),
       (6508, 31, 34),
       (6509, 32, 53),
       (6510, 33, 29),
       (6511, 1, 34),
       (6512, 2, 17),
       (6513, 3, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6514, 4, 26),
       (6515, 5, 21),
       (6516, 6, 22),
       (6517, 7, 43),
       (6518, 8, 27),
       (6519, 9, 28),
       (6520, 10, 28),
       (6521, 11, 20),
       (6562, 16, 18),
       (6523, 13, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6524, 14, 37),
       (6525, 15, 39),
       (6526, 16, 45),
       (6527, 17, 29),
       (6529, 19, 32),
       (6530, 20, 21),
       (6531, 21, 29),
       (6532, 22, 18),
       (6533, 23, 21),
       (6534, 24, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6535, 25, 31),
       (6536, 26, 29),
       (6537, 27, 53),
       (6538, 28, 25),
       (6539, 29, 20),
       (6540, 30, 25),
       (6541, 31, 29),
       (6542, 32, 20),
       (6543, 33, 41),
       (6544, 34, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6545, 35, 30),
       (6546, 36, 18),
       (6547, 1, 48),
       (6548, 2, 32),
       (6549, 3, 32),
       (6550, 4, 29),
       (6551, 5, 16),
       (6552, 6, 23),
       (6553, 7, 36),
       (6554, 8, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6555, 9, 28),
       (6556, 10, 32),
       (6557, 11, 20),
       (6558, 12, 46),
       (6559, 13, 11),
       (6560, 14, 45),
       (6561, 15, 30),
       (6563, 17, 45),
       (6564, 18, 48),
       (6565, 19, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6645, 21, 20),
       (6566, 20, 32),
       (6567, 21, 21),
       (6568, 22, 27),
       (6569, 23, 20),
       (6570, 1, 28),
       (6571, 2, 25),
       (6572, 3, 33),
       (6573, 4, 28),
       (6574, 5, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6575, 6, 22),
       (6576, 7, 28),
       (6577, 8, 33),
       (6578, 9, 33),
       (6579, 10, 37),
       (6580, 11, 15),
       (6581, 12, 40),
       (6582, 13, 26),
       (6583, 14, 14),
       (6584, 15, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6585, 16, 26),
       (6586, 17, 18),
       (6587, 18, 21),
       (6588, 19, 39),
       (6589, 20, 36),
       (6590, 21, 22),
       (6591, 22, 32),
       (6592, 23, 21),
       (6593, 24, 36),
       (6594, 25, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6595, 26, 16),
       (6596, 27, 38),
       (6597, 28, 44),
       (6598, 29, 27),
       (12992, 13, 19),
       (6599, 30, 19),
       (6600, 31, 27),
       (6601, 1, 21),
       (6602, 2, 31),
       (6603, 3, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6604, 4, 15),
       (6605, 5, 32),
       (6606, 6, 52),
       (6607, 7, 32),
       (6608, 8, 28),
       (6609, 9, 42),
       (6610, 10, 26),
       (6611, 11, 39),
       (6612, 12, 17),
       (6613, 13, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6614, 14, 41),
       (6615, 15, 33),
       (6616, 16, 35),
       (6617, 17, 36),
       (6618, 18, 38),
       (6619, 19, 34),
       (6620, 20, 38),
       (6621, 21, 48),
       (6622, 22, 46),
       (6623, 23, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6624, 24, 27),
       (6625, 1, 14),
       (6626, 2, 20),
       (6627, 3, 27),
       (6628, 4, 30),
       (6629, 5, 21),
       (6630, 6, 25),
       (6631, 7, 20),
       (6632, 8, 23),
       (6633, 9, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6634, 10, 23),
       (6635, 11, 41),
       (6636, 12, 20),
       (6637, 13, 20),
       (6638, 14, 35),
       (6639, 15, 35),
       (6640, 16, 25),
       (6641, 17, 28),
       (6642, 18, 21),
       (6643, 19, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6644, 20, 13),
       (6646, 22, 17),
       (6647, 23, 32),
       (6648, 24, 22),
       (6649, 25, 17),
       (6650, 26, 38),
       (6651, 27, 25),
       (6652, 28, 32),
       (6653, 29, 12),
       (6654, 30, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6655, 31, 33),
       (6656, 1, 27),
       (6657, 2, 32),
       (6658, 3, 28),
       (6659, 4, 30),
       (6660, 5, 35),
       (6661, 6, 18),
       (6662, 7, 17),
       (6663, 8, 39),
       (6664, 9, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6665, 10, 33),
       (6666, 11, 39),
       (6667, 12, 22),
       (6668, 13, 58),
       (6669, 14, 26),
       (6670, 15, 31),
       (6671, 16, 21),
       (6672, 17, 28),
       (6673, 18, 32),
       (6674, 19, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6675, 20, 31),
       (6676, 21, 53),
       (6677, 22, 30),
       (6678, 23, 16),
       (6679, 24, 25),
       (6680, 25, 46),
       (6681, 26, 40),
       (6682, 27, 50),
       (6716, 21, 26),
       (6683, 28, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6684, 29, 29),
       (6685, 30, 39),
       (6686, 31, 54),
       (6687, 32, 22),
       (6688, 33, 28),
       (6689, 34, 21),
       (6690, 35, 35),
       (6691, 36, 18),
       (6692, 37, 45),
       (6693, 38, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6694, 39, 52),
       (6695, 40, 23),
       (6696, 1, 44),
       (6697, 2, 37),
       (6698, 3, 39),
       (6699, 4, 66),
       (6700, 5, 46),
       (6701, 6, 33),
       (6702, 7, 35),
       (6703, 8, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6704, 9, 29),
       (6705, 10, 18),
       (6706, 11, 42),
       (6707, 12, 40),
       (6708, 13, 61),
       (6709, 14, 35),
       (6710, 15, 42),
       (6711, 16, 30),
       (6712, 17, 35),
       (6713, 18, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6714, 19, 50),
       (6715, 20, 40),
       (6717, 22, 44),
       (6718, 23, 25),
       (6719, 24, 52),
       (6720, 25, 47),
       (6721, 1, 34),
       (6722, 2, 30),
       (6723, 3, 37),
       (6724, 4, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6725, 5, 38),
       (6726, 6, 26),
       (6727, 7, 30),
       (6728, 8, 29),
       (6729, 9, 23),
       (6730, 10, 43),
       (6731, 11, 30),
       (6732, 12, 27),
       (6733, 13, 16),
       (6734, 14, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6735, 15, 44),
       (6736, 16, 25),
       (6737, 17, 16),
       (6738, 18, 36),
       (6739, 19, 27),
       (6740, 20, 29),
       (6741, 21, 39),
       (6742, 22, 35),
       (6743, 23, 24),
       (6744, 24, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13280, 3, 14),
       (6745, 25, 26),
       (6746, 26, 48),
       (6747, 27, 36),
       (6748, 28, 30),
       (6749, 29, 14),
       (6750, 30, 17),
       (6751, 31, 20),
       (6752, 32, 28),
       (6753, 33, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6754, 34, 26),
       (6755, 35, 24),
       (6756, 1, 33),
       (6757, 2, 50),
       (6758, 3, 35),
       (6759, 4, 28),
       (6760, 5, 40),
       (6761, 6, 32),
       (6762, 7, 42),
       (6763, 8, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6764, 9, 31),
       (6765, 10, 15),
       (6766, 11, 27),
       (6767, 12, 14),
       (6768, 13, 28),
       (6769, 14, 15),
       (6770, 15, 41),
       (6771, 16, 39),
       (6772, 17, 21),
       (6773, 18, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6774, 19, 29),
       (6775, 20, 40),
       (6776, 21, 20),
       (6778, 23, 23),
       (6779, 24, 43),
       (6780, 25, 34),
       (6781, 26, 26),
       (6782, 27, 35),
       (6783, 28, 47),
       (6784, 29, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6785, 30, 22),
       (6786, 31, 33),
       (6787, 32, 21),
       (6788, 33, 51),
       (6789, 34, 24),
       (6790, 35, 34),
       (6791, 36, 39),
       (6792, 37, 30),
       (6793, 38, 40),
       (6794, 39, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6795, 40, 22),
       (6796, 41, 21),
       (6797, 42, 21),
       (6798, 43, 40),
       (6799, 44, 38),
       (6800, 45, 33),
       (6801, 46, 24),
       (6802, 47, 18),
       (6803, 48, 68),
       (6804, 49, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6805, 50, 13),
       (6806, 51, 38),
       (6807, 52, 25),
       (6808, 53, 17),
       (6809, 54, 41),
       (6810, 55, 19),
       (6811, 56, 19),
       (6812, 57, 28),
       (6813, 1, 33),
       (6814, 2, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6815, 3, 16),
       (6816, 4, 32),
       (6817, 5, 9),
       (6818, 6, 61),
       (6819, 7, 29),
       (6820, 8, 36),
       (6821, 9, 30),
       (13338, 11, 18),
       (6822, 10, 27),
       (6823, 11, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6824, 12, 26),
       (6825, 13, 17),
       (6826, 14, 21),
       (6827, 15, 29),
       (6828, 16, 24),
       (6829, 17, 25),
       (6830, 18, 36),
       (6831, 1, 23),
       (6832, 2, 41),
       (6833, 3, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6834, 4, 18),
       (6835, 5, 29),
       (6836, 6, 20),
       (6837, 7, 36),
       (6838, 8, 42),
       (6839, 9, 33),
       (6840, 10, 24),
       (6841, 11, 29),
       (6842, 12, 32),
       (6843, 13, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6844, 14, 14),
       (6845, 15, 25),
       (6846, 16, 22),
       (6847, 17, 47),
       (6848, 18, 57),
       (6849, 19, 32),
       (6850, 20, 26),
       (6851, 21, 36),
       (6852, 22, 25),
       (6853, 23, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6854, 24, 28),
       (6855, 25, 29),
       (6856, 26, 41),
       (6857, 27, 34),
       (6858, 28, 20),
       (6930, 20, 17),
       (6859, 29, 35),
       (6860, 30, 22),
       (6861, 31, 43),
       (6862, 32, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6863, 33, 36),
       (6864, 34, 37),
       (6865, 35, 48),
       (6866, 36, 45),
       (6867, 37, 37),
       (6868, 38, 27),
       (10281, 28, 8),
       (6869, 39, 42),
       (6870, 40, 21),
       (6871, 1, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6872, 2, 32),
       (6873, 3, 46),
       (6874, 4, 42),
       (6875, 5, 45),
       (6876, 6, 49),
       (6877, 7, 22),
       (6878, 8, 10),
       (6879, 9, 29),
       (6880, 10, 10),
       (6881, 11, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6882, 12, 16),
       (6883, 13, 13),
       (6884, 14, 24),
       (6885, 15, 27),
       (6886, 1, 29),
       (6887, 2, 27),
       (6888, 3, 30),
       (6889, 4, 20),
       (6890, 5, 44),
       (6891, 6, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6892, 7, 46),
       (6893, 8, 39),
       (7066, 11, 17),
       (6894, 9, 33),
       (6895, 10, 30),
       (6896, 11, 32),
       (6897, 12, 26),
       (6898, 13, 20),
       (6899, 14, 33),
       (6900, 15, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6901, 16, 46),
       (6902, 17, 25),
       (6903, 18, 19),
       (6904, 19, 30),
       (6905, 20, 45),
       (6906, 21, 26),
       (6907, 22, 16),
       (6908, 23, 49),
       (6909, 24, 20),
       (6910, 25, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6911, 1, 19),
       (6912, 2, 35),
       (6913, 3, 52),
       (6914, 4, 32),
       (6915, 5, 28),
       (6916, 6, 41),
       (6917, 7, 15),
       (6918, 8, 37),
       (6919, 9, 49),
       (6920, 10, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6921, 11, 19),
       (6922, 12, 46),
       (6923, 13, 36),
       (6924, 14, 31),
       (6925, 15, 50),
       (6926, 16, 58),
       (6927, 17, 42),
       (6928, 18, 51),
       (6929, 19, 52),
       (6931, 1, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6932, 2, 37),
       (6933, 3, 23),
       (6934, 4, 28),
       (6935, 5, 35),
       (6936, 6, 45),
       (6937, 7, 25),
       (6938, 8, 26),
       (6939, 9, 15),
       (6940, 10, 34),
       (6941, 11, 57)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6942, 12, 40),
       (10485, 30, 10),
       (6943, 13, 42),
       (6944, 14, 46),
       (6945, 15, 24),
       (6946, 16, 25),
       (6947, 17, 31),
       (6948, 18, 39),
       (6949, 19, 43),
       (6950, 20, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6951, 1, 16),
       (6952, 2, 48),
       (6953, 3, 53),
       (6954, 4, 21),
       (6955, 5, 55),
       (6956, 6, 25),
       (6957, 7, 28),
       (6958, 8, 25),
       (6959, 9, 46),
       (6960, 10, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6961, 11, 30),
       (6962, 12, 41),
       (6963, 13, 39),
       (6964, 14, 36),
       (7611, 15, 17),
       (6965, 15, 37),
       (6966, 16, 24),
       (6967, 17, 56),
       (6968, 18, 53),
       (6969, 19, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6970, 20, 41),
       (6971, 21, 35),
       (6972, 22, 15),
       (6973, 23, 35),
       (6974, 24, 35),
       (6975, 25, 46),
       (6976, 26, 31),
       (6977, 27, 37),
       (6978, 28, 41),
       (6979, 29, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6980, 30, 52),
       (6981, 31, 41),
       (6982, 1, 16),
       (6983, 2, 52),
       (6984, 3, 47),
       (6985, 4, 42),
       (6986, 5, 27),
       (6987, 6, 21),
       (6988, 7, 25),
       (6989, 8, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (6990, 9, 33),
       (6991, 10, 43),
       (6992, 11, 23),
       (6993, 12, 20),
       (6994, 13, 21),
       (6995, 1, 42),
       (6996, 2, 59),
       (6997, 3, 44),
       (6998, 4, 25),
       (6999, 5, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7000, 6, 18),
       (7001, 7, 62),
       (7002, 8, 20),
       (7003, 9, 41),
       (7004, 10, 38),
       (7005, 11, 28),
       (7006, 12, 28),
       (7007, 13, 18),
       (7008, 14, 49),
       (7009, 15, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7010, 16, 26),
       (7011, 17, 53),
       (7012, 18, 31),
       (8155, 22, 16),
       (7013, 19, 54),
       (7014, 20, 28),
       (7015, 21, 19),
       (7016, 22, 33),
       (7017, 23, 28),
       (7018, 24, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7019, 25, 34),
       (7020, 26, 28),
       (7021, 27, 41),
       (7022, 28, 39),
       (7023, 29, 33),
       (7024, 30, 44),
       (7025, 31, 24),
       (7026, 1, 44),
       (7027, 2, 31),
       (7028, 3, 51)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7029, 4, 28),
       (7030, 5, 49),
       (7031, 6, 38),
       (7032, 7, 20),
       (7067, 12, 26),
       (7033, 8, 40),
       (7034, 9, 69),
       (7035, 10, 40),
       (7036, 11, 37),
       (7037, 12, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7038, 13, 27),
       (7039, 14, 23),
       (7040, 15, 40),
       (7041, 16, 40),
       (7042, 17, 30),
       (7043, 18, 55),
       (7044, 19, 40),
       (7045, 20, 24),
       (7046, 21, 23),
       (7120, 17, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7047, 22, 53),
       (7048, 23, 40),
       (7049, 24, 39),
       (7050, 25, 47),
       (7051, 26, 30),
       (7052, 27, 44),
       (7053, 28, 34),
       (7054, 29, 37),
       (7055, 30, 44),
       (7056, 1, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7057, 2, 32),
       (7058, 3, 33),
       (7059, 4, 29),
       (7060, 5, 33),
       (7061, 6, 32),
       (7062, 7, 15),
       (7063, 8, 30),
       (7064, 9, 21),
       (7065, 10, 57),
       (7068, 13, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7069, 14, 25),
       (7070, 15, 35),
       (7071, 16, 24),
       (7072, 17, 23),
       (7073, 18, 43),
       (7074, 19, 15),
       (7075, 20, 26),
       (7076, 21, 28),
       (7077, 22, 29),
       (7078, 23, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7079, 24, 16),
       (7080, 25, 33),
       (7081, 26, 41),
       (7082, 27, 22),
       (10534, 79, 11),
       (7083, 28, 52),
       (7084, 29, 11),
       (7085, 30, 28),
       (7086, 31, 56),
       (7087, 32, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7088, 33, 39),
       (7089, 34, 30),
       (7090, 35, 30),
       (7091, 36, 34),
       (7092, 37, 30),
       (7093, 38, 31),
       (7094, 39, 40),
       (7095, 40, 36),
       (7096, 41, 23),
       (7097, 42, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7098, 43, 27),
       (7099, 44, 15),
       (7100, 45, 39),
       (7101, 46, 26),
       (7102, 47, 25),
       (7721, 14, 14),
       (7103, 48, 45),
       (7104, 1, 24),
       (7105, 2, 23),
       (7106, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7107, 4, 26),
       (7108, 5, 50),
       (7109, 6, 24),
       (7110, 7, 28),
       (7111, 8, 35),
       (7112, 9, 18),
       (7113, 10, 37),
       (7114, 11, 24),
       (7115, 12, 39),
       (7116, 13, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7117, 14, 31),
       (7118, 15, 20),
       (7119, 16, 26),
       (7121, 18, 28),
       (7122, 19, 46),
       (7123, 20, 17),
       (7124, 21, 43),
       (7125, 22, 53),
       (7126, 23, 40),
       (7127, 24, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7128, 25, 21),
       (7129, 1, 45),
       (7130, 2, 42),
       (7131, 3, 15),
       (7132, 4, 32),
       (7133, 5, 22),
       (7134, 6, 38),
       (7135, 7, 33),
       (7136, 8, 35),
       (7137, 9, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7138, 10, 16),
       (7139, 11, 27),
       (7140, 12, 38),
       (7141, 13, 37),
       (7142, 14, 22),
       (7143, 15, 26),
       (7144, 16, 42),
       (7145, 17, 29),
       (7146, 18, 20),
       (7147, 19, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7148, 20, 22),
       (7149, 21, 30),
       (7150, 22, 34),
       (7151, 1, 25),
       (7152, 2, 39),
       (7153, 3, 36),
       (7154, 4, 24),
       (7155, 5, 17),
       (7156, 6, 29),
       (7157, 7, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7158, 8, 29),
       (7159, 9, 49),
       (7160, 10, 37),
       (7161, 11, 57),
       (7162, 12, 27),
       (7163, 13, 38),
       (7164, 14, 45),
       (7165, 15, 26),
       (7166, 16, 22),
       (7167, 17, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7168, 18, 38),
       (7169, 19, 55),
       (7170, 20, 46),
       (7171, 21, 26),
       (7172, 22, 32),
       (7173, 23, 30),
       (7174, 1, 26),
       (7175, 2, 23),
       (7176, 3, 37),
       (7177, 4, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7178, 5, 13),
       (7179, 6, 21),
       (7180, 7, 38),
       (7181, 8, 24),
       (7182, 9, 28),
       (7183, 10, 35),
       (7184, 11, 31),
       (7185, 12, 20),
       (7186, 13, 63),
       (7187, 14, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7188, 15, 36),
       (7189, 16, 29),
       (7190, 17, 23),
       (7191, 18, 30),
       (7192, 1, 44),
       (7193, 2, 22),
       (7194, 3, 30),
       (7235, 22, 39),
       (7195, 4, 66),
       (7196, 5, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7197, 6, 31),
       (7198, 7, 41),
       (7199, 8, 18),
       (7200, 9, 40),
       (7201, 10, 53),
       (7202, 11, 52),
       (7203, 12, 28),
       (7204, 13, 26),
       (7205, 14, 29),
       (7206, 15, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7207, 16, 17),
       (7208, 17, 34),
       (7209, 18, 11),
       (7210, 19, 9),
       (7211, 20, 9),
       (7212, 21, 9),
       (7213, 22, 9),
       (7291, 14, 28),
       (7214, 1, 39),
       (7215, 2, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7216, 3, 39),
       (7217, 4, 24),
       (7218, 5, 20),
       (7219, 6, 18),
       (7220, 7, 29),
       (7221, 8, 32),
       (7222, 9, 34),
       (7223, 10, 15),
       (7224, 11, 62),
       (7225, 12, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7226, 13, 25),
       (7227, 14, 18),
       (7228, 15, 33),
       (7229, 16, 24),
       (7230, 17, 23),
       (7231, 18, 28),
       (7232, 19, 32),
       (7233, 20, 33),
       (7234, 21, 21),
       (7236, 23, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7237, 24, 41),
       (7238, 25, 12),
       (7239, 26, 25),
       (7240, 27, 18),
       (7241, 28, 24),
       (7242, 1, 30),
       (7243, 2, 21),
       (7244, 3, 28),
       (7245, 4, 17),
       (7246, 5, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7247, 6, 14),
       (7248, 7, 14),
       (7249, 8, 47),
       (7250, 9, 27),
       (7251, 10, 41),
       (7252, 11, 20),
       (7253, 12, 13),
       (7254, 13, 37),
       (7255, 14, 37),
       (7256, 15, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7257, 16, 45),
       (7258, 17, 21),
       (7259, 18, 14),
       (7260, 19, 30),
       (7261, 20, 32),
       (7262, 21, 22),
       (7263, 22, 36),
       (7264, 23, 22),
       (7265, 24, 20),
       (7266, 25, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7267, 26, 18),
       (7268, 27, 38),
       (7269, 28, 53),
       (7270, 29, 39),
       (7271, 30, 52),
       (7272, 31, 31),
       (7273, 32, 32),
       (7560, 51, 19),
       (7274, 33, 41),
       (7275, 34, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7276, 35, 42),
       (7277, 36, 55),
       (7278, 1, 25),
       (7279, 2, 31),
       (7280, 3, 29),
       (7281, 4, 11),
       (7282, 5, 30),
       (7283, 6, 34),
       (7284, 7, 18),
       (7285, 8, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7286, 9, 36),
       (7287, 10, 22),
       (7288, 11, 27),
       (7289, 12, 24),
       (7290, 13, 34),
       (7292, 15, 24),
       (7293, 16, 16),
       (7294, 17, 45),
       (7295, 18, 25),
       (7296, 19, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7297, 20, 21),
       (7298, 21, 20),
       (7299, 1, 30),
       (7300, 2, 34),
       (7301, 3, 56),
       (7302, 4, 45),
       (7303, 5, 27),
       (7304, 6, 40),
       (7305, 7, 30),
       (7306, 8, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7307, 9, 31),
       (7308, 10, 32),
       (7309, 11, 19),
       (7310, 12, 29),
       (7311, 13, 41),
       (7312, 14, 28),
       (7313, 15, 20),
       (7314, 16, 34),
       (7315, 17, 44),
       (7316, 18, 51)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7317, 19, 51),
       (7318, 20, 35),
       (7319, 21, 31),
       (7320, 22, 17),
       (7321, 1, 19),
       (7322, 2, 22),
       (7323, 3, 37),
       (7324, 4, 52),
       (7325, 5, 26),
       (7326, 6, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7327, 7, 38),
       (7328, 8, 55),
       (7329, 9, 43),
       (7330, 10, 48),
       (7331, 11, 60),
       (7332, 12, 22),
       (7333, 1, 15),
       (7334, 2, 31),
       (7335, 3, 48),
       (7336, 4, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7337, 5, 47),
       (7338, 6, 33),
       (7339, 7, 35),
       (7340, 8, 42),
       (7341, 9, 49),
       (7342, 10, 24),
       (7343, 11, 25),
       (7344, 12, 50),
       (7345, 13, 29),
       (7346, 14, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7347, 15, 47),
       (7348, 16, 19),
       (7349, 17, 32),
       (7350, 18, 56),
       (7351, 19, 44),
       (7352, 20, 27),
       (7353, 21, 30),
       (7354, 1, 37),
       (7355, 2, 35),
       (7356, 3, 55)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7357, 4, 18),
       (7358, 5, 17),
       (7359, 6, 38),
       (7360, 7, 39),
       (7361, 8, 31),
       (7362, 9, 28),
       (7363, 10, 41),
       (7364, 11, 23),
       (7365, 12, 27),
       (7366, 13, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7367, 14, 43),
       (7368, 15, 11),
       (7369, 16, 25),
       (7370, 17, 25),
       (7371, 1, 18),
       (7372, 2, 23),
       (7373, 3, 20),
       (7374, 4, 16),
       (7375, 5, 30),
       (7376, 6, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7377, 7, 39),
       (7378, 8, 41),
       (7379, 9, 28),
       (7380, 10, 18),
       (7381, 11, 42),
       (10536, 81, 11),
       (7382, 12, 43),
       (7383, 13, 18),
       (7384, 14, 24),
       (7385, 15, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7386, 16, 26),
       (7387, 17, 15),
       (7388, 18, 28),
       (7389, 19, 24),
       (7390, 20, 26),
       (7391, 21, 19),
       (7392, 22, 30),
       (7393, 1, 38),
       (7394, 2, 43),
       (7395, 3, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7396, 4, 49),
       (7397, 5, 38),
       (7398, 6, 51),
       (7399, 7, 42),
       (7400, 8, 37),
       (7401, 9, 37),
       (7402, 10, 25),
       (7403, 11, 27),
       (7404, 12, 38),
       (7405, 13, 60)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7406, 14, 28),
       (7407, 15, 13),
       (7408, 16, 57),
       (7409, 17, 27),
       (7410, 18, 23),
       (7411, 19, 46),
       (7412, 20, 44),
       (7413, 21, 42),
       (7414, 22, 33),
       (7415, 23, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7416, 24, 61),
       (7417, 25, 21),
       (7418, 26, 46),
       (7419, 27, 43),
       (7420, 1, 33),
       (7421, 2, 65),
       (7422, 3, 51),
       (7423, 4, 20),
       (7424, 5, 65),
       (7425, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7426, 7, 25),
       (7427, 8, 46),
       (7428, 9, 30),
       (7429, 10, 30),
       (13339, 12, 15),
       (7430, 11, 44),
       (7431, 12, 26),
       (7432, 13, 16),
       (7433, 14, 35),
       (7434, 15, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7435, 16, 30),
       (7436, 17, 11),
       (7437, 18, 46),
       (7438, 19, 47),
       (7439, 20, 17),
       (7440, 21, 38),
       (7441, 22, 26),
       (7442, 23, 28),
       (7443, 24, 36),
       (7444, 25, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7445, 26, 22),
       (7446, 27, 26),
       (7447, 1, 31),
       (7448, 2, 36),
       (7449, 3, 40),
       (7450, 4, 29),
       (7451, 5, 33),
       (7452, 6, 21),
       (10537, 1, 14),
       (7453, 7, 61)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7454, 8, 23),
       (7455, 9, 46),
       (7456, 10, 27),
       (7457, 11, 59),
       (7458, 12, 27),
       (7459, 13, 24),
       (7460, 14, 19),
       (7461, 15, 39),
       (7462, 1, 28),
       (7463, 2, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7464, 3, 53),
       (7465, 4, 22),
       (7466, 5, 33),
       (7467, 6, 27),
       (7468, 7, 29),
       (7469, 8, 35),
       (7470, 9, 43),
       (7471, 10, 40),
       (7472, 11, 29),
       (7473, 12, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7474, 13, 25),
       (7475, 14, 40),
       (7476, 15, 34),
       (7477, 16, 17),
       (7478, 17, 45),
       (7479, 18, 23),
       (7480, 19, 35),
       (7481, 20, 30),
       (7482, 21, 23),
       (7483, 22, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7484, 23, 34),
       (7485, 24, 23),
       (7486, 25, 17),
       (7487, 1, 20),
       (7488, 2, 47),
       (7489, 3, 33),
       (7490, 4, 36),
       (7491, 5, 43),
       (7492, 6, 38),
       (7493, 7, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7494, 8, 28),
       (7495, 9, 21),
       (7496, 10, 35),
       (7497, 11, 39),
       (7498, 12, 32),
       (7499, 13, 36),
       (7500, 14, 39),
       (7501, 15, 28),
       (7502, 16, 26),
       (7503, 17, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7504, 18, 30),
       (7505, 19, 25),
       (7506, 20, 25),
       (7507, 21, 26),
       (7508, 22, 44),
       (7509, 23, 14),
       (7510, 1, 43),
       (7511, 2, 30),
       (7512, 3, 36),
       (7513, 4, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7514, 5, 23),
       (7515, 6, 47),
       (7516, 7, 25),
       (7517, 8, 19),
       (7518, 9, 28),
       (7519, 10, 31),
       (7520, 11, 31),
       (7521, 12, 45),
       (7522, 13, 29),
       (7523, 14, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7524, 15, 36),
       (7525, 16, 23),
       (7526, 17, 33),
       (7527, 18, 27),
       (7528, 19, 36),
       (7529, 20, 36),
       (7530, 21, 40),
       (7531, 22, 34),
       (7532, 23, 15),
       (7533, 24, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7534, 25, 16),
       (7535, 26, 29),
       (7536, 27, 46),
       (7537, 28, 33),
       (7538, 29, 28),
       (7539, 30, 33),
       (7540, 31, 19),
       (7541, 32, 30),
       (7542, 33, 34),
       (7543, 34, 58)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7544, 35, 19),
       (7545, 36, 51),
       (7546, 37, 30),
       (7547, 38, 24),
       (7548, 39, 32),
       (7549, 40, 36),
       (7550, 41, 25),
       (7551, 42, 16),
       (7552, 43, 41),
       (7553, 44, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7554, 45, 53),
       (7555, 46, 17),
       (7556, 47, 51),
       (7557, 48, 21),
       (7558, 49, 36),
       (7559, 50, 32),
       (7561, 52, 30),
       (7562, 1, 32),
       (7563, 2, 31),
       (7564, 3, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7565, 4, 21),
       (7566, 5, 15),
       (7567, 6, 47),
       (7568, 7, 17),
       (7569, 8, 23),
       (7570, 9, 47),
       (7571, 10, 10),
       (7572, 11, 38),
       (7573, 12, 39),
       (7574, 13, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7575, 14, 24),
       (7576, 15, 37),
       (7577, 16, 27),
       (7578, 17, 30),
       (7579, 18, 26),
       (7580, 19, 28),
       (7581, 20, 37),
       (7582, 21, 25),
       (7583, 22, 36),
       (7584, 23, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7585, 24, 29),
       (7586, 25, 19),
       (7587, 26, 30),
       (7588, 27, 21),
       (7589, 28, 31),
       (7590, 29, 22),
       (7591, 30, 35),
       (7592, 31, 11),
       (7593, 32, 31),
       (7594, 33, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7595, 34, 17),
       (7596, 35, 31),
       (7597, 1, 49),
       (7598, 2, 33),
       (7599, 3, 28),
       (7600, 4, 29),
       (7601, 5, 34),
       (7602, 6, 24),
       (7603, 7, 43),
       (7604, 8, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7605, 9, 16),
       (7606, 10, 22),
       (7607, 11, 45),
       (7608, 12, 33),
       (7609, 13, 38),
       (7610, 14, 17),
       (7612, 16, 52),
       (7613, 17, 21),
       (7614, 18, 50),
       (7615, 19, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7616, 20, 26),
       (7617, 21, 20),
       (7618, 22, 23),
       (7619, 23, 39),
       (7620, 1, 30),
       (7621, 2, 27),
       (7622, 3, 29),
       (7623, 4, 26),
       (7624, 5, 32),
       (7625, 6, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7626, 7, 31),
       (7627, 8, 49),
       (7628, 9, 36),
       (7629, 10, 22),
       (7630, 11, 19),
       (7631, 12, 39),
       (7632, 13, 41),
       (7633, 14, 12),
       (7634, 15, 18),
       (7635, 16, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7636, 17, 33),
       (7637, 18, 22),
       (7638, 19, 21),
       (7788, 15, 25),
       (7639, 20, 48),
       (7640, 21, 14),
       (7641, 22, 26),
       (7642, 23, 38),
       (7643, 24, 19),
       (7644, 25, 57)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7645, 26, 46),
       (7646, 27, 21),
       (7647, 28, 62),
       (7648, 29, 14),
       (7649, 30, 25),
       (7650, 31, 20),
       (7651, 32, 24),
       (7652, 33, 34),
       (7653, 34, 31),
       (7654, 35, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7655, 36, 30),
       (7656, 37, 46),
       (7657, 38, 27),
       (7658, 39, 42),
       (7659, 40, 48),
       (7660, 41, 21),
       (7661, 42, 27),
       (7662, 43, 26),
       (7663, 44, 29),
       (7664, 45, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7665, 46, 64),
       (7666, 47, 30),
       (7667, 48, 30),
       (7668, 49, 40),
       (7669, 50, 31),
       (7670, 51, 42),
       (7671, 52, 46),
       (7672, 53, 17),
       (7673, 54, 22),
       (7786, 13, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7674, 55, 38),
       (7675, 56, 12),
       (7676, 57, 28),
       (7677, 58, 27),
       (7678, 1, 36),
       (7679, 2, 20),
       (7680, 3, 16),
       (7681, 4, 32),
       (7682, 5, 42),
       (7683, 6, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7684, 7, 23),
       (7685, 8, 38),
       (7686, 9, 10),
       (7687, 10, 48),
       (7688, 11, 25),
       (7689, 12, 17),
       (7690, 13, 25),
       (7691, 14, 15),
       (7692, 15, 17),
       (7693, 16, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7694, 17, 49),
       (7695, 18, 31),
       (7696, 19, 30),
       (7697, 20, 17),
       (7698, 21, 45),
       (7699, 22, 35),
       (7700, 23, 41),
       (7701, 24, 14),
       (7702, 25, 44),
       (7703, 26, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7704, 27, 52),
       (7705, 28, 18),
       (7706, 29, 17),
       (7707, 30, 40),
       (7708, 1, 27),
       (7709, 2, 34),
       (7710, 3, 35),
       (7711, 4, 43),
       (7787, 14, 22),
       (7712, 5, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7713, 6, 22),
       (7714, 7, 26),
       (7715, 8, 27),
       (7716, 9, 29),
       (7717, 10, 38),
       (7718, 11, 41),
       (7719, 12, 16),
       (7720, 13, 29),
       (7722, 15, 23),
       (7723, 16, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7724, 17, 38),
       (7725, 18, 31),
       (7726, 19, 14),
       (7727, 20, 39),
       (7728, 21, 27),
       (7729, 22, 37),
       (7730, 23, 31),
       (7731, 24, 34),
       (7732, 1, 35),
       (7733, 2, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7734, 3, 50),
       (7735, 4, 17),
       (7736, 5, 43),
       (7737, 6, 36),
       (7738, 7, 26),
       (7739, 8, 39),
       (7740, 9, 34),
       (7741, 10, 17),
       (7742, 11, 25),
       (7743, 12, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7744, 13, 47),
       (7745, 14, 20),
       (7746, 15, 34),
       (7747, 16, 24),
       (7748, 17, 26),
       (7749, 18, 23),
       (7750, 19, 36),
       (7751, 20, 18),
       (7752, 21, 44),
       (7753, 22, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7754, 23, 22),
       (7755, 24, 23),
       (7756, 25, 36),
       (7757, 26, 24),
       (7758, 27, 45),
       (7759, 28, 16),
       (7760, 29, 60),
       (7761, 30, 46),
       (7762, 31, 34),
       (7763, 32, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7764, 33, 26),
       (7765, 34, 34),
       (7766, 35, 28),
       (7767, 36, 26),
       (7768, 37, 30),
       (7769, 38, 25),
       (7770, 39, 14),
       (7771, 40, 19),
       (7772, 41, 44),
       (7773, 42, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7774, 1, 30),
       (7775, 2, 51),
       (7776, 3, 22),
       (7777, 4, 31),
       (7778, 5, 53),
       (7779, 6, 35),
       (7780, 7, 33),
       (7781, 8, 36),
       (7782, 9, 56),
       (7783, 10, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7784, 11, 40),
       (7785, 12, 20),
       (11492, 1, 13),
       (7789, 1, 30),
       (7790, 2, 40),
       (7791, 3, 41),
       (7792, 4, 24),
       (7793, 5, 32),
       (7794, 6, 41),
       (7795, 7, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7796, 8, 61),
       (7797, 9, 30),
       (7798, 10, 21),
       (7799, 11, 35),
       (7800, 12, 18),
       (7801, 13, 49),
       (7802, 14, 39),
       (7803, 15, 45),
       (7804, 16, 17),
       (7805, 17, 59)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7806, 18, 41),
       (7807, 19, 35),
       (7808, 20, 19),
       (7809, 21, 12),
       (7810, 22, 37),
       (7811, 23, 24),
       (7812, 1, 19),
       (7813, 2, 27),
       (7814, 3, 30),
       (7815, 4, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7816, 5, 33),
       (7817, 6, 27),
       (7818, 7, 37),
       (7819, 8, 20),
       (7820, 9, 22),
       (7821, 10, 29),
       (7822, 11, 40),
       (7823, 12, 29),
       (7824, 13, 40),
       (7825, 14, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7826, 15, 24),
       (7827, 16, 20),
       (7828, 17, 40),
       (7829, 18, 21),
       (7830, 19, 37),
       (7831, 20, 32),
       (7832, 21, 16),
       (7833, 22, 35),
       (7834, 23, 54),
       (7835, 24, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7836, 25, 42),
       (7837, 26, 47),
       (7838, 27, 23),
       (7839, 28, 20),
       (7840, 29, 15),
       (7841, 1, 29),
       (7842, 2, 27),
       (7843, 3, 36),
       (7844, 4, 53),
       (7845, 5, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7846, 6, 34),
       (7847, 7, 30),
       (7848, 8, 37),
       (7849, 9, 19),
       (7850, 10, 52),
       (7851, 11, 60),
       (7852, 12, 21),
       (7853, 13, 23),
       (7854, 14, 22),
       (7855, 15, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7856, 16, 36),
       (7857, 17, 26),
       (7858, 18, 30),
       (7859, 19, 30),
       (7860, 20, 24),
       (7861, 21, 32),
       (7862, 22, 21),
       (7863, 1, 32),
       (7864, 2, 37),
       (7865, 3, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7866, 4, 13),
       (7867, 5, 29),
       (7868, 6, 30),
       (8042, 19, 16),
       (7869, 7, 37),
       (7870, 8, 44),
       (7871, 9, 24),
       (7872, 10, 34),
       (7873, 11, 33),
       (7874, 12, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7875, 13, 46),
       (7876, 14, 30),
       (7877, 15, 31),
       (7878, 16, 23),
       (7879, 17, 35),
       (7880, 18, 43),
       (7881, 19, 24),
       (7882, 20, 34),
       (7883, 21, 38),
       (7884, 22, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7885, 23, 26),
       (7886, 24, 37),
       (7887, 25, 47),
       (7888, 26, 44),
       (7889, 27, 25),
       (7890, 28, 39),
       (7891, 29, 51),
       (7892, 30, 34),
       (7893, 31, 45),
       (7894, 32, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7895, 33, 26),
       (7896, 34, 46),
       (7897, 35, 37),
       (7898, 36, 46),
       (7899, 37, 36),
       (7900, 38, 18),
       (7901, 39, 62),
       (8407, 17, 18),
       (7902, 40, 31),
       (7903, 41, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7904, 42, 31),
       (7905, 43, 15),
       (7906, 44, 21),
       (7907, 1, 25),
       (7908, 2, 29),
       (7909, 3, 34),
       (7910, 4, 15),
       (7911, 5, 49),
       (7912, 6, 41),
       (7913, 7, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7914, 8, 44),
       (7915, 9, 23),
       (7916, 10, 27),
       (7917, 11, 36),
       (7918, 12, 47),
       (7919, 13, 25),
       (7920, 14, 32),
       (7921, 15, 46),
       (7922, 16, 49),
       (7923, 17, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7924, 18, 24),
       (7925, 19, 69),
       (7926, 20, 39),
       (7927, 21, 39),
       (7928, 22, 23),
       (7929, 23, 35),
       (7930, 24, 37),
       (7931, 25, 32),
       (8038, 15, 25),
       (7932, 1, 60)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7933, 2, 26),
       (7934, 3, 33),
       (7935, 4, 20),
       (7936, 5, 46),
       (7937, 6, 19),
       (7938, 7, 23),
       (7939, 8, 45),
       (7940, 9, 37),
       (7941, 10, 35),
       (7942, 11, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7943, 12, 24),
       (7944, 1, 44),
       (7945, 2, 31),
       (7946, 3, 38),
       (7947, 4, 24),
       (7948, 5, 18),
       (7949, 6, 20),
       (7950, 7, 45),
       (7951, 8, 49),
       (7952, 9, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7953, 10, 22),
       (7954, 11, 19),
       (7955, 12, 29),
       (7956, 13, 30),
       (7957, 14, 45),
       (7958, 15, 62),
       (7959, 16, 22),
       (7960, 17, 31),
       (7961, 18, 28),
       (7962, 19, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7963, 20, 41),
       (7964, 21, 46),
       (7965, 22, 38),
       (7966, 23, 36),
       (7967, 24, 30),
       (7968, 25, 24),
       (7969, 1, 22),
       (7970, 2, 26),
       (7971, 3, 62),
       (7972, 4, 77)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7973, 5, 25),
       (7974, 6, 59),
       (7975, 7, 17),
       (7976, 8, 45),
       (7977, 9, 40),
       (7978, 10, 35),
       (7979, 11, 30),
       (7980, 1, 41),
       (7981, 2, 28),
       (7982, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7983, 4, 24),
       (7984, 5, 20),
       (7985, 6, 39),
       (7986, 7, 28),
       (7987, 8, 34),
       (7988, 9, 27),
       (7989, 10, 27),
       (7990, 11, 29),
       (7991, 12, 43),
       (7992, 13, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (7993, 14, 30),
       (7994, 15, 47),
       (7995, 16, 46),
       (7996, 17, 35),
       (7997, 18, 16),
       (7998, 19, 30),
       (7999, 20, 24),
       (8000, 21, 57),
       (8001, 22, 54),
       (8002, 23, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8003, 24, 35),
       (8004, 25, 23),
       (8005, 26, 35),
       (8006, 27, 25),
       (8007, 28, 22),
       (8008, 29, 30),
       (8009, 30, 23),
       (8010, 31, 23),
       (8011, 1, 24),
       (8012, 2, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8013, 3, 23),
       (8014, 4, 45),
       (8015, 5, 20),
       (8016, 6, 19),
       (8017, 7, 52),
       (8018, 8, 29),
       (8019, 9, 36),
       (8020, 10, 23),
       (8021, 11, 19),
       (8022, 12, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8023, 13, 19),
       (8024, 1, 29),
       (8025, 2, 47),
       (8026, 3, 24),
       (8027, 4, 44),
       (8028, 5, 22),
       (8029, 6, 35),
       (8030, 7, 20),
       (8031, 8, 17),
       (8032, 9, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8033, 10, 49),
       (8034, 11, 20),
       (8035, 12, 36),
       (8036, 13, 26),
       (8037, 14, 21),
       (12037, 9, 9),
       (8039, 16, 26),
       (8040, 17, 13),
       (8041, 18, 25),
       (8043, 20, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8044, 21, 37),
       (8045, 22, 28),
       (8046, 23, 29),
       (8047, 24, 22),
       (8048, 25, 19),
       (8049, 26, 27),
       (8050, 27, 12),
       (8051, 1, 45),
       (8052, 2, 22),
       (8053, 3, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8054, 4, 33),
       (8055, 5, 36),
       (8056, 6, 24),
       (8057, 7, 30),
       (8058, 8, 26),
       (8059, 9, 25),
       (8060, 10, 29),
       (8061, 11, 21),
       (8062, 12, 23),
       (8063, 13, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8064, 14, 24),
       (8065, 15, 27),
       (8066, 16, 36),
       (8067, 17, 23),
       (8068, 18, 25),
       (8069, 19, 23),
       (8070, 20, 18),
       (8071, 21, 41),
       (8072, 22, 33),
       (8073, 23, 61)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8074, 24, 34),
       (8075, 25, 23),
       (8076, 26, 42),
       (8077, 27, 28),
       (8078, 28, 23),
       (8079, 29, 28),
       (8080, 30, 26),
       (8081, 31, 23),
       (8082, 32, 36),
       (8083, 1, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8084, 2, 19),
       (8085, 3, 28),
       (8086, 4, 17),
       (8087, 5, 17),
       (8088, 6, 30),
       (8089, 7, 30),
       (8090, 8, 67),
       (8091, 9, 23),
       (8092, 10, 29),
       (8093, 11, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8094, 12, 37),
       (8095, 13, 42),
       (8096, 14, 29),
       (8097, 15, 18),
       (8098, 16, 26),
       (8099, 17, 23),
       (8100, 18, 41),
       (8101, 19, 36),
       (8102, 20, 26),
       (8103, 21, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8104, 22, 41),
       (8105, 23, 38),
       (8106, 24, 32),
       (8107, 25, 31),
       (8108, 26, 29),
       (8109, 27, 41),
       (8110, 28, 28),
       (8111, 29, 52),
       (8112, 30, 21),
       (8113, 31, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8114, 32, 26),
       (8115, 33, 16),
       (8116, 34, 33),
       (8117, 35, 41),
       (8118, 36, 22),
       (8119, 37, 25),
       (8120, 38, 25),
       (8121, 39, 31),
       (8122, 1, 25),
       (8123, 2, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8124, 3, 15),
       (8125, 4, 61),
       (8126, 5, 33),
       (8127, 6, 32),
       (8128, 7, 40),
       (8129, 8, 50),
       (8130, 9, 31),
       (8131, 10, 36),
       (8132, 11, 36),
       (8133, 12, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8134, 1, 23),
       (8135, 2, 40),
       (8136, 3, 32),
       (8137, 4, 16),
       (8138, 5, 26),
       (8139, 6, 44),
       (8140, 7, 15),
       (8141, 8, 48),
       (8142, 9, 23),
       (8143, 10, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8144, 11, 23),
       (8145, 12, 25),
       (8146, 13, 28),
       (8147, 14, 22),
       (8148, 15, 9),
       (8149, 16, 7),
       (8150, 17, 33),
       (8151, 18, 14),
       (8152, 19, 38),
       (8153, 20, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8154, 21, 15),
       (8816, 45, 19),
       (8156, 23, 28),
       (8157, 24, 40),
       (8158, 25, 20),
       (8159, 1, 14),
       (8160, 2, 44),
       (8161, 3, 38),
       (8162, 4, 27),
       (8163, 5, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8164, 6, 30),
       (8165, 7, 27),
       (8166, 8, 22),
       (8167, 9, 21),
       (8168, 10, 30),
       (8169, 11, 26),
       (8170, 12, 51),
       (8171, 13, 25),
       (8172, 14, 18),
       (8173, 15, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8174, 16, 43),
       (8175, 17, 37),
       (8176, 18, 28),
       (8177, 19, 47),
       (8178, 20, 53),
       (8179, 21, 38),
       (8180, 22, 35),
       (8181, 23, 16),
       (8182, 1, 25),
       (8183, 2, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8184, 3, 20),
       (8185, 4, 18),
       (8186, 5, 21),
       (8187, 6, 37),
       (8188, 7, 46),
       (8189, 8, 36),
       (8190, 9, 41),
       (8191, 10, 42),
       (13340, 13, 18),
       (8192, 11, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8193, 12, 34),
       (8194, 13, 20),
       (8195, 14, 34),
       (8196, 15, 21),
       (8197, 16, 22),
       (8198, 17, 18),
       (8199, 18, 32),
       (8200, 19, 41),
       (8201, 20, 17),
       (8202, 21, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8203, 22, 31),
       (8204, 23, 61),
       (8205, 24, 24),
       (8206, 25, 30),
       (8207, 26, 29),
       (8208, 27, 37),
       (8209, 28, 24),
       (8210, 29, 44),
       (8211, 1, 32),
       (8212, 2, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8213, 3, 22),
       (8214, 4, 31),
       (8215, 5, 24),
       (8216, 6, 28),
       (8217, 7, 20),
       (8218, 8, 16),
       (8219, 9, 17),
       (8220, 10, 48),
       (8221, 11, 24),
       (8222, 12, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8223, 13, 23),
       (8224, 14, 30),
       (8225, 15, 17),
       (8226, 16, 19),
       (8227, 17, 19),
       (8228, 18, 21),
       (8229, 1, 26),
       (13341, 14, 17),
       (8230, 2, 37),
       (8231, 3, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8232, 4, 31),
       (8233, 5, 21),
       (8234, 6, 32),
       (8235, 7, 41),
       (8236, 8, 23),
       (8237, 9, 32),
       (8238, 10, 54),
       (8239, 11, 42),
       (8240, 12, 24),
       (8241, 13, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8242, 1, 25),
       (8243, 2, 46),
       (8244, 3, 51),
       (8245, 4, 32),
       (8246, 5, 33),
       (8247, 6, 52),
       (8248, 7, 18),
       (8249, 8, 41),
       (8250, 9, 32),
       (8251, 10, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8252, 11, 35),
       (8253, 12, 29),
       (8254, 13, 23),
       (8255, 14, 35),
       (8256, 15, 19),
       (8257, 16, 31),
       (8258, 17, 34),
       (8259, 18, 36),
       (8260, 19, 41),
       (8261, 1, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8262, 2, 43),
       (8263, 3, 27),
       (8264, 4, 32),
       (8265, 5, 17),
       (8266, 6, 18),
       (8267, 7, 25),
       (8268, 8, 35),
       (8269, 9, 26),
       (8270, 10, 35),
       (8271, 11, 63)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8272, 12, 29),
       (8273, 13, 43),
       (8274, 14, 24),
       (8275, 15, 30),
       (8276, 16, 27),
       (8277, 17, 32),
       (8278, 18, 13),
       (8279, 19, 24),
       (8280, 20, 36),
       (8281, 21, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8282, 22, 17),
       (8283, 23, 32),
       (8284, 24, 30),
       (8285, 25, 43),
       (8286, 26, 20),
       (8287, 27, 35),
       (8288, 1, 30),
       (8289, 2, 10),
       (8290, 3, 55),
       (8291, 4, 53)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8292, 5, 29),
       (8293, 6, 19),
       (8294, 7, 33),
       (8295, 8, 44),
       (8296, 9, 48),
       (8297, 10, 29),
       (8298, 11, 45),
       (8299, 12, 19),
       (8938, 3, 23),
       (8300, 13, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8301, 14, 29),
       (8302, 15, 24),
       (8303, 16, 21),
       (8304, 17, 30),
       (8305, 18, 64),
       (8306, 19, 34),
       (8307, 20, 46),
       (8308, 21, 39),
       (8309, 22, 32),
       (8310, 23, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8311, 24, 32),
       (8312, 25, 21),
       (8313, 26, 16),
       (8314, 27, 22),
       (8315, 28, 30),
       (8316, 29, 19),
       (8317, 30, 47),
       (8318, 31, 54),
       (8319, 1, 30),
       (8320, 2, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8321, 3, 24),
       (8322, 4, 38),
       (8323, 5, 59),
       (8324, 6, 48),
       (8325, 7, 20),
       (8326, 8, 33),
       (8327, 9, 34),
       (8328, 10, 38),
       (8329, 11, 27),
       (8330, 12, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8331, 13, 40),
       (8332, 14, 21),
       (8333, 15, 34),
       (8334, 16, 33),
       (8335, 17, 25),
       (8336, 18, 36),
       (8337, 19, 36),
       (8338, 20, 42),
       (8339, 21, 14),
       (8340, 22, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8341, 23, 30),
       (8342, 24, 29),
       (8343, 25, 33),
       (8344, 26, 28),
       (8345, 27, 18),
       (8346, 28, 41),
       (8347, 29, 31),
       (8348, 30, 35),
       (8349, 31, 24),
       (8350, 32, 54)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8351, 33, 30),
       (8352, 34, 33),
       (8353, 35, 21),
       (8354, 36, 41),
       (8355, 37, 23),
       (8356, 38, 13),
       (8357, 39, 23),
       (8358, 1, 16),
       (8359, 2, 53),
       (8360, 3, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8361, 4, 27),
       (8362, 5, 25),
       (8363, 6, 31),
       (8364, 7, 65),
       (8365, 8, 19),
       (8366, 9, 33),
       (8367, 10, 22),
       (8368, 11, 46),
       (8369, 12, 24),
       (8370, 13, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8371, 14, 40),
       (8408, 18, 35),
       (8372, 15, 50),
       (8373, 16, 31),
       (8374, 17, 42),
       (8375, 18, 34),
       (8376, 19, 68),
       (12038, 10, 10),
       (8377, 20, 38),
       (8378, 21, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8379, 22, 48),
       (8380, 23, 13),
       (8381, 24, 33),
       (8382, 25, 37),
       (8383, 26, 48),
       (8384, 27, 24),
       (8385, 28, 17),
       (8386, 29, 31),
       (8387, 30, 34),
       (8388, 31, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8389, 32, 58),
       (8390, 33, 39),
       (8391, 1, 23),
       (8392, 2, 58),
       (8393, 3, 25),
       (8394, 4, 32),
       (8395, 5, 28),
       (8396, 6, 27),
       (8397, 7, 36),
       (8398, 8, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8399, 9, 17),
       (8400, 10, 31),
       (8401, 11, 24),
       (8402, 12, 35),
       (8403, 13, 19),
       (8404, 14, 53),
       (8405, 15, 24),
       (8406, 16, 25),
       (8409, 19, 35),
       (8410, 20, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8411, 21, 41),
       (8412, 22, 29),
       (8413, 23, 37),
       (8414, 24, 43),
       (8415, 25, 39),
       (8416, 26, 26),
       (8417, 27, 35),
       (8418, 28, 20),
       (8419, 29, 17),
       (8420, 30, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8421, 31, 28),
       (8422, 32, 38),
       (8423, 33, 20),
       (8424, 34, 47),
       (8425, 35, 40),
       (8426, 36, 32),
       (8427, 37, 15),
       (8428, 1, 52),
       (8429, 2, 51),
       (8430, 3, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8431, 4, 32),
       (8432, 5, 40),
       (8433, 6, 33),
       (8434, 7, 17),
       (8435, 8, 49),
       (8436, 9, 33),
       (8437, 10, 37),
       (8438, 11, 44),
       (8439, 12, 28),
       (8440, 13, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8441, 14, 19),
       (8442, 15, 18),
       (13512, 7, 16),
       (8443, 16, 30),
       (8444, 17, 20),
       (8445, 18, 31),
       (8446, 19, 33),
       (8447, 20, 13),
       (8448, 21, 45),
       (8449, 22, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8450, 23, 36),
       (8451, 1, 24),
       (8452, 2, 36),
       (8453, 3, 29),
       (8454, 4, 13),
       (8455, 5, 18),
       (8456, 6, 29),
       (8457, 7, 17),
       (8458, 8, 48),
       (8459, 9, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8460, 10, 39),
       (8461, 11, 38),
       (8462, 12, 48),
       (8463, 13, 35),
       (8464, 14, 44),
       (8465, 15, 30),
       (8466, 16, 39),
       (8467, 17, 38),
       (8468, 18, 39),
       (8469, 19, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8470, 20, 48),
       (8471, 21, 44),
       (8472, 22, 35),
       (8473, 23, 45),
       (8474, 24, 21),
       (8475, 25, 40),
       (8477, 27, 39),
       (8579, 24, 19),
       (8478, 28, 24),
       (8479, 29, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8480, 1, 21),
       (8481, 2, 58),
       (8482, 3, 56),
       (8483, 4, 33),
       (8484, 5, 38),
       (8485, 6, 20),
       (8486, 7, 27),
       (8487, 8, 26),
       (8488, 9, 55),
       (8489, 10, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8490, 11, 39),
       (8491, 12, 53),
       (8492, 13, 28),
       (8493, 14, 38),
       (8494, 15, 18),
       (8495, 16, 20),
       (8496, 17, 34),
       (8497, 18, 54),
       (8498, 19, 26),
       (8499, 20, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8500, 21, 24),
       (8501, 22, 45),
       (8502, 23, 29),
       (8503, 24, 36),
       (8504, 25, 30),
       (8505, 26, 30),
       (8506, 27, 36),
       (8507, 28, 48),
       (8508, 29, 39),
       (8509, 30, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8510, 31, 31),
       (8511, 32, 44),
       (8512, 33, 46),
       (8513, 1, 14),
       (8514, 2, 27),
       (8515, 3, 25),
       (8516, 4, 25),
       (8517, 5, 52),
       (8518, 6, 52),
       (8519, 7, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8520, 8, 43),
       (8521, 9, 48),
       (8522, 10, 25),
       (8523, 11, 50),
       (8524, 12, 23),
       (8525, 13, 38),
       (8526, 14, 33),
       (8527, 15, 28),
       (8528, 16, 26),
       (8529, 17, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8530, 18, 40),
       (8531, 19, 45),
       (8532, 20, 34),
       (8533, 21, 25),
       (8534, 22, 49),
       (8535, 23, 17),
       (8536, 24, 42),
       (8537, 25, 29),
       (8538, 26, 37),
       (8539, 27, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8540, 28, 46),
       (8541, 29, 23),
       (8542, 30, 26),
       (8543, 31, 24),
       (8544, 32, 32),
       (8545, 33, 21),
       (8546, 34, 28),
       (8547, 35, 53),
       (8548, 36, 25),
       (8549, 37, 51)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8550, 38, 37),
       (8551, 39, 29),
       (8552, 40, 31),
       (8553, 41, 45),
       (8554, 42, 46),
       (8555, 43, 67),
       (8556, 1, 49),
       (8557, 2, 34),
       (8558, 3, 56),
       (8559, 4, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8560, 5, 24),
       (8561, 6, 42),
       (8562, 7, 35),
       (8563, 8, 55),
       (8564, 9, 27),
       (8565, 10, 52),
       (8566, 11, 28),
       (8567, 12, 53),
       (8568, 13, 24),
       (8569, 14, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8570, 15, 42),
       (8571, 16, 27),
       (8572, 17, 36),
       (8573, 18, 27),
       (8574, 19, 32),
       (8575, 20, 21),
       (8576, 21, 60),
       (8577, 22, 55),
       (8578, 23, 24),
       (8582, 1, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8583, 2, 53),
       (8584, 3, 27),
       (8585, 4, 48),
       (8586, 5, 31),
       (8629, 26, 18),
       (8587, 6, 35),
       (8588, 7, 31),
       (8589, 8, 43),
       (8590, 9, 47),
       (8591, 10, 53)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8592, 11, 18),
       (8593, 12, 49),
       (8594, 13, 28),
       (8595, 14, 43),
       (8596, 15, 27),
       (8597, 16, 36),
       (8598, 17, 43),
       (8599, 18, 32),
       (8600, 19, 35),
       (8601, 20, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8602, 21, 16),
       (8603, 22, 25),
       (8604, 1, 33),
       (8605, 2, 16),
       (8606, 3, 31),
       (8607, 4, 20),
       (8608, 5, 15),
       (8609, 6, 16),
       (8610, 7, 30),
       (8611, 8, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8612, 9, 22),
       (8613, 10, 16),
       (8614, 11, 20),
       (8615, 12, 17),
       (8616, 13, 11),
       (8617, 14, 12),
       (8618, 15, 13),
       (8619, 16, 30),
       (8620, 17, 16),
       (8621, 18, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8622, 19, 16),
       (8623, 20, 18),
       (8624, 21, 19),
       (8625, 22, 17),
       (8626, 23, 19),
       (8627, 24, 14),
       (8628, 25, 17),
       (12039, 11, 10),
       (8630, 27, 18),
       (8631, 28, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8632, 29, 14),
       (8633, 30, 18),
       (8634, 31, 26),
       (8635, 32, 15),
       (8636, 33, 14),
       (8637, 34, 15),
       (8638, 35, 17),
       (8639, 36, 18),
       (8640, 37, 14),
       (8641, 38, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8642, 39, 22),
       (8643, 40, 22),
       (8644, 41, 21),
       (8645, 42, 17),
       (8646, 43, 28),
       (8647, 44, 33),
       (8648, 45, 19),
       (8649, 46, 15),
       (8650, 47, 17),
       (8651, 48, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8652, 49, 28),
       (8653, 50, 20),
       (8654, 51, 22),
       (8655, 1, 37),
       (8656, 2, 15),
       (8657, 3, 26),
       (8658, 4, 33),
       (8659, 5, 41),
       (8660, 6, 23),
       (8661, 7, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8662, 8, 33),
       (8663, 9, 43),
       (8664, 10, 37),
       (8939, 4, 17),
       (8665, 11, 37),
       (8666, 12, 23),
       (8667, 13, 36),
       (8668, 14, 19),
       (8669, 15, 26),
       (8670, 16, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8671, 17, 44),
       (8672, 18, 35),
       (8673, 19, 23),
       (8674, 20, 47),
       (8675, 21, 44),
       (8676, 22, 18),
       (8677, 23, 23),
       (8678, 24, 19),
       (8680, 26, 11),
       (8681, 27, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8682, 28, 7),
       (8683, 29, 20),
       (8684, 30, 10),
       (8685, 31, 7),
       (8686, 32, 9),
       (8687, 33, 11),
       (8688, 34, 18),
       (8689, 35, 7),
       (8690, 36, 11),
       (8691, 37, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8692, 38, 7),
       (8693, 39, 9),
       (8694, 1, 23),
       (8695, 2, 47),
       (8696, 3, 45),
       (8697, 4, 38),
       (8698, 5, 31),
       (8699, 6, 24),
       (8700, 7, 32),
       (8701, 8, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8702, 9, 40),
       (8703, 10, 49),
       (8704, 11, 22),
       (8705, 12, 26),
       (8706, 13, 62),
       (8707, 14, 36),
       (8708, 15, 31),
       (8709, 16, 50),
       (8710, 17, 48),
       (8711, 18, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8712, 19, 14),
       (8713, 20, 32),
       (8714, 21, 39),
       (8715, 22, 40),
       (8716, 23, 22),
       (8717, 24, 47),
       (8718, 25, 30),
       (8719, 1, 21),
       (8720, 2, 44),
       (8721, 3, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8722, 4, 22),
       (8723, 5, 28),
       (8724, 6, 32),
       (8725, 7, 21),
       (8726, 8, 31),
       (8727, 9, 39),
       (8728, 10, 18),
       (8729, 11, 31),
       (8730, 12, 26),
       (8731, 13, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8732, 14, 21),
       (8733, 15, 27),
       (8734, 16, 18),
       (8735, 17, 33),
       (8736, 18, 15),
       (8737, 19, 40),
       (8738, 20, 33),
       (8739, 21, 27),
       (8740, 22, 15),
       (8741, 23, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8742, 24, 23),
       (8743, 25, 51),
       (8744, 26, 25),
       (8745, 27, 31),
       (8746, 28, 25),
       (8747, 29, 19),
       (8748, 30, 39),
       (8749, 31, 27),
       (8750, 32, 27),
       (8751, 33, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8752, 34, 27),
       (8753, 35, 38),
       (8754, 36, 24),
       (8910, 13, 17),
       (8755, 37, 29),
       (8756, 38, 38),
       (8757, 39, 31),
       (8758, 40, 30),
       (8759, 41, 43),
       (8760, 42, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8761, 43, 17),
       (8762, 44, 39),
       (8763, 45, 37),
       (8764, 46, 11),
       (8765, 47, 42),
       (8766, 48, 30),
       (8767, 49, 18),
       (8768, 50, 21),
       (8769, 51, 42),
       (8770, 52, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8771, 53, 31),
       (8772, 1, 19),
       (8773, 2, 19),
       (8774, 3, 52),
       (8775, 4, 50),
       (8776, 5, 74),
       (8777, 6, 19),
       (8778, 7, 35),
       (8779, 8, 59),
       (8940, 5, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8780, 9, 36),
       (8781, 10, 15),
       (8782, 11, 27),
       (8783, 12, 17),
       (8784, 13, 25),
       (8785, 14, 16),
       (8786, 15, 42),
       (8787, 16, 19),
       (8788, 17, 28),
       (8789, 18, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8790, 19, 52),
       (8791, 20, 30),
       (8792, 21, 16),
       (8793, 22, 47),
       (8794, 23, 27),
       (8795, 24, 39),
       (8796, 25, 20),
       (8797, 26, 59),
       (8798, 27, 29),
       (8799, 28, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8800, 29, 35),
       (8801, 30, 44),
       (8802, 31, 39),
       (8803, 32, 61),
       (8804, 33, 43),
       (8805, 34, 27),
       (8806, 35, 29),
       (8807, 36, 29),
       (8808, 37, 31),
       (8809, 38, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8810, 39, 40),
       (8811, 40, 27),
       (8812, 41, 18),
       (8813, 42, 57),
       (8814, 43, 20),
       (8815, 44, 35),
       (8817, 46, 32),
       (8818, 1, 46),
       (8819, 2, 23),
       (8820, 3, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8821, 4, 27),
       (8822, 5, 21),
       (8823, 6, 59),
       (8824, 7, 35),
       (8825, 8, 26),
       (8826, 9, 30),
       (8827, 10, 13),
       (8911, 14, 9),
       (8828, 11, 43),
       (8829, 12, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8830, 13, 33),
       (8831, 14, 28),
       (8832, 15, 42),
       (8833, 16, 16),
       (8834, 17, 29),
       (8835, 18, 38),
       (8836, 19, 15),
       (8837, 20, 31),
       (8838, 21, 37),
       (8839, 22, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8840, 23, 37),
       (8841, 24, 17),
       (8842, 25, 22),
       (8843, 26, 50),
       (8844, 27, 23),
       (8845, 28, 32),
       (8846, 1, 9),
       (8847, 2, 16),
       (8848, 3, 16),
       (8849, 4, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8850, 5, 25),
       (8851, 6, 20),
       (8852, 7, 30),
       (8853, 8, 14),
       (8854, 9, 15),
       (8855, 10, 15),
       (8856, 11, 18),
       (8857, 12, 31),
       (8858, 13, 41),
       (8859, 14, 8)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8860, 15, 14),
       (8861, 16, 10),
       (8862, 17, 8),
       (8863, 18, 8),
       (8864, 19, 36),
       (8865, 20, 22),
       (8866, 21, 35),
       (8867, 22, 19),
       (8868, 23, 24),
       (8869, 24, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8870, 25, 28),
       (8871, 26, 16),
       (12040, 12, 12),
       (8872, 27, 29),
       (8873, 28, 26),
       (8874, 29, 24),
       (8875, 30, 21),
       (8876, 31, 32),
       (8877, 32, 15),
       (8878, 33, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8879, 34, 25),
       (8880, 1, 35),
       (8881, 2, 7),
       (8882, 3, 40),
       (8883, 4, 20),
       (8884, 5, 44),
       (8885, 6, 58),
       (8886, 7, 36),
       (8887, 8, 33),
       (8888, 9, 57)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8889, 10, 17),
       (8890, 11, 29),
       (8891, 12, 25),
       (8892, 13, 18),
       (8893, 14, 33),
       (8894, 15, 20),
       (8895, 16, 27),
       (8896, 17, 23),
       (8897, 18, 26),
       (8898, 1, 54)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8899, 2, 28),
       (8900, 3, 33),
       (8901, 4, 12),
       (8902, 5, 36),
       (8903, 6, 50),
       (8904, 7, 39),
       (8905, 8, 35),
       (8906, 9, 20),
       (8907, 10, 24),
       (8908, 11, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8909, 12, 43),
       (8912, 15, 46),
       (8913, 16, 41),
       (8914, 17, 15),
       (8915, 18, 23),
       (8916, 19, 23),
       (8917, 20, 39),
       (8918, 21, 26),
       (8919, 22, 28),
       (8920, 23, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8921, 24, 38),
       (8922, 25, 18),
       (8923, 26, 18),
       (8924, 27, 53),
       (8925, 28, 8),
       (8926, 29, 26),
       (8927, 30, 14),
       (8928, 31, 26),
       (8929, 32, 41),
       (8930, 33, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8931, 34, 26),
       (8932, 35, 23),
       (8933, 36, 19),
       (8934, 37, 18),
       (8935, 38, 40),
       (8936, 1, 16),
       (8937, 2, 42),
       (8941, 6, 32),
       (8942, 7, 29),
       (8943, 8, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8944, 9, 36),
       (8945, 10, 20),
       (8946, 11, 15),
       (8947, 12, 35),
       (8948, 13, 11),
       (8949, 14, 52),
       (8950, 15, 24),
       (8951, 16, 36),
       (8952, 17, 34),
       (8953, 18, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8954, 19, 21),
       (8955, 20, 34),
       (8956, 21, 39),
       (8957, 22, 19),
       (8958, 23, 34),
       (8959, 24, 35),
       (8960, 25, 44),
       (8961, 26, 30),
       (8962, 27, 30),
       (8963, 28, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8964, 29, 35),
       (8965, 30, 33),
       (8966, 31, 47),
       (8967, 32, 32),
       (8968, 33, 29),
       (8969, 34, 21),
       (8970, 35, 35),
       (8971, 36, 31),
       (8972, 37, 20),
       (8973, 38, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8974, 39, 39),
       (8975, 40, 33),
       (8976, 41, 39),
       (8977, 42, 30),
       (8980, 45, 29),
       (8981, 46, 20),
       (8982, 47, 23),
       (8983, 48, 26),
       (8984, 49, 31),
       (8985, 50, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8986, 51, 48),
       (8987, 1, 50),
       (8988, 2, 24),
       (8989, 3, 15),
       (8990, 4, 34),
       (8991, 5, 34),
       (8992, 6, 34),
       (8993, 7, 25),
       (8994, 8, 35),
       (8995, 9, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (8996, 10, 24),
       (8997, 11, 25),
       (8998, 12, 15),
       (8999, 13, 19),
       (9000, 14, 22),
       (9001, 15, 28),
       (9002, 16, 45),
       (9003, 17, 24),
       (9004, 18, 30),
       (9005, 19, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9006, 20, 46),
       (9007, 21, 33),
       (9008, 22, 25),
       (9009, 23, 39),
       (9010, 24, 34),
       (9011, 25, 59),
       (9012, 26, 24),
       (9013, 27, 30),
       (9014, 28, 36),
       (9015, 29, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13513, 8, 15),
       (9016, 30, 35),
       (9017, 31, 31),
       (9018, 32, 34),
       (9019, 33, 37),
       (9020, 34, 27),
       (9021, 35, 37),
       (9022, 36, 45),
       (9023, 37, 38),
       (9024, 38, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9025, 39, 41),
       (9026, 40, 21),
       (9027, 41, 25),
       (9028, 42, 29),
       (9029, 43, 56),
       (9030, 44, 41),
       (9031, 45, 15),
       (9032, 46, 43),
       (9033, 47, 44),
       (9034, 48, 54)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9035, 49, 18),
       (9036, 50, 36),
       (9037, 51, 25),
       (9038, 52, 30),
       (9039, 53, 36),
       (9040, 54, 41),
       (9041, 55, 16),
       (9042, 56, 36),
       (9043, 57, 21),
       (9044, 58, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9045, 59, 42),
       (9046, 60, 19),
       (9047, 61, 25),
       (9048, 62, 13),
       (9049, 63, 41),
       (9050, 64, 65),
       (9051, 65, 39),
       (9052, 66, 42),
       (9053, 1, 33),
       (9054, 2, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9055, 3, 46),
       (9056, 4, 41),
       (9057, 5, 35),
       (9058, 6, 38),
       (9059, 7, 45),
       (9060, 8, 37),
       (9061, 9, 43),
       (9062, 10, 27),
       (9063, 11, 38),
       (9064, 12, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9065, 13, 26),
       (9067, 15, 36),
       (9068, 16, 37),
       (9069, 17, 10),
       (9070, 18, 11),
       (9071, 19, 44),
       (9072, 20, 29),
       (9073, 21, 34),
       (9074, 22, 37),
       (9075, 23, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9076, 24, 27),
       (9077, 25, 37),
       (9078, 26, 28),
       (9079, 27, 21),
       (9080, 28, 22),
       (9081, 1, 26),
       (9082, 2, 41),
       (9083, 3, 21),
       (9084, 4, 21),
       (9085, 5, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9086, 6, 26),
       (9087, 7, 34),
       (9088, 8, 20),
       (9089, 9, 34),
       (9090, 10, 41),
       (9091, 11, 24),
       (9092, 12, 40),
       (9093, 13, 39),
       (9094, 14, 22),
       (9095, 15, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9096, 16, 20),
       (9097, 17, 31),
       (9098, 18, 17),
       (9099, 19, 37),
       (9100, 20, 27),
       (9101, 21, 41),
       (9102, 22, 34),
       (9103, 23, 16),
       (9104, 24, 21),
       (9105, 25, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9106, 26, 34),
       (9107, 27, 29),
       (9108, 28, 26),
       (9109, 29, 48),
       (9110, 1, 23),
       (9111, 2, 42),
       (9112, 3, 19),
       (9113, 4, 38),
       (9114, 5, 19),
       (9115, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9116, 7, 31),
       (9117, 8, 18),
       (9118, 9, 25),
       (9119, 10, 24),
       (9120, 11, 43),
       (9121, 12, 28),
       (9122, 13, 34),
       (9123, 14, 21),
       (9124, 15, 31),
       (9125, 16, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9126, 17, 25),
       (9127, 18, 43),
       (9128, 19, 30),
       (9129, 20, 30),
       (9130, 21, 38),
       (9131, 22, 32),
       (9132, 23, 24),
       (9133, 24, 31),
       (9134, 25, 27),
       (9135, 26, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9136, 27, 29),
       (9137, 28, 35),
       (9175, 23, 28),
       (9138, 29, 43),
       (9139, 30, 19),
       (9140, 31, 36),
       (9141, 32, 32),
       (9142, 33, 60),
       (9143, 34, 41),
       (9144, 35, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9145, 36, 35),
       (9146, 37, 23),
       (9147, 38, 66),
       (9148, 39, 15),
       (9149, 40, 28),
       (9150, 41, 29),
       (9151, 42, 15),
       (9152, 43, 25),
       (9153, 1, 17),
       (9154, 2, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9155, 3, 21),
       (9156, 4, 32),
       (9157, 5, 20),
       (9158, 6, 33),
       (9159, 7, 39),
       (9195, 10, 18),
       (9160, 8, 32),
       (9161, 9, 35),
       (9162, 10, 56),
       (9163, 11, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9164, 12, 25),
       (9165, 13, 21),
       (9166, 14, 39),
       (9167, 15, 37),
       (9168, 16, 52),
       (9169, 17, 19),
       (9170, 18, 39),
       (9171, 19, 12),
       (9172, 20, 45),
       (9173, 21, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9174, 22, 14),
       (9176, 24, 50),
       (9177, 25, 23),
       (9178, 26, 17),
       (9179, 27, 46),
       (9180, 28, 43),
       (9181, 29, 16),
       (9182, 30, 19),
       (9183, 31, 24),
       (9184, 32, 62)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9185, 33, 54),
       (9186, 1, 30),
       (9187, 2, 60),
       (9188, 3, 35),
       (9189, 4, 62),
       (9190, 5, 30),
       (9191, 6, 54),
       (9192, 7, 24),
       (9193, 8, 36),
       (9194, 9, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9196, 11, 50),
       (9197, 12, 27),
       (9198, 13, 21),
       (9199, 14, 36),
       (9200, 15, 13),
       (9201, 16, 28),
       (9202, 17, 32),
       (9203, 18, 47),
       (9204, 19, 17),
       (9205, 20, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9206, 21, 40),
       (9207, 22, 38),
       (9208, 23, 33),
       (9209, 24, 37),
       (9210, 25, 35),
       (9211, 26, 56),
       (9213, 28, 33),
       (9214, 29, 39),
       (9215, 30, 19),
       (9216, 31, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9217, 32, 39),
       (9218, 33, 38),
       (9219, 34, 27),
       (9220, 1, 11),
       (9221, 2, 48),
       (9222, 3, 28),
       (9223, 4, 35),
       (9224, 5, 48),
       (9225, 6, 45),
       (9226, 7, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9227, 8, 47),
       (9228, 9, 34),
       (9229, 10, 55),
       (9230, 11, 32),
       (9231, 12, 21),
       (9271, 21, 20),
       (9232, 13, 41),
       (9233, 14, 25),
       (9234, 15, 48),
       (9235, 16, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9236, 17, 25),
       (9237, 18, 25),
       (9238, 19, 31),
       (9239, 20, 26),
       (9240, 21, 56),
       (9241, 22, 32),
       (9242, 23, 21),
       (9243, 24, 28),
       (9244, 25, 22),
       (9245, 26, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9246, 27, 32),
       (9247, 28, 29),
       (9248, 29, 29),
       (9249, 30, 10),
       (9250, 31, 35),
       (9251, 1, 19),
       (9252, 2, 18),
       (9253, 3, 34),
       (9254, 4, 27),
       (9255, 5, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9256, 6, 15),
       (9257, 7, 37),
       (9258, 8, 24),
       (9259, 9, 17),
       (9260, 10, 21),
       (9261, 11, 18),
       (9262, 12, 21),
       (9263, 13, 34),
       (9264, 14, 21),
       (9265, 15, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9266, 16, 15),
       (9267, 17, 31),
       (9268, 18, 62),
       (9269, 19, 43),
       (9270, 20, 38),
       (9272, 22, 39),
       (9273, 23, 54),
       (9274, 24, 28),
       (9275, 25, 28),
       (9276, 26, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9277, 27, 36),
       (9278, 28, 20),
       (9279, 29, 48),
       (9280, 30, 30),
       (9281, 31, 29),
       (9282, 32, 15),
       (9283, 33, 29),
       (9284, 34, 30),
       (9285, 1, 16),
       (9286, 2, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9287, 3, 26),
       (9288, 4, 29),
       (9289, 5, 31),
       (9290, 6, 20),
       (9291, 7, 59),
       (9292, 8, 28),
       (9293, 9, 33),
       (9294, 10, 27),
       (9295, 11, 43),
       (9296, 12, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9297, 13, 36),
       (9298, 14, 29),
       (9299, 15, 31),
       (9300, 16, 36),
       (9301, 17, 16),
       (9302, 18, 37),
       (9303, 19, 37),
       (9304, 20, 30),
       (9305, 21, 29),
       (9306, 22, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9307, 23, 28),
       (9308, 24, 41),
       (9309, 25, 22),
       (9310, 26, 36),
       (9311, 27, 33),
       (9312, 28, 20),
       (9313, 29, 38),
       (9314, 30, 23),
       (9315, 31, 49),
       (9316, 32, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9317, 33, 30),
       (9318, 34, 53),
       (9319, 1, 40),
       (9320, 2, 10),
       (9321, 3, 20),
       (9322, 4, 22),
       (9323, 5, 26),
       (9324, 6, 25),
       (9325, 7, 22),
       (9326, 8, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9327, 9, 23),
       (9328, 10, 47),
       (9329, 11, 27),
       (9330, 12, 56),
       (9331, 13, 38),
       (9332, 14, 33),
       (9333, 15, 23),
       (9334, 16, 25),
       (9335, 17, 36),
       (9336, 18, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9337, 19, 35),
       (9338, 20, 28),
       (9339, 21, 32),
       (9340, 22, 22),
       (9341, 23, 30),
       (9342, 24, 28),
       (9343, 1, 35),
       (9344, 2, 16),
       (9345, 3, 15),
       (9346, 4, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9347, 5, 40),
       (9348, 6, 25),
       (9349, 7, 29),
       (9350, 8, 16),
       (9351, 9, 22),
       (9352, 10, 43),
       (9353, 11, 13),
       (9354, 12, 53),
       (9355, 13, 39),
       (9356, 14, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9357, 15, 22),
       (9358, 16, 16),
       (9359, 17, 22),
       (9360, 18, 31),
       (9361, 19, 36),
       (9362, 20, 18),
       (9363, 21, 40),
       (9364, 22, 27),
       (9365, 23, 50),
       (9366, 24, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9367, 25, 36),
       (9549, 15, 29),
       (9368, 26, 49),
       (9369, 27, 44),
       (9370, 28, 22),
       (9371, 29, 35),
       (9372, 30, 31),
       (9373, 31, 31),
       (9374, 32, 31),
       (9375, 33, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9376, 34, 31),
       (9377, 35, 17),
       (9378, 36, 64),
       (9379, 37, 26),
       (9380, 38, 31),
       (9381, 39, 24),
       (9382, 40, 34),
       (9383, 41, 21),
       (9384, 42, 34),
       (9385, 43, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9386, 44, 51),
       (9387, 45, 32),
       (9388, 46, 24),
       (9389, 1, 22),
       (9390, 2, 38),
       (9391, 3, 27),
       (9392, 4, 50),
       (9393, 5, 24),
       (9394, 6, 33),
       (9395, 7, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9396, 8, 28),
       (9397, 9, 30),
       (9398, 10, 51),
       (9399, 11, 55),
       (9400, 12, 22),
       (9401, 13, 43),
       (9402, 14, 51),
       (9403, 15, 29),
       (9404, 16, 33),
       (9405, 17, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9406, 18, 27),
       (9407, 19, 39),
       (9408, 20, 44),
       (9409, 21, 46),
       (9410, 1, 37),
       (9411, 2, 21),
       (9412, 3, 19),
       (9413, 4, 27),
       (9414, 5, 34),
       (9415, 6, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9416, 7, 51),
       (9417, 8, 17),
       (9418, 9, 46),
       (9419, 10, 34),
       (13917, 28, 15),
       (9420, 11, 27),
       (9421, 12, 42),
       (9422, 13, 42),
       (9423, 14, 34),
       (9424, 15, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9425, 16, 29),
       (9426, 17, 31),
       (9427, 18, 25),
       (9428, 19, 23),
       (9429, 20, 29),
       (9430, 21, 22),
       (9431, 22, 41),
       (9432, 23, 43),
       (9433, 24, 21),
       (9434, 25, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9435, 26, 27),
       (9436, 27, 35),
       (9437, 28, 60),
       (9438, 29, 40),
       (9439, 30, 36),
       (9440, 31, 52),
       (9441, 32, 45),
       (9442, 33, 46),
       (9443, 34, 56),
       (9444, 35, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9445, 36, 45),
       (9446, 37, 22),
       (9447, 38, 22),
       (9448, 39, 66),
       (9449, 40, 30),
       (9450, 41, 25),
       (9451, 42, 40),
       (9452, 43, 17),
       (13918, 29, 14),
       (9453, 1, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9454, 2, 57),
       (9455, 3, 21),
       (9456, 4, 54),
       (9457, 5, 23),
       (9458, 6, 47),
       (9459, 7, 36),
       (9460, 8, 36),
       (9461, 9, 19),
       (9462, 10, 34),
       (9463, 11, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9464, 12, 13),
       (9465, 13, 55),
       (9466, 14, 13),
       (9467, 15, 46),
       (9468, 16, 32),
       (9469, 17, 12),
       (9470, 18, 32),
       (9471, 19, 45),
       (9472, 20, 36),
       (12041, 13, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9473, 21, 38),
       (9474, 22, 42),
       (9475, 23, 18),
       (9476, 24, 27),
       (9477, 25, 30),
       (9478, 26, 25),
       (9479, 27, 31),
       (9480, 28, 12),
       (9481, 29, 38),
       (9482, 1, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9483, 2, 23),
       (9484, 3, 34),
       (9485, 4, 39),
       (9486, 5, 19),
       (9487, 6, 47),
       (9488, 7, 19),
       (9987, 3, 18),
       (9489, 8, 49),
       (9490, 9, 18),
       (9491, 10, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9492, 11, 28),
       (9493, 12, 26),
       (9494, 13, 46),
       (9495, 14, 16),
       (9496, 15, 46),
       (9497, 16, 28),
       (9498, 17, 35),
       (9499, 18, 24),
       (9500, 19, 35),
       (9501, 20, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9502, 21, 17),
       (9503, 22, 43),
       (9504, 23, 25),
       (9505, 24, 30),
       (9506, 25, 22),
       (9507, 26, 27),
       (9508, 27, 30),
       (9509, 28, 26),
       (9510, 29, 17),
       (9511, 30, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12042, 14, 10),
       (9512, 31, 30),
       (9513, 32, 36),
       (9514, 33, 28),
       (9515, 34, 47),
       (9516, 35, 37),
       (9517, 36, 28),
       (9518, 37, 17),
       (9519, 38, 33),
       (9520, 39, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9521, 40, 15),
       (9522, 41, 21),
       (9523, 42, 33),
       (9524, 43, 47),
       (9525, 44, 10),
       (10022, 38, 20),
       (9526, 45, 34),
       (9527, 46, 23),
       (9528, 47, 12),
       (9529, 48, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9530, 49, 24),
       (9531, 50, 28),
       (9532, 51, 29),
       (9533, 52, 44),
       (9534, 53, 25),
       (9535, 1, 11),
       (9536, 2, 43),
       (9537, 3, 48),
       (9538, 4, 26),
       (9539, 5, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9540, 6, 73),
       (9541, 7, 23),
       (9542, 8, 28),
       (9543, 9, 46),
       (9544, 10, 43),
       (9545, 11, 33),
       (9546, 12, 42),
       (9547, 13, 61),
       (9548, 14, 29),
       (9550, 16, 56)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9551, 17, 40),
       (9552, 18, 27),
       (9553, 1, 24),
       (9554, 2, 44),
       (9555, 3, 45),
       (9556, 4, 40),
       (9557, 5, 44),
       (9558, 6, 40),
       (9559, 7, 25),
       (9560, 8, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9669, 21, 27),
       (9561, 9, 45),
       (9562, 10, 35),
       (9563, 11, 39),
       (9564, 12, 40),
       (9565, 13, 24),
       (9566, 14, 43),
       (9567, 15, 41),
       (9568, 16, 52),
       (9569, 17, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9570, 18, 25),
       (9571, 19, 34),
       (9572, 20, 19),
       (9573, 21, 36),
       (9574, 22, 18),
       (9575, 23, 43),
       (9576, 24, 36),
       (9577, 25, 16),
       (9578, 1, 27),
       (9579, 2, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9580, 3, 23),
       (9581, 4, 31),
       (9582, 5, 21),
       (9583, 6, 15),
       (9584, 7, 52),
       (9585, 8, 20),
       (9586, 9, 41),
       (9587, 10, 24),
       (9588, 11, 47),
       (9589, 12, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9590, 13, 56),
       (9591, 14, 37),
       (9592, 15, 24),
       (9593, 16, 13),
       (9594, 17, 35),
       (9595, 18, 22),
       (9596, 19, 33),
       (9597, 20, 33),
       (9598, 21, 36),
       (9599, 22, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9600, 23, 26),
       (9601, 24, 34),
       (9602, 25, 56),
       (9603, 26, 38),
       (9604, 27, 42),
       (9605, 1, 49),
       (9606, 2, 36),
       (9607, 3, 20),
       (9608, 4, 32),
       (9609, 5, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9610, 6, 37),
       (9611, 7, 30),
       (9612, 8, 42),
       (9613, 9, 24),
       (9614, 10, 46),
       (9615, 11, 20),
       (9616, 12, 21),
       (9617, 13, 52),
       (9618, 14, 25),
       (9619, 15, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9620, 16, 33),
       (9621, 17, 23),
       (9622, 18, 22),
       (9623, 19, 22),
       (9624, 20, 23),
       (9625, 21, 25),
       (9626, 22, 35),
       (9627, 23, 26),
       (9628, 24, 24),
       (9629, 25, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9630, 26, 36),
       (9631, 27, 55),
       (9632, 28, 20),
       (9633, 29, 48),
       (9634, 30, 27),
       (9773, 16, 26),
       (9635, 31, 39),
       (9636, 32, 19),
       (9637, 33, 16),
       (9638, 34, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9639, 35, 33),
       (9640, 36, 28),
       (9641, 37, 25),
       (9642, 38, 45),
       (9643, 39, 39),
       (9644, 40, 44),
       (9645, 41, 34),
       (9646, 42, 43),
       (9647, 43, 35),
       (9648, 44, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9649, 1, 43),
       (9650, 2, 30),
       (9651, 3, 27),
       (9652, 4, 23),
       (9653, 5, 42),
       (9654, 6, 38),
       (9655, 7, 59),
       (9656, 8, 51),
       (9657, 9, 21),
       (9658, 10, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9659, 11, 42),
       (9660, 12, 35),
       (9661, 13, 43),
       (9662, 14, 39),
       (9663, 15, 50),
       (9664, 16, 25),
       (9665, 17, 39),
       (9666, 18, 51),
       (9667, 19, 17),
       (9668, 20, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14114, 10, 14),
       (9670, 22, 50),
       (9671, 23, 42),
       (9672, 24, 29),
       (9673, 25, 27),
       (9674, 26, 47),
       (9675, 27, 29),
       (9676, 1, 24),
       (9677, 2, 34),
       (9678, 3, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9679, 4, 17),
       (9680, 5, 27),
       (9681, 6, 33),
       (9682, 7, 18),
       (9683, 8, 28),
       (9684, 9, 28),
       (9685, 10, 30),
       (9686, 11, 38),
       (9687, 12, 33),
       (9688, 13, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9689, 14, 22),
       (9690, 15, 41),
       (9691, 16, 20),
       (9692, 17, 44),
       (9693, 18, 34),
       (9694, 19, 35),
       (9695, 20, 43),
       (9696, 21, 23),
       (9697, 22, 42),
       (9698, 23, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9699, 24, 23),
       (9700, 25, 42),
       (9701, 26, 25),
       (9702, 27, 25),
       (9703, 28, 36),
       (9704, 29, 33),
       (9705, 30, 41),
       (9706, 31, 27),
       (10023, 39, 21),
       (9707, 32, 77)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9708, 33, 33),
       (9709, 1, 42),
       (9710, 2, 45),
       (9711, 3, 26),
       (9712, 4, 61),
       (9713, 5, 37),
       (9714, 6, 59),
       (9715, 7, 30),
       (9716, 8, 54),
       (9717, 9, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9718, 10, 50),
       (9719, 11, 16),
       (9720, 12, 63),
       (9721, 13, 59),
       (9722, 14, 22),
       (9723, 15, 37),
       (9724, 16, 38),
       (9725, 17, 47),
       (9726, 18, 45),
       (9727, 19, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9728, 20, 21),
       (9729, 1, 46),
       (9730, 2, 32),
       (9731, 3, 38),
       (9732, 4, 29),
       (9733, 5, 65),
       (9734, 6, 44),
       (9735, 7, 27),
       (9736, 8, 33),
       (9737, 9, 49)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9738, 10, 24),
       (9739, 11, 19),
       (9740, 12, 57),
       (9741, 13, 35),
       (9742, 14, 31),
       (9743, 15, 35),
       (9744, 16, 32),
       (9745, 17, 20),
       (9746, 18, 39),
       (9747, 19, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9748, 20, 18),
       (9749, 21, 40),
       (9750, 22, 21),
       (9751, 23, 29),
       (9752, 24, 26),
       (9753, 25, 26),
       (9754, 26, 34),
       (9755, 27, 41),
       (9756, 28, 25),
       (9757, 29, 53)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9758, 1, 35),
       (9759, 2, 37),
       (9760, 3, 34),
       (9761, 4, 15),
       (9762, 5, 39),
       (9763, 6, 41),
       (9764, 7, 36),
       (9765, 8, 34),
       (9766, 9, 28),
       (9767, 10, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9768, 11, 40),
       (9769, 12, 31),
       (9770, 13, 29),
       (9771, 14, 30),
       (9772, 15, 54),
       (9774, 17, 45),
       (9775, 18, 48),
       (9776, 19, 36),
       (9777, 20, 32),
       (9778, 21, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9779, 22, 37),
       (9780, 23, 17),
       (9781, 24, 31),
       (9782, 25, 43),
       (9783, 26, 45),
       (9784, 27, 53),
       (9785, 28, 25),
       (9786, 29, 18),
       (9787, 30, 27),
       (9788, 31, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9789, 32, 28),
       (9790, 33, 32),
       (9791, 34, 31),
       (9792, 35, 26),
       (9793, 36, 40),
       (9794, 37, 30),
       (9795, 1, 35),
       (9796, 2, 33),
       (9797, 3, 28),
       (9798, 4, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9799, 5, 58),
       (9835, 5, 36),
       (12043, 15, 10),
       (9800, 6, 68),
       (9801, 7, 38),
       (9802, 8, 38),
       (9803, 9, 38),
       (9804, 10, 36),
       (9805, 11, 32),
       (9806, 12, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9807, 13, 42),
       (9808, 14, 33),
       (9809, 15, 66),
       (9810, 16, 21),
       (9811, 17, 32),
       (9812, 18, 23),
       (9813, 19, 57),
       (9814, 20, 14),
       (9815, 21, 45),
       (9816, 22, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9817, 23, 44),
       (9818, 24, 47),
       (9819, 25, 67),
       (9820, 26, 17),
       (9821, 27, 25),
       (9822, 28, 8),
       (9823, 29, 38),
       (9824, 30, 49),
       (9825, 31, 35),
       (9826, 32, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9827, 33, 32),
       (9828, 34, 33),
       (9829, 35, 21),
       (9830, 36, 16),
       (9831, 1, 22),
       (9832, 2, 53),
       (9833, 3, 20),
       (9834, 4, 56),
       (9836, 6, 34),
       (9837, 7, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9838, 8, 43),
       (9839, 9, 47),
       (9840, 10, 27),
       (9841, 11, 39),
       (9950, 24, 31),
       (9842, 12, 39),
       (9843, 13, 24),
       (9844, 14, 45),
       (9845, 15, 49),
       (9846, 16, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9847, 17, 28),
       (9848, 18, 48),
       (9849, 19, 57),
       (9850, 20, 27),
       (9851, 21, 11),
       (9852, 1, 28),
       (9853, 2, 22),
       (9854, 3, 20),
       (9855, 4, 55),
       (9856, 5, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9857, 6, 25),
       (9858, 7, 45),
       (9859, 8, 22),
       (9860, 9, 55),
       (9861, 10, 45),
       (9862, 11, 46),
       (9863, 12, 39),
       (9864, 13, 36),
       (9865, 14, 18),
       (9866, 15, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9867, 16, 26),
       (9868, 17, 25),
       (9869, 18, 64),
       (12044, 16, 10),
       (9870, 19, 29),
       (9871, 20, 25),
       (9872, 21, 40),
       (9873, 1, 32),
       (9874, 2, 33),
       (9986, 2, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9875, 3, 33),
       (9876, 4, 25),
       (9877, 5, 31),
       (9878, 6, 30),
       (9879, 7, 35),
       (9880, 8, 32),
       (9881, 9, 21),
       (9882, 10, 28),
       (9883, 11, 36),
       (9884, 12, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9885, 13, 24),
       (9886, 14, 40),
       (9887, 15, 18),
       (9888, 16, 32),
       (9889, 17, 47),
       (9890, 18, 29),
       (9891, 19, 38),
       (9892, 20, 24),
       (9893, 21, 47),
       (9894, 22, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9895, 23, 40),
       (9896, 24, 15),
       (9897, 25, 47),
       (9898, 1, 24),
       (9899, 2, 31),
       (9900, 3, 30),
       (9901, 4, 20),
       (9902, 5, 28),
       (9903, 6, 60),
       (9904, 7, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9905, 8, 27),
       (9906, 9, 53),
       (9907, 10, 37),
       (9908, 11, 33),
       (9909, 12, 18),
       (9910, 13, 45),
       (9911, 14, 37),
       (9912, 15, 39),
       (9913, 16, 25),
       (9914, 17, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9915, 18, 24),
       (9916, 19, 26),
       (9917, 20, 21),
       (9918, 21, 25),
       (9919, 22, 17),
       (9920, 23, 33),
       (9921, 24, 32),
       (9922, 25, 46),
       (9923, 26, 30),
       (9924, 27, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9925, 28, 49),
       (9926, 29, 21),
       (9927, 1, 22),
       (9928, 2, 29),
       (9929, 3, 22),
       (9930, 4, 20),
       (9931, 5, 40),
       (9932, 6, 29),
       (9933, 7, 27),
       (9934, 8, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9935, 9, 36),
       (9936, 10, 24),
       (9937, 11, 24),
       (9938, 12, 32),
       (9939, 13, 30),
       (9940, 14, 32),
       (9941, 15, 30),
       (9942, 16, 38),
       (9943, 17, 28),
       (9944, 18, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9945, 19, 34),
       (9946, 20, 44),
       (9947, 21, 29),
       (9948, 22, 15),
       (9949, 23, 26),
       (9951, 25, 47),
       (9952, 26, 29),
       (9953, 27, 28),
       (9954, 28, 31),
       (9955, 29, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9956, 30, 37),
       (9957, 31, 29),
       (9958, 32, 25),
       (9959, 33, 31),
       (9960, 34, 24),
       (9961, 35, 30),
       (9962, 36, 29),
       (9963, 37, 21),
       (9964, 38, 28),
       (9965, 1, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9966, 2, 37),
       (9967, 3, 39),
       (9968, 4, 20),
       (9969, 5, 29),
       (9970, 6, 30),
       (9971, 7, 48),
       (9972, 8, 36),
       (9973, 9, 33),
       (9974, 10, 46),
       (9975, 11, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9976, 12, 25),
       (9977, 13, 27),
       (9978, 14, 36),
       (9979, 15, 81),
       (9980, 16, 13),
       (9981, 17, 40),
       (10054, 29, 23),
       (9982, 18, 34),
       (9983, 19, 27),
       (9984, 20, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9985, 1, 26),
       (9988, 4, 49),
       (9989, 5, 22),
       (9990, 6, 39),
       (9991, 7, 40),
       (9992, 8, 28),
       (9993, 9, 37),
       (9994, 10, 18),
       (9995, 11, 31),
       (9996, 12, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (9997, 13, 50),
       (9998, 14, 24),
       (9999, 15, 53),
       (10000, 16, 33),
       (10001, 17, 38),
       (10002, 18, 25),
       (10003, 19, 21),
       (10004, 20, 29),
       (10005, 21, 33),
       (10006, 22, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10007, 23, 33),
       (10008, 24, 45),
       (10009, 25, 28),
       (10010, 26, 58),
       (10011, 27, 39),
       (10012, 28, 27),
       (10013, 29, 32),
       (10014, 30, 23),
       (10015, 31, 25),
       (10016, 32, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10017, 33, 23),
       (10275, 22, 7),
       (10018, 34, 43),
       (10019, 35, 30),
       (10020, 36, 38),
       (10021, 37, 32),
       (10025, 41, 29),
       (10026, 1, 30),
       (10027, 2, 33),
       (10028, 3, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10029, 4, 45),
       (10030, 5, 30),
       (10031, 6, 20),
       (10032, 7, 24),
       (10033, 8, 21),
       (10034, 9, 38),
       (10035, 10, 30),
       (10036, 11, 31),
       (10037, 12, 32),
       (10038, 13, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10039, 14, 51),
       (10040, 15, 25),
       (10041, 16, 37),
       (10042, 17, 59),
       (10043, 18, 36),
       (10044, 19, 27),
       (10045, 20, 29),
       (10046, 21, 41),
       (10047, 22, 43),
       (10048, 23, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10049, 24, 31),
       (10050, 25, 26),
       (10051, 26, 49),
       (10052, 27, 47),
       (10053, 28, 29),
       (10055, 30, 30),
       (10056, 31, 48),
       (10057, 32, 57),
       (10058, 33, 22),
       (10059, 34, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10096, 34, 21),
       (10060, 35, 29),
       (10061, 36, 23),
       (10062, 37, 38),
       (10063, 1, 28),
       (10064, 2, 31),
       (10065, 3, 38),
       (10066, 4, 50),
       (10067, 5, 10),
       (10068, 6, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10069, 7, 35),
       (10070, 8, 23),
       (10071, 9, 27),
       (10072, 10, 35),
       (10073, 11, 24),
       (10074, 12, 28),
       (10075, 13, 24),
       (10076, 14, 29),
       (10077, 15, 39),
       (10078, 16, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10079, 17, 17),
       (10080, 18, 29),
       (10081, 19, 32),
       (10082, 20, 33),
       (10083, 21, 34),
       (10084, 22, 29),
       (10085, 23, 64),
       (10086, 24, 24),
       (10087, 25, 38),
       (10088, 26, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10089, 27, 20),
       (10090, 28, 45),
       (10091, 29, 47),
       (10092, 30, 21),
       (10093, 31, 26),
       (10094, 32, 37),
       (10095, 33, 23),
       (10097, 35, 43),
       (10098, 36, 15),
       (10099, 37, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10100, 1, 39),
       (10101, 2, 14),
       (10102, 3, 35),
       (10103, 4, 27),
       (10104, 5, 49),
       (10105, 6, 44),
       (10106, 7, 21),
       (10107, 8, 30),
       (10108, 9, 35),
       (10109, 10, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10110, 11, 27),
       (10111, 12, 29),
       (10112, 13, 58),
       (10113, 14, 37),
       (10114, 15, 35),
       (10115, 16, 11),
       (10116, 17, 36),
       (10117, 18, 31),
       (10118, 19, 32),
       (10119, 20, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10120, 21, 15),
       (10121, 1, 27),
       (10122, 2, 28),
       (10123, 3, 41),
       (10124, 4, 20),
       (10125, 5, 20),
       (10126, 6, 42),
       (10127, 7, 51),
       (10128, 8, 49),
       (10129, 9, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10130, 10, 10),
       (10131, 11, 34),
       (10132, 12, 28),
       (10133, 13, 37),
       (10134, 14, 33),
       (10135, 15, 32),
       (10136, 16, 38),
       (10137, 17, 35),
       (10138, 18, 30),
       (10139, 19, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10140, 20, 18),
       (10141, 21, 24),
       (10142, 22, 18),
       (10143, 23, 19),
       (10144, 24, 30),
       (10145, 25, 27),
       (10146, 26, 21),
       (10147, 1, 33),
       (10148, 2, 35),
       (10149, 3, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10150, 4, 33),
       (10151, 5, 43),
       (10152, 6, 23),
       (10153, 7, 22),
       (10154, 8, 35),
       (10155, 9, 49),
       (10156, 10, 24),
       (10157, 11, 24),
       (10158, 12, 31),
       (10159, 13, 60)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10160, 14, 48),
       (10161, 15, 22),
       (10162, 16, 31),
       (10163, 17, 42),
       (10164, 18, 35),
       (10165, 19, 52),
       (10166, 20, 42),
       (10167, 1, 18),
       (10232, 9, 27),
       (10168, 2, 62)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10169, 3, 58),
       (10170, 4, 71),
       (10171, 5, 59),
       (10172, 6, 42),
       (10173, 7, 25),
       (10174, 8, 68),
       (10175, 9, 27),
       (10176, 10, 32),
       (10177, 11, 48),
       (10178, 12, 59)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10179, 13, 56),
       (10180, 14, 22),
       (10181, 15, 51),
       (10182, 16, 52),
       (10183, 17, 46),
       (10184, 18, 30),
       (10185, 19, 48),
       (10186, 20, 29),
       (10187, 21, 26),
       (10188, 22, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10189, 23, 17),
       (10190, 24, 60),
       (10191, 25, 44),
       (10192, 26, 29),
       (10193, 27, 43),
       (10194, 28, 29),
       (10195, 29, 38),
       (10233, 10, 24),
       (10196, 30, 48),
       (10197, 31, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10198, 32, 21),
       (10199, 33, 40),
       (10200, 34, 37),
       (10201, 35, 52),
       (10202, 36, 33),
       (10203, 37, 21),
       (10204, 1, 24),
       (10205, 2, 49),
       (10206, 3, 29),
       (10207, 4, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10208, 5, 29),
       (10209, 6, 15),
       (10210, 7, 39),
       (10211, 8, 31),
       (10212, 9, 21),
       (10213, 10, 20),
       (10214, 11, 16),
       (10215, 12, 41),
       (10216, 13, 47),
       (10217, 14, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10218, 15, 36),
       (10219, 16, 36),
       (10220, 17, 23),
       (10221, 18, 33),
       (10222, 19, 20),
       (10223, 20, 33),
       (10224, 1, 49),
       (10225, 2, 13),
       (10226, 3, 28),
       (10227, 4, 54)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10228, 5, 27),
       (10229, 6, 23),
       (10230, 7, 28),
       (10231, 8, 40),
       (10234, 11, 41),
       (10235, 12, 19),
       (10236, 13, 41),
       (10237, 14, 25),
       (10238, 15, 29),
       (10239, 16, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10240, 17, 49),
       (10241, 18, 24),
       (10242, 19, 65),
       (10243, 20, 20),
       (10244, 21, 30),
       (10245, 22, 36),
       (10246, 23, 60),
       (10247, 24, 40),
       (10248, 25, 49),
       (10249, 26, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10250, 27, 60),
       (10251, 28, 23),
       (10252, 29, 20),
       (10253, 30, 25),
       (10255, 2, 4),
       (10256, 3, 4),
       (10257, 4, 6),
       (10258, 5, 18),
       (10259, 6, 11),
       (10260, 7, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10261, 8, 11),
       (10262, 9, 23),
       (10263, 10, 15),
       (10264, 11, 11),
       (10265, 12, 12),
       (10266, 13, 10),
       (10267, 14, 10),
       (10268, 15, 10),
       (10269, 16, 10),
       (10270, 17, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10271, 18, 9),
       (10272, 19, 30),
       (10273, 20, 11),
       (10274, 21, 7),
       (10282, 29, 17),
       (10283, 30, 8),
       (10284, 31, 11),
       (10285, 32, 30),
       (10286, 33, 22),
       (10287, 34, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10288, 35, 13),
       (10289, 36, 16),
       (10290, 37, 10),
       (10291, 38, 19),
       (10292, 39, 15),
       (10293, 40, 21),
       (10294, 41, 18),
       (10295, 42, 16),
       (10296, 43, 36),
       (10297, 44, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10298, 45, 16),
       (10299, 46, 30),
       (10300, 47, 12),
       (10301, 48, 15),
       (10302, 49, 15),
       (10303, 50, 35),
       (10304, 51, 16),
       (10305, 52, 7),
       (10306, 53, 7),
       (10307, 54, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10308, 1, 15),
       (10309, 2, 9),
       (10310, 3, 39),
       (10311, 4, 19),
       (10312, 5, 8),
       (10313, 6, 20),
       (10314, 7, 19),
       (10315, 8, 7),
       (10316, 9, 16),
       (10317, 10, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10318, 11, 9),
       (10319, 12, 9),
       (10320, 13, 16),
       (10321, 14, 7),
       (10322, 15, 7),
       (10323, 16, 19),
       (10324, 17, 14),
       (10325, 18, 26),
       (10326, 19, 14),
       (10327, 20, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10328, 21, 31),
       (10329, 22, 16),
       (10330, 23, 32),
       (10331, 24, 22),
       (10332, 25, 23),
       (10333, 26, 16),
       (10334, 27, 17),
       (10335, 28, 18),
       (10336, 29, 18),
       (10337, 30, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10338, 31, 19),
       (10339, 32, 18),
       (10340, 33, 15),
       (10341, 34, 19),
       (10342, 35, 17),
       (10343, 36, 9),
       (10344, 37, 9),
       (10345, 38, 9),
       (10346, 39, 9),
       (10347, 40, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10348, 41, 9),
       (10349, 42, 30),
       (10350, 43, 13),
       (10351, 44, 13),
       (10352, 45, 16),
       (10353, 46, 16),
       (10354, 47, 17),
       (10355, 48, 9),
       (10356, 49, 26),
       (10357, 50, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10358, 51, 13),
       (10359, 52, 15),
       (10360, 53, 26),
       (10361, 54, 20),
       (10362, 55, 31),
       (10363, 1, 30),
       (10364, 2, 22),
       (10365, 3, 13),
       (10366, 4, 26),
       (10367, 5, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10368, 6, 7),
       (10369, 7, 7),
       (10370, 8, 8),
       (10371, 9, 19),
       (10372, 10, 16),
       (10373, 11, 10),
       (10374, 12, 10),
       (10375, 13, 10),
       (10376, 14, 7),
       (10377, 15, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10378, 16, 12),
       (10379, 17, 11),
       (10380, 18, 11),
       (10381, 19, 22),
       (10382, 20, 12),
       (10383, 21, 25),
       (10384, 22, 22),
       (10385, 23, 12),
       (10386, 24, 20),
       (10387, 1, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10388, 2, 22),
       (10535, 80, 19),
       (10389, 3, 24),
       (10390, 4, 29),
       (10391, 5, 13),
       (10392, 6, 18),
       (10394, 8, 16),
       (10395, 9, 23),
       (10396, 10, 52),
       (10397, 11, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10398, 12, 21),
       (10399, 13, 15),
       (10400, 14, 18),
       (10401, 15, 21),
       (10402, 16, 12),
       (10403, 17, 25),
       (10404, 18, 38),
       (10405, 19, 24),
       (10406, 20, 22),
       (10407, 21, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10408, 22, 24),
       (10409, 23, 21),
       (10410, 24, 11),
       (10411, 25, 10),
       (10412, 26, 15),
       (10413, 27, 28),
       (10414, 28, 11),
       (10415, 29, 10),
       (10416, 30, 10),
       (10417, 31, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10418, 32, 15),
       (10419, 33, 23),
       (10420, 34, 11),
       (10421, 35, 17),
       (10422, 36, 15),
       (10423, 37, 23),
       (10424, 38, 16),
       (10425, 39, 23),
       (10426, 40, 26),
       (10427, 41, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10428, 42, 33),
       (10429, 43, 18),
       (10430, 1, 50),
       (10431, 2, 19),
       (10432, 3, 16),
       (10433, 4, 14),
       (10434, 5, 10),
       (10435, 6, 19),
       (10436, 7, 20),
       (10437, 8, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10438, 9, 26),
       (10439, 10, 31),
       (10440, 11, 17),
       (10441, 12, 14),
       (10442, 13, 22),
       (10443, 14, 35),
       (10444, 15, 15),
       (10445, 16, 24),
       (10446, 17, 24),
       (10447, 18, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10448, 19, 14),
       (10449, 20, 42),
       (10450, 21, 31),
       (10451, 22, 21),
       (10452, 23, 26),
       (10453, 24, 35),
       (10454, 25, 28),
       (10455, 26, 59),
       (10456, 1, 9),
       (10457, 2, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10458, 3, 22),
       (10459, 4, 7),
       (10460, 5, 9),
       (10461, 6, 9),
       (10462, 7, 8),
       (10463, 8, 9),
       (10464, 9, 9),
       (10465, 10, 22),
       (10466, 11, 9),
       (10467, 12, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10468, 13, 9),
       (10469, 14, 9),
       (10470, 15, 18),
       (10471, 16, 9),
       (10472, 17, 14),
       (10473, 18, 14),
       (10474, 19, 21),
       (10475, 20, 12),
       (10476, 21, 13),
       (10477, 22, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10478, 23, 12),
       (10479, 24, 14),
       (10480, 25, 9),
       (10481, 26, 15),
       (10482, 27, 10),
       (10483, 28, 14),
       (10484, 29, 15),
       (10486, 31, 24),
       (10487, 32, 34),
       (10488, 33, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10489, 34, 17),
       (10490, 35, 17),
       (10491, 36, 17),
       (10492, 37, 17),
       (10493, 38, 17),
       (10494, 39, 21),
       (10495, 40, 13),
       (10496, 41, 13),
       (10497, 42, 13),
       (10498, 43, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10499, 44, 25),
       (10500, 45, 13),
       (10501, 46, 13),
       (10502, 47, 17),
       (10503, 48, 20),
       (10504, 49, 45),
       (10505, 50, 17),
       (10506, 51, 10),
       (10507, 52, 10),
       (10508, 53, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10509, 54, 31),
       (10510, 55, 18),
       (10511, 56, 19),
       (10512, 57, 26),
       (10513, 58, 10),
       (10514, 59, 12),
       (10515, 60, 31),
       (10516, 61, 32),
       (10517, 62, 42),
       (10518, 63, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10519, 64, 15),
       (10520, 65, 42),
       (10521, 66, 22),
       (10522, 67, 25),
       (10523, 68, 12),
       (10524, 69, 12),
       (10525, 70, 29),
       (10526, 71, 29),
       (10527, 72, 16),
       (10528, 73, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10529, 74, 17),
       (10530, 75, 11),
       (10531, 76, 24),
       (10532, 77, 27),
       (10533, 78, 35),
       (10538, 2, 48),
       (10539, 3, 24),
       (10540, 4, 29),
       (10541, 5, 24),
       (10542, 6, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10543, 7, 38),
       (10544, 8, 30),
       (10545, 9, 24),
       (10546, 10, 25),
       (10547, 11, 35),
       (10548, 12, 14),
       (10549, 13, 16),
       (10550, 14, 19),
       (10551, 15, 28),
       (10552, 16, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10553, 17, 21),
       (10554, 18, 11),
       (10555, 19, 14),
       (10556, 20, 23),
       (10557, 21, 34),
       (10558, 22, 15),
       (10559, 23, 28),
       (10560, 24, 18),
       (10561, 25, 16),
       (10562, 26, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10563, 27, 7),
       (10564, 28, 35),
       (10565, 29, 38),
       (10566, 30, 16),
       (10567, 31, 15),
       (10568, 32, 13),
       (10569, 33, 17),
       (10570, 34, 12),
       (10571, 35, 15),
       (10572, 36, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10573, 37, 12),
       (10574, 38, 11),
       (10575, 39, 11),
       (10576, 40, 41),
       (10577, 1, 15),
       (10578, 2, 8),
       (10579, 3, 10),
       (10580, 4, 7),
       (10582, 6, 27),
       (10583, 7, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10584, 8, 22),
       (10585, 9, 15),
       (10586, 10, 15),
       (10587, 11, 9),
       (10588, 12, 20),
       (10589, 13, 24),
       (10590, 14, 6),
       (10591, 15, 7),
       (10592, 16, 11),
       (10593, 17, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10594, 18, 11),
       (10595, 19, 7),
       (10596, 20, 7),
       (10597, 21, 11),
       (10598, 22, 7),
       (10599, 23, 7),
       (10600, 24, 7),
       (10601, 25, 9),
       (10602, 26, 7),
       (10603, 27, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10604, 28, 16),
       (10605, 29, 17),
       (10606, 30, 15),
       (10607, 31, 7),
       (10608, 32, 18),
       (10609, 33, 20),
       (10610, 34, 14),
       (10611, 35, 13),
       (10612, 36, 17),
       (10613, 37, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10614, 38, 27),
       (10615, 39, 19),
       (10616, 40, 31),
       (10617, 1, 32),
       (10618, 2, 22),
       (10619, 3, 24),
       (10620, 4, 27),
       (10621, 5, 12),
       (10622, 6, 15),
       (10623, 7, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10624, 8, 31),
       (10625, 9, 26),
       (10626, 10, 9),
       (10627, 11, 30),
       (10628, 12, 37),
       (10629, 13, 30),
       (10630, 14, 23),
       (10631, 15, 20),
       (10632, 16, 33),
       (10633, 17, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10634, 18, 22),
       (10635, 19, 53),
       (10636, 20, 19),
       (10637, 21, 16),
       (10638, 22, 38),
       (10639, 23, 25),
       (10640, 24, 15),
       (10641, 25, 22),
       (10642, 26, 29),
       (10643, 27, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10644, 28, 26),
       (10645, 29, 35),
       (10646, 30, 15),
       (10647, 31, 29),
       (10648, 32, 21),
       (10649, 33, 34),
       (10650, 34, 19),
       (10651, 35, 17),
       (10652, 36, 17),
       (10654, 38, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10655, 39, 20),
       (10656, 40, 14),
       (10657, 41, 13),
       (10658, 42, 17),
       (10659, 43, 15),
       (10660, 44, 26),
       (10661, 1, 24),
       (10662, 2, 26),
       (10663, 3, 22),
       (10664, 4, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10665, 5, 18),
       (10666, 6, 14),
       (10667, 7, 39),
       (10668, 8, 28),
       (10669, 9, 33),
       (10670, 10, 21),
       (10671, 11, 15),
       (10672, 12, 37),
       (10673, 13, 39),
       (10674, 14, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10675, 1, 19),
       (10676, 2, 43),
       (10677, 3, 39),
       (10678, 4, 23),
       (10679, 5, 29),
       (10680, 6, 27),
       (10681, 7, 15),
       (10682, 8, 21),
       (10683, 9, 14),
       (10684, 10, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10685, 11, 38),
       (10686, 12, 20),
       (10687, 13, 33),
       (10688, 14, 25),
       (10689, 15, 33),
       (10690, 16, 19),
       (10691, 17, 26),
       (10692, 18, 46),
       (10693, 19, 51),
       (10694, 20, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10695, 21, 24),
       (10696, 22, 46),
       (10697, 23, 54),
       (10698, 24, 18),
       (10699, 25, 24),
       (10700, 26, 21),
       (10701, 27, 7),
       (10702, 28, 11),
       (10703, 29, 7),
       (10704, 30, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10705, 31, 16),
       (10706, 32, 10),
       (10707, 33, 7),
       (10708, 34, 14),
       (10709, 35, 13),
       (10710, 36, 7),
       (10711, 37, 9),
       (10712, 38, 11),
       (10713, 39, 15),
       (10714, 40, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10715, 41, 9),
       (10716, 42, 17),
       (10717, 43, 10),
       (10718, 44, 13),
       (10719, 45, 12),
       (10720, 46, 16),
       (10721, 47, 8),
       (10722, 1, 35),
       (10723, 2, 34),
       (10806, 14, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10724, 3, 27),
       (10725, 4, 25),
       (10726, 5, 12),
       (10727, 6, 12),
       (10728, 7, 11),
       (10729, 8, 49),
       (10730, 9, 10),
       (10731, 10, 7),
       (10732, 11, 7),
       (10733, 12, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10734, 13, 7),
       (10735, 14, 27),
       (10736, 15, 38),
       (10737, 16, 16),
       (10738, 17, 60),
       (10739, 18, 55),
       (10740, 19, 51),
       (10741, 20, 32),
       (10742, 21, 24),
       (10743, 22, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10744, 23, 36),
       (10745, 24, 19),
       (10746, 25, 18),
       (10747, 26, 11),
       (10748, 27, 20),
       (10749, 28, 19),
       (10750, 29, 29),
       (10751, 30, 22),
       (10752, 31, 21),
       (10753, 32, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10754, 33, 42),
       (10755, 34, 18),
       (10756, 35, 19),
       (10757, 36, 23),
       (10758, 37, 37),
       (10759, 38, 42),
       (10760, 39, 20),
       (10761, 40, 56),
       (10762, 1, 16),
       (10807, 15, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12045, 17, 10),
       (10763, 2, 62),
       (10764, 3, 24),
       (10765, 4, 23),
       (10766, 5, 29),
       (10767, 6, 40),
       (10768, 7, 28),
       (10769, 8, 31),
       (10770, 9, 24),
       (10771, 10, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10772, 11, 22),
       (10773, 12, 21),
       (10774, 13, 26),
       (10775, 14, 31),
       (10776, 1, 22),
       (10777, 2, 25),
       (10778, 3, 15),
       (10779, 4, 20),
       (10780, 5, 7),
       (10781, 6, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10782, 7, 7),
       (10783, 8, 32),
       (10784, 9, 15),
       (10785, 10, 37),
       (10786, 11, 39),
       (10787, 12, 17),
       (10788, 13, 12),
       (10789, 14, 32),
       (10790, 15, 41),
       (10791, 16, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10792, 17, 21),
       (10793, 1, 27),
       (10794, 2, 33),
       (10795, 3, 24),
       (10796, 4, 12),
       (10797, 5, 16),
       (10798, 6, 16),
       (10799, 7, 16),
       (10800, 8, 14),
       (10801, 9, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10802, 10, 16),
       (10803, 11, 24),
       (10804, 12, 45),
       (10805, 13, 28),
       (11002, 18, 8),
       (10808, 16, 34),
       (10809, 17, 32),
       (10810, 18, 38),
       (10811, 19, 17),
       (10812, 20, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10813, 21, 22),
       (10814, 22, 20),
       (10815, 23, 10),
       (10816, 24, 36),
       (10817, 25, 33),
       (10818, 26, 28),
       (10819, 27, 41),
       (10820, 28, 33),
       (10821, 29, 45),
       (10822, 1, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10823, 2, 26),
       (10824, 3, 30),
       (10825, 4, 28),
       (10826, 5, 36),
       (10827, 6, 18),
       (10828, 7, 22),
       (10829, 8, 17),
       (10830, 9, 15),
       (10831, 10, 16),
       (10832, 11, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10833, 12, 17),
       (10834, 13, 15),
       (10835, 14, 13),
       (10836, 15, 15),
       (10837, 16, 14),
       (10838, 17, 16),
       (10839, 18, 16),
       (10840, 19, 17),
       (10841, 20, 16),
       (10842, 21, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10843, 22, 14),
       (10844, 23, 15),
       (10845, 24, 14),
       (10846, 25, 19),
       (10847, 26, 15),
       (10848, 27, 14),
       (10849, 28, 15),
       (10850, 29, 22),
       (10851, 30, 17),
       (10852, 31, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10853, 32, 18),
       (10854, 33, 20),
       (10855, 34, 16),
       (10856, 35, 34),
       (10857, 36, 22),
       (10858, 37, 29),
       (10859, 38, 22),
       (10860, 39, 23),
       (10861, 40, 34),
       (10862, 41, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10863, 42, 35),
       (10864, 43, 18),
       (10865, 1, 38),
       (10866, 2, 18),
       (10867, 3, 18),
       (10868, 4, 20),
       (10869, 5, 33),
       (10870, 6, 42),
       (10871, 7, 35),
       (10872, 8, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10873, 9, 42),
       (10874, 10, 34),
       (10875, 11, 42),
       (10876, 12, 15),
       (10877, 13, 32),
       (10878, 14, 23),
       (10879, 15, 18),
       (10880, 16, 32),
       (10881, 17, 44),
       (10882, 18, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10883, 19, 27),
       (10884, 20, 25),
       (10885, 21, 47),
       (10886, 22, 19),
       (10887, 23, 29),
       (10888, 24, 36),
       (10889, 25, 30),
       (10890, 26, 17),
       (11003, 19, 18),
       (10891, 27, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10892, 1, 29),
       (10893, 2, 15),
       (10894, 3, 21),
       (10895, 4, 32),
       (10896, 5, 24),
       (10897, 6, 28),
       (10898, 7, 20),
       (10899, 8, 29),
       (10900, 9, 20),
       (10901, 10, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10902, 11, 41),
       (10903, 12, 18),
       (10904, 13, 24),
       (10905, 14, 17),
       (10906, 15, 19),
       (10907, 16, 19),
       (10908, 17, 24),
       (10909, 1, 25),
       (10910, 2, 49),
       (10911, 3, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10912, 4, 26),
       (10913, 5, 41),
       (10914, 6, 45),
       (10915, 7, 39),
       (10916, 8, 18),
       (10917, 9, 32),
       (10918, 10, 32),
       (10919, 11, 27),
       (11128, 18, 17),
       (10920, 12, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10921, 13, 29),
       (10922, 14, 23),
       (10923, 15, 30),
       (10924, 16, 40),
       (10925, 17, 45),
       (10926, 18, 31),
       (11004, 20, 12),
       (10927, 19, 36),
       (10928, 1, 56),
       (10929, 2, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10930, 3, 45),
       (10931, 4, 33),
       (10932, 5, 34),
       (10933, 6, 40),
       (10934, 7, 16),
       (10935, 8, 24),
       (10936, 1, 13),
       (10937, 2, 34),
       (10938, 3, 46),
       (10939, 4, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10940, 5, 45),
       (10941, 6, 19),
       (10942, 7, 12),
       (10943, 8, 35),
       (10944, 9, 10),
       (10945, 10, 27),
       (10946, 11, 17),
       (10947, 12, 61),
       (10948, 13, 38),
       (10949, 14, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10950, 15, 55),
       (10951, 16, 41),
       (10952, 17, 64),
       (10953, 18, 31),
       (10954, 19, 18),
       (10955, 20, 24),
       (10956, 21, 30),
       (10957, 22, 41),
       (10958, 23, 50),
       (10959, 24, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10960, 25, 16),
       (11005, 21, 15),
       (10961, 26, 34),
       (10962, 27, 17),
       (10963, 28, 24),
       (10964, 29, 28),
       (10965, 30, 25),
       (10966, 1, 21),
       (10967, 2, 30),
       (10968, 3, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10969, 4, 20),
       (10970, 5, 47),
       (10971, 6, 21),
       (10972, 7, 27),
       (10973, 8, 41),
       (10974, 9, 46),
       (10975, 10, 34),
       (10976, 11, 25),
       (10977, 12, 25),
       (10978, 13, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10979, 14, 51),
       (10980, 15, 27),
       (10981, 16, 25),
       (10982, 17, 15),
       (10983, 18, 41),
       (10984, 19, 52),
       (10985, 1, 18),
       (10986, 2, 16),
       (10987, 3, 26),
       (10988, 4, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10989, 5, 22),
       (10990, 6, 17),
       (10991, 7, 7),
       (10992, 8, 13),
       (10993, 9, 21),
       (10994, 10, 19),
       (10995, 11, 27),
       (10996, 12, 11),
       (10997, 13, 43),
       (10998, 14, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (10999, 15, 8),
       (11000, 16, 8),
       (11001, 17, 24),
       (11006, 22, 22),
       (11007, 23, 11),
       (11008, 24, 51),
       (11009, 25, 22),
       (11010, 26, 24),
       (11011, 27, 20),
       (11012, 28, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11013, 29, 41),
       (11014, 30, 15),
       (11015, 31, 32),
       (11016, 32, 38),
       (11017, 1, 21),
       (11018, 2, 22),
       (11019, 3, 26),
       (11020, 4, 48),
       (11021, 5, 34),
       (11022, 6, 61)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11023, 7, 13),
       (11024, 8, 9),
       (11025, 9, 9),
       (11026, 10, 9),
       (11027, 11, 9),
       (11028, 12, 9),
       (11029, 13, 9),
       (11030, 14, 9),
       (11031, 15, 9),
       (11032, 16, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11033, 17, 13),
       (11034, 18, 13),
       (11035, 19, 37),
       (11036, 20, 22),
       (11037, 21, 11),
       (11039, 23, 18),
       (11040, 24, 12),
       (11041, 25, 12),
       (11042, 26, 13),
       (11043, 27, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11044, 28, 8),
       (11045, 29, 8),
       (11046, 30, 22),
       (11047, 31, 51),
       (11048, 1, 50),
       (11049, 2, 30),
       (11100, 22, 18),
       (11050, 3, 34),
       (11051, 4, 24),
       (11052, 5, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11053, 6, 41),
       (11054, 7, 27),
       (11055, 8, 22),
       (11056, 9, 23),
       (11057, 10, 11),
       (11058, 11, 11),
       (11059, 12, 11),
       (11060, 13, 11),
       (11061, 14, 11),
       (11062, 15, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11063, 16, 11),
       (11064, 17, 11),
       (11065, 18, 11),
       (11066, 19, 11),
       (11067, 20, 11),
       (11068, 21, 11),
       (11069, 22, 12),
       (11070, 23, 12),
       (11071, 24, 12),
       (11072, 25, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11073, 26, 12),
       (11074, 27, 12),
       (11075, 28, 14),
       (11076, 29, 14),
       (11077, 30, 14),
       (11078, 31, 14),
       (11079, 1, 20),
       (11080, 2, 18),
       (11081, 3, 10),
       (11082, 4, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11083, 5, 14),
       (11084, 6, 24),
       (11085, 7, 19),
       (11086, 8, 30),
       (11088, 10, 27),
       (11089, 11, 19),
       (11090, 12, 26),
       (11091, 13, 20),
       (11092, 14, 25),
       (11093, 15, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11094, 16, 20),
       (11095, 17, 21),
       (11096, 18, 12),
       (11097, 19, 20),
       (11098, 20, 23),
       (11099, 21, 25),
       (12046, 18, 9),
       (11101, 23, 13),
       (11102, 24, 16),
       (11103, 25, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11104, 26, 40),
       (11105, 27, 17),
       (11106, 28, 42),
       (11107, 29, 19),
       (11108, 30, 38),
       (11109, 31, 46),
       (11110, 32, 48),
       (11111, 1, 61),
       (11112, 2, 24),
       (11113, 3, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11114, 4, 29),
       (11115, 5, 29),
       (11116, 6, 25),
       (11117, 7, 29),
       (11118, 8, 21),
       (11119, 9, 25),
       (11120, 10, 26),
       (11121, 11, 24),
       (11122, 12, 24),
       (11123, 13, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11124, 14, 26),
       (11125, 15, 23),
       (11126, 16, 26),
       (11129, 19, 15),
       (11130, 20, 22),
       (11131, 21, 21),
       (11132, 22, 17),
       (11133, 23, 29),
       (11134, 24, 34),
       (11135, 25, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11136, 26, 22),
       (11137, 27, 24),
       (11138, 28, 28),
       (11139, 29, 28),
       (11140, 30, 17),
       (11141, 31, 26),
       (11142, 32, 28),
       (11143, 33, 17),
       (11144, 34, 22),
       (11145, 1, 68)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11146, 2, 56),
       (11147, 3, 26),
       (11148, 4, 62),
       (11149, 5, 31),
       (11150, 6, 32),
       (11151, 7, 24),
       (11152, 8, 51),
       (11153, 9, 60),
       (11154, 10, 21),
       (11155, 11, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11156, 12, 43),
       (11157, 13, 36),
       (11158, 14, 36),
       (11159, 15, 50),
       (11160, 16, 21),
       (11161, 17, 34),
       (11162, 18, 36),
       (11163, 19, 25),
       (11164, 20, 53),
       (11165, 21, 57)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11166, 1, 39),
       (11167, 2, 78),
       (11168, 3, 49),
       (11169, 4, 27),
       (11276, 7, 34),
       (11170, 5, 41),
       (11171, 6, 34),
       (11172, 7, 40),
       (11173, 8, 26),
       (11174, 9, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11175, 10, 27),
       (11176, 11, 46),
       (11177, 12, 36),
       (11178, 13, 13),
       (11179, 14, 36),
       (11180, 15, 28),
       (11181, 16, 30),
       (11182, 17, 49),
       (11183, 18, 36),
       (11184, 19, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11185, 20, 35),
       (11186, 21, 41),
       (11187, 22, 39),
       (11188, 23, 23),
       (11189, 24, 23),
       (11190, 25, 30),
       (11191, 26, 11),
       (11192, 27, 27),
       (11193, 28, 23),
       (11194, 29, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11195, 30, 26),
       (11196, 1, 23),
       (11197, 2, 32),
       (11198, 3, 38),
       (11199, 4, 32),
       (11200, 5, 32),
       (11201, 6, 27),
       (11202, 7, 19),
       (11203, 8, 23),
       (11204, 9, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11205, 10, 29),
       (11206, 11, 56),
       (11207, 12, 40),
       (11208, 13, 25),
       (11209, 14, 33),
       (11210, 15, 31),
       (11211, 16, 25),
       (11212, 17, 48),
       (11213, 1, 19),
       (11214, 2, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11215, 3, 37),
       (11216, 4, 68),
       (11217, 5, 17),
       (11218, 6, 38),
       (11219, 7, 59),
       (11220, 8, 36),
       (11221, 9, 22),
       (11222, 10, 38),
       (11223, 11, 27),
       (11224, 12, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11225, 13, 17),
       (11259, 12, 39),
       (11582, 5, 18),
       (11226, 14, 83),
       (11227, 15, 25),
       (11228, 16, 36),
       (11229, 17, 39),
       (11230, 18, 35),
       (11231, 1, 41),
       (11232, 2, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11233, 3, 33),
       (11234, 4, 38),
       (11235, 5, 23),
       (11236, 6, 18),
       (11237, 7, 26),
       (12034, 6, 19),
       (11238, 8, 39),
       (11239, 9, 20),
       (11240, 10, 20),
       (11241, 11, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11242, 12, 34),
       (11243, 13, 24),
       (11244, 14, 19),
       (11245, 15, 30),
       (11246, 16, 29),
       (11247, 17, 41),
       (11248, 1, 25),
       (11249, 2, 34),
       (11250, 3, 34),
       (11251, 4, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11252, 5, 32),
       (11253, 6, 44),
       (11254, 7, 32),
       (11255, 8, 30),
       (11256, 9, 26),
       (11257, 10, 17),
       (11258, 11, 32),
       (11327, 2, 21),
       (11260, 13, 30),
       (11261, 14, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11262, 15, 9),
       (11263, 16, 32),
       (11264, 17, 20),
       (11265, 18, 21),
       (11266, 19, 25),
       (11267, 20, 19),
       (11268, 21, 16),
       (11269, 22, 47),
       (11270, 1, 48),
       (11271, 2, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11272, 3, 21),
       (11273, 4, 15),
       (11274, 5, 30),
       (11275, 6, 32),
       (11277, 8, 25),
       (11278, 9, 34),
       (11279, 10, 33),
       (11280, 11, 32),
       (11281, 12, 50),
       (11282, 13, 69)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11283, 14, 25),
       (11284, 1, 15),
       (11285, 2, 20),
       (11286, 3, 21),
       (11287, 4, 28),
       (11288, 5, 50),
       (11289, 6, 22),
       (11290, 7, 24),
       (11291, 8, 30),
       (11292, 9, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11293, 10, 46),
       (11294, 11, 22),
       (11295, 12, 23),
       (11296, 13, 54),
       (11510, 19, 18),
       (11297, 14, 37),
       (11298, 15, 34),
       (11299, 16, 60),
       (11300, 17, 21),
       (11301, 18, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11302, 19, 34),
       (11303, 20, 41),
       (11304, 21, 37),
       (11305, 22, 31),
       (11306, 23, 34),
       (11307, 24, 36),
       (11308, 25, 30),
       (11309, 26, 38),
       (11342, 17, 34),
       (11310, 27, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11311, 28, 39),
       (11312, 29, 38),
       (11313, 30, 38),
       (11314, 31, 25),
       (11315, 32, 43),
       (11316, 33, 59),
       (11317, 34, 40),
       (11318, 35, 15),
       (11319, 36, 40),
       (11320, 37, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11321, 38, 56),
       (11322, 39, 29),
       (11323, 40, 28),
       (11324, 41, 35),
       (11325, 42, 19),
       (11326, 1, 32),
       (11328, 3, 54),
       (11329, 4, 12),
       (11330, 5, 32),
       (11331, 6, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11332, 7, 53),
       (11333, 8, 30),
       (11334, 9, 26),
       (11335, 10, 42),
       (11336, 11, 36),
       (11337, 12, 29),
       (11338, 13, 31),
       (11339, 14, 41),
       (11340, 15, 20),
       (11341, 16, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11343, 18, 31),
       (11344, 19, 29),
       (11345, 20, 49),
       (11346, 21, 32),
       (11347, 22, 45),
       (11348, 1, 24),
       (11349, 2, 22),
       (11350, 3, 11),
       (11351, 4, 18),
       (11352, 5, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11353, 6, 47),
       (11354, 7, 29),
       (11355, 8, 31),
       (11356, 9, 35),
       (11357, 10, 21),
       (11358, 11, 52),
       (11359, 12, 20),
       (11360, 13, 53),
       (11361, 14, 59),
       (11362, 15, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11363, 16, 32),
       (11364, 17, 18),
       (11365, 18, 47),
       (11366, 1, 58),
       (11367, 2, 21),
       (11368, 3, 20),
       (11369, 4, 48),
       (11370, 5, 26),
       (11371, 6, 37),
       (11372, 7, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11373, 8, 45),
       (11374, 9, 36),
       (11375, 10, 23),
       (11376, 11, 40),
       (11415, 19, 12),
       (11377, 12, 38),
       (11378, 13, 23),
       (11379, 14, 27),
       (11380, 15, 21),
       (11381, 16, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11382, 17, 16),
       (11383, 18, 38),
       (11384, 19, 27),
       (11385, 20, 37),
       (11386, 21, 33),
       (11387, 22, 15),
       (11388, 23, 24),
       (11389, 24, 28),
       (11390, 25, 28),
       (11391, 26, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11392, 27, 29),
       (11393, 28, 15),
       (11394, 29, 45),
       (11395, 30, 11),
       (11396, 31, 26),
       (11397, 1, 17),
       (11398, 2, 36),
       (11399, 3, 19),
       (11400, 4, 32),
       (11401, 5, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11402, 6, 33),
       (11403, 7, 31),
       (11404, 8, 32),
       (11405, 9, 35),
       (11406, 10, 56),
       (11407, 11, 32),
       (11408, 12, 25),
       (11409, 13, 17),
       (11410, 14, 37),
       (11411, 15, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11412, 16, 55),
       (11413, 17, 19),
       (11414, 18, 41),
       (11416, 1, 37),
       (11417, 2, 14),
       (11418, 3, 20),
       (11419, 4, 40),
       (11420, 5, 13),
       (11421, 6, 9),
       (11422, 7, 8)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11423, 8, 7),
       (11424, 9, 7),
       (11425, 10, 16),
       (11426, 11, 19),
       (11427, 12, 22),
       (11428, 13, 20),
       (11429, 14, 35),
       (11430, 15, 23),
       (11431, 16, 35),
       (11432, 17, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11433, 18, 27),
       (11434, 19, 11),
       (11435, 20, 22),
       (11436, 21, 33),
       (11437, 22, 26),
       (11438, 23, 37),
       (11439, 1, 29),
       (11440, 2, 28),
       (11441, 3, 29),
       (11442, 4, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11443, 5, 45),
       (11444, 6, 17),
       (11445, 7, 48),
       (11446, 8, 22),
       (11447, 9, 44),
       (11448, 10, 32),
       (11449, 11, 31),
       (11450, 12, 29),
       (11451, 13, 57),
       (11452, 14, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11453, 15, 39),
       (11454, 16, 23),
       (11455, 1, 14),
       (11456, 2, 28),
       (11457, 3, 40),
       (11458, 4, 25),
       (11459, 5, 33),
       (11460, 6, 22),
       (11461, 7, 32),
       (11462, 8, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11463, 9, 56),
       (11464, 10, 32),
       (11465, 11, 54),
       (11466, 12, 43),
       (11467, 13, 22),
       (11468, 14, 26),
       (11469, 15, 31),
       (11470, 16, 16),
       (11471, 17, 24),
       (11472, 18, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11473, 19, 29),
       (11474, 20, 19),
       (11475, 21, 20),
       (11476, 22, 24),
       (11477, 1, 33),
       (11478, 2, 17),
       (11479, 3, 22),
       (11480, 4, 20),
       (11481, 5, 26),
       (11482, 6, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11483, 7, 52),
       (11484, 8, 39),
       (11485, 9, 26),
       (11486, 10, 22),
       (11487, 11, 60),
       (11488, 12, 15),
       (11489, 13, 45),
       (11490, 14, 31),
       (11491, 15, 20),
       (11493, 2, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11494, 3, 20),
       (11495, 4, 22),
       (11496, 5, 31),
       (11497, 6, 22),
       (11498, 7, 18),
       (11499, 8, 60),
       (11500, 9, 43),
       (11501, 10, 21),
       (11502, 11, 23),
       (11503, 12, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11504, 13, 25),
       (11505, 14, 19),
       (11506, 15, 36),
       (11507, 16, 43),
       (11508, 17, 22),
       (11509, 18, 27),
       (11511, 1, 41),
       (11512, 2, 36),
       (11513, 3, 42),
       (11514, 4, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11515, 5, 21),
       (11516, 6, 31),
       (11517, 7, 49),
       (11518, 8, 30),
       (11519, 9, 41),
       (11520, 10, 38),
       (11521, 11, 24),
       (11522, 12, 35),
       (11523, 13, 18),
       (11524, 14, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11525, 1, 14),
       (11526, 2, 32),
       (11527, 3, 23),
       (11528, 4, 21),
       (11802, 10, 26),
       (11529, 5, 24),
       (11530, 6, 26),
       (11531, 7, 31),
       (11532, 8, 35),
       (11533, 9, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11534, 10, 27),
       (11535, 11, 33),
       (11536, 12, 16),
       (11537, 13, 21),
       (11538, 14, 32),
       (11539, 15, 16),
       (11540, 16, 26),
       (11541, 17, 21),
       (11542, 18, 18),
       (11543, 19, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11544, 1, 15),
       (11545, 2, 41),
       (11581, 4, 34),
       (11546, 3, 44),
       (11547, 4, 19),
       (11548, 5, 45),
       (11549, 6, 19),
       (11550, 7, 52),
       (11551, 8, 18),
       (11552, 9, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11553, 10, 28),
       (11554, 11, 26),
       (11555, 12, 43),
       (11556, 13, 15),
       (11557, 14, 43),
       (11558, 15, 28),
       (11559, 16, 35),
       (11560, 17, 24),
       (11561, 18, 33),
       (11562, 19, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11563, 20, 23),
       (11564, 21, 37),
       (11565, 22, 24),
       (12035, 7, 12),
       (11566, 23, 30),
       (11567, 24, 22),
       (11568, 25, 28),
       (11569, 26, 30),
       (11570, 27, 26),
       (11571, 28, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11572, 29, 37),
       (11573, 30, 27),
       (11574, 31, 47),
       (11575, 32, 28),
       (11576, 33, 47),
       (11577, 34, 37),
       (11578, 1, 15),
       (11579, 2, 40),
       (11580, 3, 29),
       (11583, 6, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11584, 7, 33),
       (11585, 8, 36),
       (11586, 9, 21),
       (11587, 10, 57),
       (11588, 11, 50),
       (11589, 1, 30),
       (11590, 2, 34),
       (11591, 3, 19),
       (11592, 4, 24),
       (11593, 5, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11594, 6, 45),
       (11595, 7, 30),
       (11596, 8, 16),
       (11597, 9, 42),
       (11598, 10, 39),
       (11599, 11, 22),
       (11600, 12, 34),
       (11601, 13, 16),
       (11602, 14, 38),
       (11603, 15, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11604, 16, 33),
       (11605, 17, 43),
       (11606, 18, 26),
       (11607, 19, 31),
       (11608, 20, 51),
       (11609, 21, 43),
       (11610, 22, 33),
       (11611, 23, 40),
       (11612, 24, 33),
       (11613, 25, 53)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11614, 26, 34),
       (11615, 27, 34),
       (11616, 28, 17),
       (11617, 29, 25),
       (11618, 30, 16),
       (11619, 31, 38),
       (11620, 32, 27),
       (11621, 33, 24),
       (11622, 34, 36),
       (11623, 35, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11624, 36, 22),
       (11625, 37, 40),
       (11626, 1, 26),
       (11627, 2, 30),
       (11628, 3, 35),
       (11629, 4, 33),
       (11630, 5, 20),
       (11631, 6, 39),
       (11632, 7, 35),
       (11633, 8, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11634, 9, 34),
       (11635, 10, 35),
       (11636, 11, 25),
       (11637, 12, 43),
       (11638, 13, 48),
       (11639, 14, 21),
       (11640, 15, 25),
       (11641, 16, 21),
       (11642, 17, 48),
       (11643, 18, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11644, 19, 46),
       (11645, 20, 43),
       (11646, 1, 43),
       (11647, 2, 31),
       (11648, 3, 21),
       (11649, 4, 33),
       (11681, 3, 14),
       (11650, 5, 33),
       (11651, 6, 51),
       (11652, 7, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11653, 8, 37),
       (11654, 9, 56),
       (11655, 10, 27),
       (11656, 11, 66),
       (11657, 12, 20),
       (11658, 1, 48),
       (11659, 2, 31),
       (11660, 3, 37),
       (11661, 4, 33),
       (11662, 5, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11663, 6, 38),
       (11664, 7, 43),
       (11665, 8, 50),
       (11666, 9, 30),
       (11667, 10, 41),
       (11668, 11, 38),
       (11669, 12, 25),
       (11670, 13, 58),
       (11671, 14, 50),
       (11672, 15, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11673, 16, 22),
       (11674, 17, 34),
       (11675, 18, 55),
       (11676, 19, 24),
       (11677, 20, 56),
       (11678, 21, 22),
       (11679, 1, 28),
       (11680, 2, 20),
       (11682, 4, 18),
       (11683, 5, 51)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11684, 6, 51),
       (11685, 7, 33),
       (11686, 8, 22),
       (11687, 9, 29),
       (11688, 10, 24),
       (11689, 11, 69),
       (11690, 12, 48),
       (11691, 13, 29),
       (11692, 14, 61),
       (11693, 15, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11694, 16, 26),
       (11695, 17, 24),
       (11696, 18, 31),
       (11697, 19, 24),
       (11698, 20, 50),
       (11699, 21, 25),
       (11700, 22, 34),
       (11933, 24, 16),
       (11701, 23, 53),
       (11702, 24, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11703, 25, 59),
       (11704, 26, 24),
       (11705, 27, 43),
       (11706, 1, 31),
       (11707, 2, 19),
       (11708, 3, 25),
       (11709, 4, 54),
       (11710, 5, 57),
       (11711, 6, 20),
       (11712, 7, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11713, 8, 31),
       (11714, 9, 43),
       (11715, 10, 36),
       (11716, 11, 26),
       (11717, 12, 40),
       (11718, 13, 42),
       (11719, 14, 46),
       (11720, 15, 42),
       (11721, 16, 59),
       (11722, 17, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11723, 18, 52),
       (11724, 19, 37),
       (11725, 20, 31),
       (11726, 21, 28),
       (11727, 22, 18),
       (11728, 23, 46),
       (11729, 24, 39),
       (11730, 25, 24),
       (11731, 26, 27),
       (11997, 3, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11732, 27, 37),
       (11733, 28, 18),
       (11734, 1, 25),
       (11735, 2, 17),
       (11736, 3, 29),
       (11737, 4, 22),
       (11738, 5, 33),
       (11739, 6, 40),
       (11740, 7, 20),
       (11741, 8, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11742, 9, 26),
       (11743, 10, 44),
       (11744, 11, 43),
       (11745, 12, 22),
       (11746, 13, 30),
       (11747, 14, 26),
       (11748, 15, 42),
       (11749, 16, 39),
       (11750, 17, 20),
       (11751, 18, 55)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11752, 19, 44),
       (11753, 20, 41),
       (11754, 21, 49),
       (11755, 22, 21),
       (11756, 23, 39),
       (11757, 1, 31),
       (11758, 2, 37),
       (11759, 3, 20),
       (11760, 4, 20),
       (11761, 5, 61)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11762, 6, 14),
       (11763, 7, 30),
       (11764, 8, 19),
       (11765, 9, 24),
       (11766, 1, 35),
       (11767, 2, 20),
       (11768, 3, 36),
       (11769, 4, 20),
       (11770, 5, 54),
       (11771, 6, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11772, 7, 29),
       (11773, 8, 33),
       (11774, 9, 61),
       (11775, 10, 35),
       (11776, 11, 27),
       (11777, 12, 42),
       (11875, 20, 23),
       (11778, 13, 47),
       (11779, 14, 18),
       (11780, 15, 71)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11781, 16, 16),
       (11782, 17, 14),
       (11783, 18, 48),
       (11784, 19, 24),
       (11785, 20, 17),
       (11786, 21, 38),
       (11787, 22, 19),
       (11788, 23, 47),
       (11789, 24, 43),
       (11790, 25, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11791, 26, 28),
       (11792, 27, 38),
       (11793, 1, 33),
       (11794, 2, 22),
       (11795, 3, 24),
       (11796, 4, 21),
       (11797, 5, 33),
       (11798, 6, 38),
       (11799, 7, 34),
       (11800, 8, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11801, 9, 24),
       (11803, 11, 30),
       (11804, 12, 54),
       (11805, 13, 19),
       (11806, 14, 19),
       (11807, 15, 30),
       (11808, 16, 54),
       (11809, 17, 52),
       (11810, 18, 43),
       (11811, 19, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11812, 20, 22),
       (11813, 21, 47),
       (11814, 22, 42),
       (11815, 23, 25),
       (11816, 24, 42),
       (11817, 25, 44),
       (11818, 26, 16),
       (11819, 27, 36),
       (11820, 28, 23),
       (11821, 29, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11822, 30, 39),
       (11823, 31, 47),
       (11824, 32, 33),
       (11825, 33, 13),
       (11826, 34, 51),
       (11827, 35, 37),
       (11828, 36, 24),
       (11829, 1, 38),
       (11830, 2, 24),
       (11831, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11832, 4, 17),
       (11833, 5, 50),
       (11834, 6, 64),
       (11835, 7, 32),
       (11836, 8, 40),
       (11837, 9, 51),
       (11838, 10, 28),
       (11839, 11, 17),
       (11840, 12, 30),
       (11841, 13, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11842, 14, 29),
       (11843, 15, 34),
       (11844, 16, 34),
       (11845, 17, 35),
       (11846, 18, 43),
       (11847, 19, 26),
       (11848, 20, 10),
       (11849, 21, 39),
       (11850, 22, 44),
       (11851, 23, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11852, 24, 42),
       (11853, 25, 39),
       (11854, 26, 28),
       (11855, 27, 28),
       (11856, 1, 72),
       (11857, 2, 51),
       (11858, 3, 51),
       (11859, 4, 30),
       (11860, 5, 45),
       (11861, 6, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11862, 7, 21),
       (11863, 8, 19),
       (11864, 9, 12),
       (11865, 10, 53),
       (11866, 11, 16),
       (11867, 12, 29),
       (11868, 13, 48),
       (11869, 14, 33),
       (11870, 15, 42),
       (11871, 16, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11872, 17, 30),
       (11873, 18, 36),
       (11874, 19, 52),
       (11876, 21, 37),
       (11877, 1, 29),
       (11878, 2, 18),
       (11879, 3, 27),
       (11880, 4, 37),
       (11881, 5, 42),
       (11882, 6, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11883, 7, 36),
       (11884, 8, 36),
       (11885, 9, 38),
       (11886, 10, 18),
       (11887, 11, 33),
       (11888, 12, 33),
       (11889, 13, 39),
       (11890, 14, 38),
       (11891, 15, 56),
       (11892, 16, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11893, 17, 52),
       (11894, 18, 35),
       (11895, 19, 27),
       (11896, 20, 21),
       (11897, 21, 64),
       (11898, 22, 32),
       (12031, 3, 12),
       (11899, 23, 30),
       (11900, 24, 25),
       (11901, 25, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11902, 26, 33),
       (11903, 27, 36),
       (11904, 28, 25),
       (11905, 29, 22),
       (11906, 30, 35),
       (11907, 31, 44),
       (11908, 32, 38),
       (11909, 33, 44),
       (11910, 1, 20),
       (11911, 2, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11912, 3, 36),
       (11913, 4, 21),
       (11914, 5, 20),
       (11915, 6, 54),
       (11916, 7, 54),
       (11917, 8, 48),
       (11918, 9, 28),
       (11919, 10, 15),
       (11920, 11, 31),
       (11921, 12, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11922, 13, 33),
       (11923, 14, 59),
       (11924, 15, 43),
       (11925, 16, 29),
       (11926, 17, 16),
       (11927, 18, 46),
       (11928, 19, 48),
       (11929, 20, 23),
       (11930, 21, 20),
       (11931, 22, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11932, 23, 23),
       (12032, 4, 10),
       (11934, 25, 30),
       (11935, 1, 20),
       (11936, 2, 34),
       (11937, 3, 52),
       (11938, 4, 59),
       (11939, 5, 17),
       (11940, 6, 22),
       (11941, 7, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11942, 8, 48),
       (11943, 9, 57),
       (11944, 10, 38),
       (11945, 11, 34),
       (11946, 12, 51),
       (11947, 13, 33),
       (11948, 14, 30),
       (11949, 15, 30),
       (11950, 16, 28),
       (11951, 17, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11952, 18, 24),
       (11953, 19, 21),
       (11954, 20, 29),
       (11955, 21, 62),
       (11956, 22, 48),
       (11957, 23, 22),
       (11958, 24, 36),
       (11959, 25, 42),
       (11960, 26, 35),
       (11961, 27, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11962, 28, 47),
       (11963, 29, 15),
       (11964, 30, 59),
       (12033, 5, 10),
       (12036, 8, 10),
       (11965, 31, 51),
       (11966, 32, 33),
       (11967, 33, 50),
       (11968, 1, 23),
       (11969, 2, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11970, 3, 53),
       (11971, 4, 29),
       (12005, 11, 20),
       (11972, 5, 38),
       (11973, 6, 23),
       (11974, 7, 45),
       (11975, 8, 50),
       (11976, 9, 36),
       (11977, 10, 25),
       (11978, 11, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11979, 12, 46),
       (11980, 13, 37),
       (11981, 14, 44),
       (11982, 15, 51),
       (11983, 16, 33),
       (11984, 17, 23),
       (11985, 18, 53),
       (11986, 19, 14),
       (11987, 20, 29),
       (11988, 21, 57)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (11989, 22, 41),
       (11990, 23, 23),
       (11991, 24, 45),
       (11992, 25, 39),
       (11993, 26, 24),
       (11994, 27, 21),
       (11995, 1, 24),
       (11996, 2, 20),
       (11998, 4, 32),
       (11999, 5, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12000, 6, 19),
       (12001, 7, 22),
       (12002, 8, 44),
       (12003, 9, 33),
       (12004, 10, 35),
       (12062, 34, 10),
       (12006, 12, 29),
       (12007, 13, 32),
       (12008, 14, 34),
       (12009, 15, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12010, 16, 31),
       (12011, 17, 46),
       (12012, 18, 37),
       (12013, 19, 30),
       (12014, 20, 31),
       (12015, 21, 35),
       (12016, 22, 51),
       (12017, 23, 57),
       (12018, 1, 51),
       (12019, 2, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12020, 3, 43),
       (12021, 4, 43),
       (12022, 5, 39),
       (12023, 6, 33),
       (12024, 7, 31),
       (12025, 8, 26),
       (12026, 9, 21),
       (12027, 10, 20),
       (12028, 11, 33),
       (12029, 1, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12030, 2, 25),
       (12047, 19, 10),
       (12048, 20, 8),
       (12049, 21, 11),
       (12050, 22, 8),
       (12051, 23, 10),
       (12052, 24, 8),
       (12053, 25, 15),
       (12054, 26, 12),
       (12055, 27, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12056, 28, 13),
       (12057, 29, 8),
       (12058, 30, 10),
       (12059, 31, 14),
       (12060, 32, 9),
       (12061, 33, 13),
       (12064, 36, 17),
       (12065, 37, 10),
       (12066, 38, 12),
       (12067, 39, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12068, 40, 17),
       (12069, 41, 12),
       (12070, 42, 37),
       (12071, 43, 15),
       (12072, 44, 13),
       (12073, 45, 13),
       (12074, 46, 13),
       (12075, 47, 13),
       (12076, 48, 13),
       (12077, 49, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12078, 50, 13),
       (12079, 51, 13),
       (12080, 52, 13),
       (12081, 53, 13),
       (12082, 54, 9),
       (12083, 55, 19),
       (12084, 56, 13),
       (12085, 57, 18),
       (12086, 58, 17),
       (12087, 59, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12088, 60, 18),
       (12089, 61, 37),
       (12090, 62, 27),
       (12091, 63, 28),
       (12092, 64, 14),
       (12093, 65, 30),
       (12094, 66, 16),
       (12095, 67, 16),
       (12096, 68, 35),
       (12097, 69, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12098, 70, 31),
       (12099, 1, 27),
       (12100, 2, 50),
       (12133, 22, 20),
       (12101, 3, 35),
       (12102, 4, 31),
       (12103, 5, 37),
       (12104, 6, 29),
       (12105, 7, 50),
       (12139, 4, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12140, 5, 38),
       (12106, 8, 77),
       (12107, 9, 43),
       (12108, 10, 42),
       (12109, 11, 50),
       (12110, 12, 44),
       (12111, 13, 39),
       (12112, 1, 26),
       (12113, 2, 50),
       (12114, 3, 55)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12115, 4, 20),
       (12116, 5, 27),
       (12117, 6, 24),
       (12118, 7, 41),
       (12119, 8, 20),
       (12120, 9, 35),
       (12121, 10, 35),
       (12122, 11, 25),
       (12123, 12, 39),
       (12124, 13, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12125, 14, 31),
       (12126, 15, 60),
       (12127, 16, 26),
       (12128, 17, 42),
       (12129, 18, 14),
       (12130, 19, 33),
       (12131, 20, 28),
       (12132, 21, 27),
       (12134, 23, 38),
       (12135, 24, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12136, 1, 35),
       (12137, 2, 37),
       (12138, 3, 39),
       (12141, 6, 31),
       (12142, 7, 17),
       (12143, 8, 47),
       (12144, 9, 25),
       (12145, 10, 26),
       (12146, 11, 40),
       (12147, 12, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12148, 13, 23),
       (12149, 14, 58),
       (12150, 15, 30),
       (12151, 16, 37),
       (12152, 17, 59),
       (12153, 1, 26),
       (12154, 2, 27),
       (12155, 3, 52),
       (12156, 4, 25),
       (12157, 5, 57)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12158, 6, 25),
       (12159, 7, 30),
       (12160, 8, 51),
       (12161, 9, 50),
       (12162, 10, 26),
       (12163, 11, 41),
       (12164, 12, 50),
       (12165, 13, 25),
       (12202, 28, 49),
       (12166, 14, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12167, 15, 27),
       (12168, 16, 30),
       (12169, 17, 41),
       (12170, 18, 33),
       (12171, 19, 18),
       (12172, 20, 37),
       (12173, 21, 41),
       (12174, 22, 46),
       (12175, 1, 26),
       (12176, 2, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12177, 3, 13),
       (12178, 4, 13),
       (12179, 5, 20),
       (12180, 6, 44),
       (12181, 7, 37),
       (12182, 8, 19),
       (12183, 9, 40),
       (12184, 10, 25),
       (12185, 11, 37),
       (12186, 12, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12187, 13, 37),
       (12188, 14, 31),
       (12189, 15, 27),
       (12190, 16, 40),
       (12191, 17, 39),
       (12192, 18, 32),
       (12193, 19, 24),
       (12194, 20, 29),
       (12195, 21, 46),
       (12196, 22, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12197, 23, 37),
       (12198, 24, 37),
       (12199, 25, 47),
       (12200, 26, 42),
       (12201, 27, 32),
       (12274, 21, 16),
       (12203, 1, 31),
       (12204, 2, 19),
       (12205, 3, 26),
       (12206, 4, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12207, 5, 16),
       (12208, 6, 17),
       (12209, 7, 17),
       (12210, 8, 17),
       (12211, 9, 19),
       (12212, 10, 19),
       (12213, 11, 19),
       (12214, 12, 20),
       (12215, 13, 25),
       (12216, 14, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12217, 15, 36),
       (12218, 16, 39),
       (12219, 17, 46),
       (12220, 18, 41),
       (12221, 19, 18),
       (12222, 20, 30),
       (12223, 21, 38),
       (12224, 22, 60),
       (12225, 23, 16),
       (12226, 24, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12227, 25, 38),
       (12228, 26, 24),
       (12229, 27, 20),
       (12230, 28, 33),
       (12231, 29, 38),
       (12232, 30, 30),
       (12233, 31, 47),
       (12234, 32, 11),
       (12235, 33, 59),
       (12236, 34, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12237, 35, 48),
       (12238, 36, 30),
       (12239, 1, 58),
       (12240, 2, 42),
       (12241, 3, 30),
       (12242, 4, 35),
       (12243, 5, 35),
       (12244, 6, 38),
       (12279, 26, 17),
       (12245, 7, 55)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12246, 8, 48),
       (12247, 9, 59),
       (12248, 10, 18),
       (12249, 11, 48),
       (12250, 12, 49),
       (12251, 13, 38),
       (12252, 14, 41),
       (12253, 15, 41),
       (12254, 1, 43),
       (12255, 2, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12256, 3, 51),
       (12257, 4, 20),
       (12258, 5, 29),
       (12259, 6, 47),
       (12260, 7, 24),
       (12261, 8, 34),
       (12262, 9, 54),
       (12263, 10, 25),
       (12264, 11, 30),
       (12265, 12, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12266, 13, 40),
       (12267, 14, 57),
       (12268, 15, 26),
       (12269, 16, 49),
       (12270, 17, 23),
       (12271, 18, 36),
       (12272, 19, 26),
       (12273, 20, 10),
       (12275, 22, 14),
       (12276, 23, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12277, 24, 15),
       (12278, 25, 22),
       (12280, 27, 16),
       (12281, 28, 11),
       (12282, 29, 15),
       (12283, 30, 19),
       (12284, 31, 12),
       (12285, 32, 4),
       (12286, 33, 13),
       (12287, 34, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12289, 36, 4),
       (12290, 37, 5),
       (12291, 38, 6),
       (12292, 39, 7),
       (12293, 40, 4),
       (12294, 41, 5),
       (12295, 42, 4),
       (12296, 43, 14),
       (12297, 44, 18),
       (12298, 1, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12299, 2, 34),
       (12300, 3, 40),
       (12301, 4, 31),
       (12302, 5, 31),
       (12303, 6, 64),
       (12304, 7, 26),
       (12305, 8, 25),
       (12306, 9, 50),
       (12307, 10, 22),
       (12308, 11, 57)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12309, 1, 45),
       (12310, 2, 31),
       (12311, 3, 39),
       (12312, 4, 21),
       (12313, 5, 41),
       (12314, 6, 39),
       (12315, 7, 35),
       (12316, 8, 64),
       (12317, 9, 30),
       (12318, 10, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12319, 11, 11),
       (12320, 12, 44),
       (12321, 13, 40),
       (14218, 13, 15),
       (12322, 14, 29),
       (12323, 15, 28),
       (12324, 16, 43),
       (12325, 17, 44),
       (12326, 18, 47),
       (12327, 19, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12328, 20, 36),
       (12329, 1, 43),
       (12330, 2, 20),
       (12331, 3, 29),
       (12332, 4, 39),
       (12333, 5, 21),
       (12334, 6, 36),
       (12335, 7, 31),
       (12336, 8, 30),
       (12337, 9, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12338, 10, 25),
       (12339, 11, 22),
       (12340, 12, 23),
       (12341, 13, 38),
       (12342, 14, 35),
       (12343, 15, 63),
       (12344, 16, 42),
       (12345, 17, 27),
       (12346, 18, 19),
       (12347, 19, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12348, 20, 29),
       (12349, 21, 32),
       (12350, 22, 12),
       (12351, 23, 27),
       (12352, 24, 26),
       (12353, 25, 43),
       (12354, 26, 25),
       (12355, 27, 22),
       (12356, 28, 15),
       (12393, 10, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12357, 29, 29),
       (12358, 30, 30),
       (12359, 31, 32),
       (12360, 32, 18),
       (12361, 1, 27),
       (12362, 2, 50),
       (12363, 3, 29),
       (12364, 4, 30),
       (12365, 5, 27),
       (12366, 6, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12367, 7, 44),
       (12368, 8, 19),
       (12369, 9, 21),
       (12370, 10, 28),
       (12371, 11, 28),
       (12372, 12, 29),
       (12373, 13, 34),
       (12374, 14, 52),
       (12375, 15, 38),
       (12376, 16, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12377, 17, 31),
       (12378, 18, 25),
       (12379, 19, 35),
       (12380, 20, 23),
       (12381, 21, 24),
       (12382, 22, 37),
       (12383, 23, 35),
       (12384, 1, 19),
       (12385, 2, 24),
       (12386, 3, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12387, 4, 21),
       (12388, 5, 59),
       (12389, 6, 14),
       (12390, 7, 34),
       (12391, 8, 46),
       (12944, 13, 15),
       (12392, 9, 32),
       (12394, 11, 41),
       (12395, 12, 41),
       (12396, 13, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12397, 14, 49),
       (12398, 15, 46),
       (12399, 16, 26),
       (12400, 17, 33),
       (12401, 18, 53),
       (12402, 19, 17),
       (12403, 1, 55),
       (12404, 2, 31),
       (12405, 3, 34),
       (12406, 4, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12407, 5, 21),
       (12408, 6, 40),
       (12409, 7, 42),
       (12410, 8, 25),
       (12411, 9, 31),
       (12412, 10, 62),
       (12413, 11, 34),
       (12414, 12, 25),
       (12415, 13, 32),
       (12416, 14, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12417, 15, 21),
       (12418, 16, 41),
       (12419, 17, 22),
       (12420, 18, 39),
       (12421, 19, 25),
       (12422, 1, 29),
       (12423, 2, 28),
       (12424, 3, 56),
       (12425, 4, 20),
       (12942, 11, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12483, 62, 18),
       (12426, 5, 47),
       (12427, 6, 44),
       (12428, 7, 26),
       (12429, 8, 13),
       (12430, 9, 10),
       (12431, 10, 10),
       (12432, 11, 20),
       (12433, 12, 12),
       (12434, 13, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12435, 14, 9),
       (12436, 15, 10),
       (12437, 16, 10),
       (12438, 17, 12),
       (12439, 18, 10),
       (12440, 19, 10),
       (12441, 20, 10),
       (12442, 21, 10),
       (12443, 22, 10),
       (12444, 23, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12445, 24, 9),
       (12446, 25, 8),
       (12447, 26, 13),
       (12448, 27, 10),
       (12449, 28, 9),
       (12450, 29, 14),
       (12451, 30, 12),
       (12452, 31, 11),
       (12453, 32, 13),
       (12454, 33, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12455, 34, 14),
       (12456, 35, 9),
       (12457, 36, 10),
       (12458, 37, 13),
       (12459, 38, 11),
       (12460, 39, 17),
       (12461, 40, 10),
       (12462, 41, 12),
       (12463, 42, 9),
       (12464, 43, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12465, 44, 12),
       (12466, 45, 32),
       (12467, 46, 15),
       (12468, 47, 13),
       (12469, 48, 13),
       (12470, 49, 13),
       (12471, 50, 13),
       (12472, 51, 13),
       (12473, 52, 13),
       (12474, 53, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12475, 54, 13),
       (12476, 55, 13),
       (12477, 56, 9),
       (12478, 57, 19),
       (12479, 58, 13),
       (12480, 59, 18),
       (12481, 60, 17),
       (12482, 61, 33),
       (14817, 9, 15),
       (12683, 11, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12484, 63, 34),
       (12485, 64, 27),
       (12486, 65, 27),
       (12487, 66, 14),
       (12488, 67, 33),
       (12489, 68, 16),
       (12490, 69, 17),
       (12491, 70, 33),
       (12492, 71, 30),
       (12493, 72, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12494, 73, 43),
       (12495, 1, 43),
       (12496, 2, 30),
       (12497, 3, 50),
       (12498, 4, 54),
       (12499, 5, 30),
       (12500, 6, 36),
       (12501, 7, 34),
       (12502, 8, 24),
       (12503, 9, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12504, 10, 46),
       (12505, 11, 21),
       (12506, 12, 33),
       (12507, 13, 37),
       (12508, 14, 31),
       (12509, 15, 48),
       (12510, 16, 53),
       (12511, 17, 49),
       (12512, 18, 43),
       (12513, 1, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12514, 2, 23),
       (12591, 2, 16),
       (12515, 3, 37),
       (12516, 4, 30),
       (12517, 5, 40),
       (12518, 6, 47),
       (12519, 7, 27),
       (12520, 8, 49),
       (12521, 9, 19),
       (12522, 10, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12523, 11, 39),
       (12524, 12, 31),
       (12525, 13, 26),
       (12526, 14, 22),
       (12527, 15, 42),
       (12528, 16, 18),
       (12529, 17, 54),
       (12530, 18, 28),
       (12531, 19, 48),
       (12532, 20, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12533, 21, 25),
       (12534, 22, 38),
       (12535, 23, 33),
       (12536, 24, 46),
       (12537, 25, 46),
       (12538, 26, 35),
       (12539, 27, 50),
       (12540, 28, 53),
       (12541, 29, 51),
       (12542, 30, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12543, 31, 26),
       (12590, 1, 37),
       (12640, 15, 7),
       (12544, 32, 66),
       (12545, 33, 22),
       (12546, 34, 29),
       (12943, 12, 16),
       (12547, 35, 38),
       (12548, 36, 33),
       (12549, 37, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12550, 38, 25),
       (12551, 1, 15),
       (12552, 2, 4),
       (12553, 3, 4),
       (12554, 4, 4),
       (12555, 5, 4),
       (12556, 6, 4),
       (12557, 7, 4),
       (12558, 8, 8),
       (12559, 9, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12560, 10, 9),
       (12561, 11, 4),
       (12562, 12, 4),
       (12563, 13, 4),
       (12564, 14, 12),
       (12565, 15, 4),
       (12566, 16, 4),
       (12567, 17, 4),
       (12568, 18, 4),
       (12569, 19, 4)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12570, 20, 4),
       (12571, 21, 4),
       (12572, 22, 4),
       (12573, 23, 4),
       (12574, 24, 4),
       (12575, 25, 4),
       (12576, 26, 5),
       (12577, 27, 4),
       (12578, 28, 49),
       (12579, 29, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12580, 30, 22),
       (12581, 31, 48),
       (12582, 32, 27),
       (12583, 33, 53),
       (12584, 34, 52),
       (12585, 35, 30),
       (12586, 36, 48),
       (12587, 37, 65),
       (12588, 38, 42),
       (12589, 39, 58)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12592, 3, 46),
       (12593, 4, 48),
       (12684, 12, 20),
       (12594, 5, 33),
       (12595, 6, 18),
       (12596, 7, 37),
       (12597, 8, 11),
       (12598, 9, 21),
       (12599, 10, 10),
       (12600, 11, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12601, 12, 42),
       (12602, 13, 31),
       (12603, 14, 22),
       (12604, 15, 22),
       (12605, 16, 24),
       (12606, 17, 46),
       (12607, 18, 14),
       (12608, 19, 21),
       (12609, 20, 23),
       (12610, 21, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12611, 22, 42),
       (12612, 23, 22),
       (12613, 24, 28),
       (12614, 25, 37),
       (12615, 26, 10),
       (12616, 27, 13),
       (12617, 28, 12),
       (12618, 29, 11),
       (12619, 30, 27),
       (12620, 31, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12621, 32, 5),
       (12623, 34, 4),
       (12624, 35, 8),
       (12625, 36, 13),
       (12626, 1, 23),
       (12627, 2, 4),
       (12628, 3, 4),
       (12629, 4, 4),
       (12630, 5, 4),
       (12631, 6, 5)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12632, 7, 21),
       (12633, 8, 20),
       (12634, 9, 15),
       (12635, 10, 13),
       (12636, 11, 9),
       (12637, 12, 19),
       (12638, 13, 7),
       (12639, 14, 7),
       (12940, 9, 18),
       (12647, 22, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12648, 23, 27),
       (12649, 24, 40),
       (12650, 25, 20),
       (12651, 26, 31),
       (12652, 27, 42),
       (12653, 28, 25),
       (12654, 29, 24),
       (12655, 30, 20),
       (12656, 31, 38),
       (12657, 32, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12658, 33, 6),
       (12659, 34, 8),
       (12660, 35, 34),
       (12661, 36, 31),
       (12662, 37, 38),
       (12663, 38, 38),
       (12664, 39, 42),
       (12665, 40, 26),
       (12666, 41, 14),
       (12667, 42, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12668, 43, 38),
       (12669, 44, 60),
       (12670, 45, 34),
       (12671, 46, 26),
       (12672, 47, 51),
       (12673, 1, 38),
       (12674, 2, 31),
       (12675, 3, 21),
       (12676, 4, 23),
       (12677, 5, 53)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12678, 6, 38),
       (12679, 7, 29),
       (12680, 8, 20),
       (12681, 9, 28),
       (12682, 10, 33),
       (12685, 13, 48),
       (12686, 14, 30),
       (12687, 15, 56),
       (12688, 16, 30),
       (12689, 17, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12690, 18, 32),
       (12691, 19, 61),
       (12692, 20, 17),
       (12693, 21, 38),
       (12694, 22, 43),
       (12695, 23, 20),
       (12696, 24, 27),
       (12697, 25, 45),
       (12698, 26, 45),
       (12699, 27, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12700, 28, 29),
       (12701, 29, 22),
       (12702, 30, 23),
       (12703, 31, 21),
       (12704, 1, 29),
       (12705, 2, 22),
       (12706, 3, 35),
       (12707, 4, 25),
       (12708, 5, 40),
       (12709, 6, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12710, 7, 29),
       (12711, 8, 35),
       (12712, 9, 20),
       (12713, 10, 38),
       (12714, 11, 29),
       (12715, 12, 28),
       (12716, 13, 27),
       (12717, 14, 34),
       (12881, 11, 21),
       (12718, 15, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12719, 16, 42),
       (13469, 1, 6),
       (12720, 17, 43),
       (12721, 18, 37),
       (12722, 19, 57),
       (12723, 20, 36),
       (12724, 21, 20),
       (12725, 22, 46),
       (12726, 1, 26),
       (12727, 2, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12728, 3, 56),
       (12729, 4, 24),
       (12730, 5, 28),
       (12731, 6, 30),
       (12732, 7, 42),
       (12733, 8, 50),
       (12734, 9, 58),
       (12735, 10, 23),
       (12736, 11, 25),
       (12737, 12, 66)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12738, 13, 33),
       (12739, 14, 52),
       (12740, 15, 60),
       (12741, 16, 28),
       (12742, 17, 41),
       (12743, 18, 37),
       (12744, 19, 20),
       (12745, 20, 33),
       (12746, 21, 39),
       (12747, 22, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12748, 23, 36),
       (15178, 64, 13),
       (12749, 1, 30),
       (12750, 2, 38),
       (12751, 3, 23),
       (12941, 10, 22),
       (12752, 4, 40),
       (12753, 5, 20),
       (12754, 6, 43),
       (12755, 7, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12756, 8, 55),
       (12757, 9, 45),
       (12758, 10, 24),
       (12759, 11, 26),
       (12760, 12, 81),
       (12761, 13, 59),
       (12762, 14, 30),
       (12763, 15, 38),
       (12764, 1, 37),
       (12765, 2, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12766, 3, 34),
       (12767, 4, 39),
       (12768, 5, 36),
       (12769, 6, 21),
       (12770, 7, 36),
       (12771, 8, 59),
       (12772, 9, 11),
       (12773, 10, 14),
       (12774, 11, 78),
       (12775, 12, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12776, 13, 27),
       (12777, 14, 49),
       (12778, 15, 9),
       (12779, 16, 59),
       (12780, 17, 16),
       (15665, 13, 12),
       (12781, 1, 53),
       (12782, 2, 49),
       (12783, 3, 29),
       (12784, 4, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12785, 5, 32),
       (12786, 6, 38),
       (12787, 7, 12),
       (12788, 8, 53),
       (12789, 9, 38),
       (12790, 10, 19),
       (12791, 11, 41),
       (12792, 12, 39),
       (12793, 13, 21),
       (12794, 14, 59)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12795, 1, 28),
       (12796, 2, 36),
       (12797, 3, 32),
       (12798, 4, 40),
       (12799, 5, 23),
       (12800, 6, 43),
       (12801, 7, 16),
       (12802, 8, 31),
       (12803, 9, 66),
       (12804, 10, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12805, 11, 41),
       (12806, 12, 22),
       (12807, 13, 56),
       (12808, 14, 25),
       (12809, 1, 13),
       (12810, 2, 45),
       (12811, 3, 39),
       (12812, 4, 45),
       (12813, 5, 28),
       (12814, 6, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12815, 7, 46),
       (12816, 8, 58),
       (12817, 9, 45),
       (12818, 10, 21),
       (13936, 13, 9),
       (12819, 1, 35),
       (12820, 2, 28),
       (12821, 3, 39),
       (12822, 4, 19),
       (12823, 5, 65)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12824, 6, 28),
       (12825, 7, 40),
       (12826, 8, 46),
       (12827, 9, 88),
       (12828, 10, 40),
       (12829, 11, 58),
       (12830, 12, 25),
       (12831, 13, 38),
       (12832, 14, 39),
       (12833, 15, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12834, 16, 11),
       (12835, 17, 51),
       (12836, 1, 65),
       (12837, 2, 43),
       (12838, 3, 34),
       (12839, 4, 27),
       (12840, 5, 29),
       (12841, 6, 14),
       (12842, 7, 7),
       (12843, 8, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12844, 9, 9),
       (12845, 10, 25),
       (12846, 11, 20),
       (12882, 12, 32),
       (12847, 12, 63),
       (12848, 13, 42),
       (12849, 14, 25),
       (12850, 15, 36),
       (12851, 16, 46),
       (12852, 17, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12853, 18, 39),
       (12854, 19, 39),
       (12855, 20, 27),
       (12856, 21, 23),
       (12857, 22, 53),
       (12858, 23, 18),
       (12859, 24, 38),
       (12860, 25, 42),
       (12861, 26, 38),
       (12862, 27, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12863, 28, 42),
       (12864, 29, 24),
       (12865, 30, 27),
       (12866, 31, 43),
       (12867, 32, 18),
       (12868, 1, 18),
       (12869, 2, 43),
       (12870, 3, 36),
       (12871, 1, 31),
       (12872, 2, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12873, 3, 42),
       (12874, 4, 34),
       (12875, 5, 59),
       (12876, 6, 26),
       (12877, 7, 31),
       (12878, 8, 36),
       (12879, 9, 13),
       (12880, 10, 38),
       (12883, 13, 24),
       (12884, 14, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12885, 15, 32),
       (12886, 16, 41),
       (12887, 17, 47),
       (12888, 18, 28),
       (12889, 19, 39),
       (12890, 20, 20),
       (12891, 21, 32),
       (12892, 22, 11),
       (12893, 1, 31),
       (12894, 2, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12895, 3, 54),
       (12896, 4, 22),
       (12897, 5, 22),
       (12898, 6, 16),
       (12899, 7, 25),
       (12900, 8, 17),
       (12901, 9, 18),
       (12902, 10, 41),
       (12903, 11, 51),
       (12904, 12, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12905, 13, 31),
       (12906, 1, 11),
       (12908, 3, 20),
       (12909, 4, 21),
       (12910, 5, 28),
       (12911, 6, 31),
       (12912, 7, 13),
       (12913, 8, 16),
       (12914, 9, 27),
       (12915, 10, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12916, 11, 21),
       (12917, 12, 15),
       (12918, 13, 21),
       (12919, 14, 15),
       (12920, 15, 13),
       (12921, 16, 17),
       (12922, 17, 14),
       (12923, 18, 16),
       (12924, 19, 16),
       (12925, 20, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12926, 21, 18),
       (12927, 22, 13),
       (12928, 23, 19),
       (12929, 24, 16),
       (12930, 25, 20),
       (12931, 26, 17),
       (12932, 1, 8),
       (12933, 2, 19),
       (12934, 3, 13),
       (12935, 4, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12936, 5, 18),
       (12937, 6, 17),
       (12938, 7, 17),
       (12939, 8, 16),
       (12945, 14, 14),
       (12946, 15, 15),
       (12947, 16, 27),
       (12948, 17, 18),
       (12949, 18, 16),
       (12950, 19, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12951, 20, 16),
       (12952, 21, 16),
       (12953, 1, 20),
       (12954, 2, 13),
       (12955, 3, 14),
       (12956, 4, 21),
       (12957, 5, 22),
       (12958, 6, 17),
       (12959, 7, 12),
       (12960, 8, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12961, 9, 11),
       (12962, 10, 13),
       (12963, 11, 20),
       (12964, 12, 16),
       (12965, 13, 18),
       (12966, 14, 17),
       (12967, 15, 19),
       (12968, 16, 11),
       (12969, 17, 18),
       (12970, 18, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12971, 19, 17),
       (12972, 20, 18),
       (12973, 21, 21),
       (12974, 22, 19),
       (12975, 23, 25),
       (12976, 24, 21),
       (12977, 25, 20),
       (12978, 26, 22),
       (12979, 27, 19),
       (12980, 1, 6)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12981, 2, 16),
       (12982, 3, 19),
       (12983, 4, 28),
       (12984, 5, 17),
       (12985, 6, 22),
       (12986, 7, 14),
       (12987, 8, 20),
       (12988, 9, 21),
       (12989, 10, 27),
       (12990, 11, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (12993, 14, 25),
       (12994, 15, 17),
       (12995, 16, 15),
       (12996, 17, 19),
       (12997, 18, 20),
       (12998, 19, 13),
       (12999, 20, 16),
       (13000, 21, 13),
       (13001, 22, 16),
       (13002, 23, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13003, 24, 18),
       (13004, 25, 14),
       (13005, 26, 19),
       (13006, 27, 15),
       (13007, 28, 18),
       (13008, 29, 17),
       (13009, 30, 13),
       (13010, 1, 21),
       (13011, 2, 18),
       (13012, 3, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13013, 4, 31),
       (13014, 5, 19),
       (13015, 6, 15),
       (13016, 7, 16),
       (13017, 8, 24),
       (13018, 9, 21),
       (13019, 10, 17),
       (13020, 11, 26),
       (13021, 12, 16),
       (13022, 13, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13023, 14, 12),
       (13024, 15, 14),
       (13025, 16, 18),
       (13026, 17, 18),
       (13027, 18, 14),
       (13028, 19, 20),
       (13029, 20, 33),
       (13030, 21, 34),
       (13032, 2, 22),
       (13033, 3, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13034, 4, 19),
       (13035, 5, 15),
       (13036, 6, 22),
       (13037, 7, 14),
       (13038, 8, 21),
       (13039, 9, 19),
       (13040, 10, 16),
       (13041, 11, 14),
       (13042, 12, 18),
       (13043, 13, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13044, 14, 15),
       (13045, 15, 22),
       (13046, 16, 15),
       (13047, 17, 15),
       (13048, 18, 19),
       (13049, 19, 17),
       (13050, 20, 17),
       (13051, 21, 14),
       (13052, 22, 20),
       (13053, 1, 6)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13054, 2, 18),
       (13055, 3, 17),
       (13056, 4, 19),
       (13057, 5, 19),
       (13058, 6, 14),
       (13059, 7, 14),
       (13060, 8, 15),
       (13061, 9, 15),
       (13062, 10, 13),
       (13063, 11, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13064, 12, 18),
       (13065, 13, 15),
       (13066, 14, 17),
       (13067, 15, 18),
       (13068, 16, 21),
       (13069, 17, 14),
       (13070, 18, 15),
       (13071, 19, 20),
       (13072, 20, 20),
       (13074, 22, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13075, 23, 15),
       (13076, 24, 28),
       (13077, 25, 16),
       (13078, 26, 17),
       (13079, 27, 21),
       (13080, 28, 17),
       (13081, 29, 12),
       (13082, 30, 15),
       (13083, 31, 16),
       (13084, 32, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13085, 33, 15),
       (13086, 34, 17),
       (13087, 35, 16),
       (13088, 1, 25),
       (13089, 2, 17),
       (13090, 3, 27),
       (13091, 4, 12),
       (13092, 5, 16),
       (13093, 6, 12),
       (13094, 7, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13095, 8, 17),
       (13096, 9, 20),
       (13097, 10, 14),
       (13098, 11, 17),
       (13099, 12, 15),
       (13100, 13, 17),
       (13101, 14, 17),
       (13102, 15, 30),
       (13103, 16, 21),
       (13104, 17, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13105, 18, 24),
       (13106, 19, 22),
       (13107, 20, 19),
       (13108, 21, 21),
       (13109, 22, 23),
       (13110, 1, 8),
       (13111, 2, 18),
       (13112, 3, 19),
       (13113, 4, 15),
       (13114, 5, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13115, 6, 29),
       (13116, 7, 16),
       (13117, 8, 17),
       (13118, 9, 14),
       (13119, 10, 17),
       (13120, 11, 16),
       (13121, 12, 18),
       (13122, 13, 14),
       (13123, 14, 19),
       (13124, 15, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13125, 16, 17),
       (13126, 17, 20),
       (13127, 18, 23),
       (13128, 19, 19),
       (13129, 20, 28),
       (13131, 2, 14),
       (13132, 3, 23),
       (13133, 4, 30),
       (13134, 5, 23),
       (13135, 6, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13136, 7, 22),
       (13137, 8, 21),
       (13138, 9, 15),
       (13139, 10, 17),
       (13140, 11, 14),
       (13141, 12, 12),
       (13142, 13, 12),
       (13143, 14, 22),
       (13144, 15, 20),
       (13145, 16, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13146, 17, 11),
       (13147, 18, 15),
       (13148, 19, 10),
       (13149, 20, 16),
       (13150, 21, 13),
       (13151, 22, 17),
       (13152, 23, 18),
       (13153, 24, 27),
       (13154, 25, 18),
       (13155, 1, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13156, 2, 16),
       (13157, 3, 15),
       (13158, 4, 14),
       (13159, 5, 15),
       (13160, 6, 13),
       (13161, 7, 12),
       (13162, 8, 12),
       (13163, 9, 20),
       (13164, 10, 12),
       (13165, 11, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13166, 12, 14),
       (13167, 13, 18),
       (13168, 14, 17),
       (13169, 15, 18),
       (13170, 16, 16),
       (13171, 17, 13),
       (13172, 18, 16),
       (13173, 19, 21),
       (13174, 20, 17),
       (13175, 21, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13176, 22, 16),
       (13177, 23, 17),
       (13178, 24, 12),
       (13179, 25, 14),
       (13180, 26, 18),
       (13181, 27, 24),
       (13182, 28, 17),
       (13183, 1, 16),
       (13184, 2, 20),
       (13185, 3, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13186, 4, 13),
       (13187, 5, 24),
       (13188, 6, 18),
       (13189, 7, 27),
       (13190, 8, 18),
       (13191, 9, 17),
       (13192, 10, 18),
       (13193, 11, 16),
       (13194, 12, 25),
       (13195, 13, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13196, 14, 23),
       (13197, 15, 20),
       (13198, 16, 14),
       (13199, 17, 15),
       (13200, 18, 17),
       (13201, 19, 23),
       (13202, 20, 18),
       (13203, 21, 23),
       (13204, 22, 14),
       (13206, 2, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13207, 3, 16),
       (13208, 4, 12),
       (13209, 5, 15),
       (13210, 6, 16),
       (13211, 7, 17),
       (13212, 8, 16),
       (13213, 9, 16),
       (13214, 10, 18),
       (13215, 11, 18),
       (13216, 12, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13217, 13, 16),
       (13218, 14, 22),
       (13219, 15, 19),
       (13220, 16, 17),
       (13221, 17, 17),
       (13222, 18, 15),
       (13223, 19, 14),
       (13224, 20, 22),
       (13225, 21, 17),
       (13226, 22, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13227, 23, 22),
       (13228, 24, 18),
       (13229, 25, 17),
       (13230, 26, 16),
       (13231, 27, 16),
       (13232, 28, 20),
       (13233, 29, 20),
       (13234, 30, 27),
       (13235, 31, 15),
       (13236, 32, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13237, 33, 21),
       (13238, 34, 18),
       (13239, 35, 13),
       (13240, 1, 6),
       (13241, 2, 12),
       (13242, 3, 14),
       (13243, 4, 30),
       (13244, 5, 20),
       (13245, 6, 17),
       (13246, 7, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13247, 8, 27),
       (13248, 9, 26),
       (13249, 10, 23),
       (13250, 11, 16),
       (13251, 12, 32),
       (13252, 13, 24),
       (13253, 14, 15),
       (13254, 15, 16),
       (13255, 16, 16),
       (13256, 17, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13257, 18, 16),
       (13258, 19, 18),
       (13259, 20, 14),
       (13260, 21, 21),
       (13261, 22, 18),
       (13262, 1, 15),
       (13263, 2, 14),
       (13264, 3, 20),
       (13265, 4, 15),
       (13266, 5, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13267, 6, 17),
       (13268, 7, 18),
       (13269, 8, 18),
       (13270, 9, 20),
       (13271, 10, 20),
       (13272, 11, 16),
       (13273, 12, 16),
       (13274, 13, 18),
       (13275, 14, 21),
       (13276, 15, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13277, 16, 18),
       (13278, 1, 8),
       (13279, 2, 14),
       (13281, 4, 25),
       (13282, 5, 20),
       (13283, 6, 18),
       (13284, 7, 17),
       (13285, 8, 18),
       (13286, 9, 17),
       (13287, 10, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13288, 11, 16),
       (13289, 12, 15),
       (13290, 13, 19),
       (13291, 14, 22),
       (13292, 15, 20),
       (13293, 16, 16),
       (13294, 17, 17),
       (13295, 18, 15),
       (13296, 19, 19),
       (13297, 20, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13298, 21, 20),
       (13299, 1, 6),
       (13300, 2, 15),
       (13301, 3, 18),
       (13302, 4, 14),
       (13303, 5, 15),
       (13304, 6, 18),
       (13305, 7, 21),
       (13306, 8, 18),
       (13307, 9, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13308, 10, 23),
       (13309, 11, 20),
       (13310, 12, 19),
       (13311, 13, 17),
       (13312, 14, 12),
       (13313, 15, 22),
       (13314, 16, 19),
       (13315, 17, 18),
       (13316, 18, 13),
       (13317, 19, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13318, 20, 21),
       (13319, 21, 21),
       (13320, 22, 15),
       (13321, 23, 16),
       (13322, 24, 16),
       (13323, 25, 21),
       (13324, 26, 18),
       (13325, 27, 26),
       (13326, 28, 20),
       (13327, 29, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13328, 1, 8),
       (13329, 2, 19),
       (13330, 3, 19),
       (13331, 4, 14),
       (13332, 5, 19),
       (13333, 6, 16),
       (13334, 7, 21),
       (13335, 8, 25),
       (13336, 9, 19),
       (13337, 10, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13342, 15, 21),
       (13343, 16, 15),
       (13344, 17, 15),
       (13345, 18, 27),
       (13346, 19, 23),
       (13347, 20, 18),
       (13348, 21, 15),
       (13349, 22, 25),
       (13350, 23, 29),
       (13351, 24, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13352, 25, 25),
       (13353, 26, 28),
       (13354, 27, 15),
       (13355, 28, 19),
       (13356, 29, 19),
       (13358, 2, 11),
       (13359, 3, 16),
       (13360, 4, 16),
       (13361, 5, 13),
       (13362, 6, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13363, 7, 13),
       (13364, 8, 16),
       (13365, 9, 15),
       (13366, 10, 15),
       (13367, 11, 14),
       (13368, 12, 16),
       (13369, 13, 16),
       (13370, 14, 18),
       (13371, 15, 21),
       (13372, 16, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13373, 17, 27),
       (13374, 18, 17),
       (13375, 19, 23),
       (13376, 20, 18),
       (13377, 21, 19),
       (13378, 22, 13),
       (13379, 23, 13),
       (13380, 24, 15),
       (13381, 25, 13),
       (13382, 26, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13383, 27, 14),
       (13384, 28, 20),
       (13385, 29, 14),
       (13386, 30, 22),
       (13387, 31, 18),
       (13388, 32, 17),
       (13389, 33, 24),
       (13390, 34, 16),
       (13391, 1, 8),
       (13392, 2, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13393, 3, 24),
       (13394, 4, 19),
       (13395, 5, 14),
       (13396, 6, 18),
       (13397, 7, 19),
       (13398, 8, 19),
       (13399, 9, 16),
       (13400, 10, 12),
       (13401, 11, 15),
       (13402, 12, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13403, 13, 15),
       (13404, 14, 21),
       (13405, 15, 12),
       (13406, 16, 16),
       (13407, 17, 16),
       (13408, 18, 19),
       (13409, 19, 15),
       (13410, 20, 23),
       (13411, 21, 16),
       (13412, 22, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13413, 23, 21),
       (13414, 24, 20),
       (13415, 25, 13),
       (13416, 26, 18),
       (13417, 27, 19),
       (13418, 28, 21),
       (13419, 29, 20),
       (13420, 30, 21),
       (13421, 1, 6),
       (13422, 2, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13423, 3, 18),
       (13424, 4, 16),
       (13425, 5, 19),
       (13426, 6, 20),
       (13427, 7, 18),
       (13428, 8, 17),
       (13429, 9, 26),
       (13430, 10, 20),
       (13431, 11, 18),
       (13432, 12, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13433, 13, 21),
       (13434, 14, 17),
       (13435, 15, 16),
       (13436, 16, 14),
       (13437, 17, 20),
       (13438, 1, 21),
       (13439, 2, 15),
       (13440, 3, 18),
       (13441, 4, 17),
       (13442, 5, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13443, 6, 16),
       (13444, 7, 15),
       (13445, 8, 19),
       (13446, 9, 17),
       (13447, 10, 17),
       (13448, 11, 17),
       (13449, 12, 23),
       (13450, 13, 22),
       (13451, 14, 22),
       (13452, 15, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13453, 16, 21),
       (13454, 17, 21),
       (13455, 18, 27),
       (13456, 19, 15),
       (13457, 20, 27),
       (13458, 21, 15),
       (13459, 22, 18),
       (13460, 23, 20),
       (13461, 24, 39),
       (13462, 25, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13463, 1, 8),
       (13464, 2, 14),
       (13465, 3, 16),
       (13466, 4, 21),
       (13467, 5, 17),
       (13468, 6, 18),
       (13470, 2, 20),
       (13471, 3, 15),
       (13472, 4, 14),
       (13473, 5, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13474, 6, 11),
       (13475, 7, 15),
       (13476, 8, 18),
       (13477, 9, 14),
       (13478, 10, 19),
       (13479, 11, 12),
       (13480, 12, 17),
       (13481, 13, 15),
       (13482, 14, 29),
       (13483, 1, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13484, 2, 18),
       (13485, 3, 19),
       (13486, 4, 14),
       (13487, 5, 23),
       (13488, 6, 23),
       (13489, 7, 20),
       (13490, 8, 20),
       (13491, 9, 11),
       (13492, 10, 15),
       (13493, 11, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13494, 12, 15),
       (13495, 13, 22),
       (13496, 14, 20),
       (13497, 15, 18),
       (13498, 16, 15),
       (13499, 17, 19),
       (13500, 18, 16),
       (13501, 19, 22),
       (13502, 20, 14),
       (13503, 21, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13504, 22, 18),
       (13505, 23, 16),
       (13506, 1, 16),
       (13507, 2, 16),
       (13508, 3, 23),
       (13509, 4, 27),
       (13510, 5, 21),
       (13511, 6, 15),
       (13514, 9, 17),
       (13515, 10, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13516, 11, 20),
       (13517, 12, 14),
       (13518, 13, 17),
       (13519, 14, 18),
       (13520, 15, 16),
       (13521, 16, 17),
       (13522, 17, 17),
       (13523, 18, 19),
       (13524, 19, 17),
       (13525, 20, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13526, 21, 20),
       (13527, 22, 14),
       (13528, 23, 12),
       (13529, 24, 16),
       (13530, 25, 16),
       (13531, 26, 18),
       (13532, 27, 17),
       (13533, 28, 22),
       (13534, 1, 10),
       (13535, 2, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13536, 3, 16),
       (13537, 4, 19),
       (13538, 5, 14),
       (13539, 6, 17),
       (13540, 7, 19),
       (13541, 8, 16),
       (13542, 9, 13),
       (13543, 10, 18),
       (13544, 11, 22),
       (13545, 12, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13546, 13, 24),
       (13547, 14, 18),
       (13548, 15, 14),
       (13549, 16, 20),
       (13550, 17, 17),
       (13551, 18, 19),
       (13552, 19, 18),
       (13553, 20, 15),
       (13554, 21, 14),
       (13555, 22, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13556, 23, 21),
       (13557, 24, 20),
       (13558, 25, 24),
       (13559, 1, 25),
       (13560, 2, 19),
       (13561, 3, 20),
       (13562, 4, 17),
       (13563, 5, 18),
       (13564, 6, 17),
       (13565, 7, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13566, 8, 19),
       (13567, 9, 15),
       (13568, 10, 17),
       (13569, 11, 19),
       (13570, 12, 23),
       (13571, 13, 16),
       (13572, 14, 19),
       (13573, 15, 22),
       (13574, 16, 18),
       (13575, 17, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13576, 18, 20),
       (13577, 19, 16),
       (13578, 20, 19),
       (13579, 21, 18),
       (13580, 22, 22),
       (13581, 23, 19),
       (13582, 24, 20),
       (13583, 25, 19),
       (13584, 26, 18),
       (13585, 27, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13586, 28, 17),
       (13587, 29, 12),
       (13588, 30, 16),
       (13589, 31, 18),
       (13590, 1, 16),
       (13591, 2, 17),
       (13592, 3, 15),
       (13593, 4, 12),
       (13594, 5, 13),
       (13595, 6, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13596, 7, 26),
       (13597, 8, 19),
       (13598, 9, 20),
       (13599, 10, 15),
       (13600, 11, 18),
       (13601, 12, 17),
       (13602, 13, 21),
       (13603, 14, 19),
       (13604, 15, 21),
       (13605, 16, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13606, 17, 13),
       (13607, 18, 25),
       (13608, 19, 18),
       (13609, 20, 21),
       (13610, 21, 19),
       (13611, 22, 18),
       (13612, 23, 20),
       (13613, 24, 19),
       (13614, 25, 17),
       (13615, 26, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13616, 27, 15),
       (13617, 28, 22),
       (13618, 29, 21),
       (13619, 30, 18),
       (13620, 31, 22),
       (13621, 32, 19),
       (13622, 33, 16),
       (13623, 34, 26),
       (13624, 35, 30),
       (13625, 36, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13626, 37, 20),
       (13627, 38, 14),
       (13628, 39, 20),
       (13629, 40, 18),
       (13630, 1, 17),
       (13631, 2, 32),
       (13632, 3, 21),
       (13633, 4, 15),
       (13634, 5, 21),
       (13635, 6, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13636, 7, 13),
       (13637, 8, 17),
       (13638, 9, 15),
       (13639, 10, 13),
       (13640, 11, 19),
       (13641, 12, 21),
       (13642, 13, 15),
       (13643, 14, 18),
       (13644, 15, 15),
       (13645, 16, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13646, 17, 13),
       (13648, 19, 20),
       (13649, 20, 16),
       (13650, 21, 21),
       (13651, 22, 17),
       (13652, 1, 15),
       (13653, 2, 15),
       (13654, 3, 20),
       (13655, 4, 17),
       (13656, 5, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13657, 6, 18),
       (13658, 7, 17),
       (13659, 8, 18),
       (13660, 9, 15),
       (13661, 10, 13),
       (13662, 11, 13),
       (13663, 12, 18),
       (13664, 13, 18),
       (13665, 14, 12),
       (13666, 15, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13667, 16, 12),
       (13668, 17, 14),
       (13669, 18, 17),
       (13670, 19, 17),
       (13671, 20, 12),
       (13672, 21, 20),
       (13673, 22, 15),
       (13674, 23, 23),
       (13675, 24, 22),
       (13676, 25, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13677, 26, 26),
       (13678, 27, 21),
       (13679, 28, 18),
       (13680, 29, 14),
       (13681, 30, 20),
       (13682, 31, 15),
       (13683, 32, 16),
       (13684, 33, 16),
       (13685, 1, 6),
       (13686, 2, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13687, 3, 11),
       (13688, 4, 18),
       (13689, 5, 15),
       (13690, 6, 18),
       (13691, 7, 12),
       (13692, 8, 15),
       (13693, 9, 17),
       (13694, 10, 28),
       (13695, 11, 22),
       (13696, 12, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13697, 13, 16),
       (13698, 14, 18),
       (13699, 15, 13),
       (13700, 16, 15),
       (13701, 17, 18),
       (13702, 18, 17),
       (13703, 19, 25),
       (13704, 20, 24),
       (13705, 21, 17),
       (13706, 22, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13707, 23, 18),
       (13708, 24, 18),
       (13709, 25, 20),
       (13710, 26, 13),
       (13711, 27, 18),
       (13712, 28, 22),
       (13713, 29, 32),
       (13714, 30, 15),
       (13715, 31, 17),
       (13716, 32, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13717, 33, 24),
       (13718, 34, 15),
       (13719, 35, 11),
       (13720, 36, 16),
       (13721, 37, 20),
       (13722, 1, 6),
       (13723, 2, 18),
       (13724, 3, 23),
       (13725, 4, 10),
       (13726, 5, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13727, 6, 21),
       (13728, 7, 16),
       (13729, 8, 19),
       (13730, 9, 23),
       (13731, 10, 15),
       (13732, 11, 21),
       (13733, 12, 15),
       (13734, 13, 15),
       (13735, 14, 21),
       (13736, 15, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13737, 16, 14),
       (13738, 1, 6),
       (13739, 2, 21),
       (13740, 3, 15),
       (13741, 4, 17),
       (13742, 5, 16),
       (13743, 6, 16),
       (13744, 7, 24),
       (13745, 8, 16),
       (13746, 9, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13747, 10, 15),
       (13748, 11, 19),
       (13749, 12, 18),
       (13750, 13, 20),
       (13751, 14, 12),
       (13752, 15, 14),
       (13753, 16, 32),
       (13754, 17, 18),
       (13755, 18, 20),
       (13756, 19, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13757, 20, 13),
       (13758, 21, 14),
       (13759, 22, 15),
       (13760, 23, 15),
       (13761, 24, 11),
       (13762, 25, 11),
       (13763, 26, 17),
       (13764, 27, 16),
       (13765, 28, 11),
       (13766, 29, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13767, 30, 16),
       (13768, 31, 13),
       (13769, 32, 18),
       (13770, 33, 16),
       (13771, 1, 14),
       (13772, 2, 18),
       (13773, 3, 18),
       (13774, 4, 25),
       (13775, 5, 15),
       (13776, 6, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13777, 7, 19),
       (13778, 8, 12),
       (13779, 9, 17),
       (13780, 10, 17),
       (13781, 11, 17),
       (13782, 12, 25),
       (13783, 13, 19),
       (13784, 14, 15),
       (13785, 15, 20),
       (13786, 16, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13787, 17, 17),
       (13788, 18, 16),
       (13789, 19, 21),
       (13790, 20, 20),
       (13791, 21, 21),
       (13792, 22, 14),
       (13793, 23, 25),
       (13794, 24, 15),
       (13795, 1, 11),
       (13796, 2, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13797, 3, 20),
       (13798, 4, 17),
       (13799, 5, 16),
       (13800, 6, 14),
       (13801, 7, 16),
       (13802, 8, 22),
       (13803, 9, 16),
       (13804, 10, 13),
       (13805, 11, 18),
       (13806, 12, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13807, 13, 20),
       (13808, 14, 17),
       (13809, 15, 15),
       (13810, 16, 20),
       (13811, 17, 21),
       (13812, 18, 15),
       (13813, 19, 19),
       (13814, 20, 21),
       (13815, 21, 18),
       (13816, 22, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13817, 23, 17),
       (13818, 24, 16),
       (13819, 25, 18),
       (13820, 26, 21),
       (13821, 27, 17),
       (13822, 28, 14),
       (13823, 29, 18),
       (13824, 30, 17),
       (13825, 31, 15),
       (13826, 32, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13827, 33, 17),
       (13828, 34, 17),
       (13829, 35, 17),
       (13830, 36, 17),
       (13831, 37, 17),
       (13832, 38, 14),
       (13833, 39, 17),
       (13834, 40, 16),
       (13835, 41, 21),
       (13836, 1, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13837, 2, 18),
       (13838, 3, 14),
       (13839, 4, 20),
       (13840, 5, 19),
       (13841, 6, 15),
       (13842, 7, 16),
       (13843, 8, 16),
       (13844, 9, 17),
       (13845, 10, 21),
       (13846, 11, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13847, 12, 21),
       (13848, 13, 17),
       (13849, 14, 15),
       (13850, 15, 17),
       (13851, 16, 24),
       (13852, 17, 15),
       (13853, 18, 16),
       (13854, 19, 17),
       (13855, 20, 17),
       (13856, 21, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13857, 22, 16),
       (13858, 23, 12),
       (13859, 24, 20),
       (13860, 25, 25),
       (13861, 26, 17),
       (13862, 27, 17),
       (13863, 28, 19),
       (13864, 29, 14),
       (13865, 30, 16),
       (13867, 2, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13868, 3, 7),
       (13869, 4, 19),
       (13870, 5, 18),
       (13871, 6, 11),
       (13872, 7, 19),
       (13873, 8, 16),
       (13874, 9, 17),
       (13875, 10, 15),
       (13876, 11, 19),
       (13877, 12, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13878, 13, 14),
       (13879, 14, 16),
       (13880, 15, 17),
       (13881, 16, 19),
       (13882, 17, 16),
       (13883, 18, 15),
       (13884, 19, 19),
       (13885, 20, 17),
       (13886, 21, 16),
       (13887, 22, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13888, 23, 20),
       (13889, 24, 19),
       (13890, 1, 17),
       (13891, 2, 17),
       (13892, 3, 16),
       (13893, 4, 18),
       (13894, 5, 18),
       (13895, 6, 17),
       (13896, 7, 15),
       (13897, 8, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13898, 9, 21),
       (13899, 10, 20),
       (13900, 11, 20),
       (13901, 12, 17),
       (13902, 13, 14),
       (13903, 14, 15),
       (13904, 15, 16),
       (13905, 16, 14),
       (13906, 17, 16),
       (13907, 18, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13908, 19, 14),
       (13909, 20, 16),
       (13910, 21, 13),
       (13911, 22, 11),
       (13912, 23, 18),
       (13913, 24, 15),
       (13914, 25, 18),
       (13915, 26, 21),
       (13916, 27, 11),
       (13919, 30, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13920, 31, 19),
       (13921, 32, 17),
       (13922, 33, 13),
       (13923, 34, 16),
       (13924, 1, 7),
       (13925, 2, 18),
       (13926, 3, 27),
       (13927, 4, 19),
       (13928, 5, 18),
       (13929, 6, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13930, 7, 48),
       (13931, 8, 64),
       (13932, 9, 25),
       (13933, 10, 25),
       (13934, 11, 65),
       (13935, 12, 34),
       (13937, 14, 25),
       (13938, 15, 26),
       (13939, 16, 22),
       (13940, 17, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13941, 1, 28),
       (13942, 2, 20),
       (13943, 3, 34),
       (13944, 4, 16),
       (13945, 5, 18),
       (13946, 6, 17),
       (13947, 1, 13),
       (13948, 2, 21),
       (13949, 3, 14),
       (13950, 4, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13951, 5, 17),
       (13952, 6, 13),
       (13953, 7, 21),
       (13954, 8, 24),
       (13955, 9, 21),
       (13956, 10, 15),
       (13957, 11, 9),
       (13958, 12, 30),
       (13959, 1, 27),
       (13960, 2, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13961, 3, 19),
       (13962, 4, 17),
       (13963, 5, 13),
       (13964, 6, 20),
       (13965, 7, 28),
       (13966, 8, 11),
       (14064, 4, 23),
       (13967, 1, 42),
       (13968, 2, 25),
       (13969, 3, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13970, 4, 18),
       (13971, 5, 12),
       (13972, 6, 23),
       (13973, 7, 21),
       (13974, 8, 20),
       (13975, 1, 23),
       (13976, 2, 19),
       (13977, 3, 25),
       (13978, 4, 18),
       (13979, 5, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13980, 6, 16),
       (13981, 7, 27),
       (13982, 8, 19),
       (13983, 9, 26),
       (13984, 10, 28),
       (13985, 11, 32),
       (13986, 12, 19),
       (14137, 18, 16),
       (13987, 1, 32),
       (13988, 2, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13989, 3, 13),
       (13990, 4, 13),
       (13991, 5, 17),
       (13992, 6, 22),
       (13993, 7, 16),
       (13994, 8, 18),
       (13995, 9, 11),
       (13996, 10, 23),
       (13997, 1, 38),
       (13998, 2, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (13999, 3, 17),
       (14000, 4, 25),
       (14001, 5, 27),
       (14002, 6, 24),
       (14003, 7, 18),
       (14004, 8, 23),
       (14005, 9, 26),
       (14006, 10, 12),
       (14007, 11, 14),
       (14008, 12, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14009, 13, 17),
       (14010, 14, 15),
       (14011, 15, 18),
       (14012, 16, 19),
       (14013, 17, 22),
       (14014, 1, 35),
       (14015, 2, 26),
       (14016, 3, 20),
       (14017, 4, 19),
       (14018, 5, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14019, 6, 21),
       (14020, 7, 12),
       (14021, 8, 20),
       (14022, 9, 14),
       (14023, 1, 32),
       (14024, 2, 20),
       (14025, 3, 13),
       (14026, 4, 17),
       (14027, 5, 21),
       (14028, 6, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14029, 7, 15),
       (14030, 8, 18),
       (14031, 9, 18),
       (14032, 10, 23),
       (14033, 11, 15),
       (14034, 12, 18),
       (14035, 13, 28),
       (14036, 14, 23),
       (14037, 15, 23),
       (14038, 16, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14039, 17, 16),
       (14040, 18, 18),
       (14041, 19, 16),
       (14042, 20, 16),
       (14043, 1, 16),
       (14044, 2, 23),
       (14045, 3, 17),
       (14046, 4, 23),
       (14047, 5, 26),
       (14048, 6, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14049, 7, 18),
       (14050, 8, 27),
       (14051, 9, 31),
       (14052, 10, 14),
       (14053, 11, 18),
       (14054, 12, 14),
       (14055, 13, 17),
       (14056, 14, 31),
       (14057, 15, 22),
       (14058, 16, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14059, 17, 22),
       (14060, 18, 20),
       (14061, 1, 29),
       (14062, 2, 27),
       (14065, 5, 16),
       (14066, 6, 21),
       (14067, 7, 14),
       (14068, 1, 31),
       (14069, 2, 20),
       (14070, 3, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14071, 4, 20),
       (14072, 5, 31),
       (14073, 6, 20),
       (14074, 7, 16),
       (14075, 8, 16),
       (14076, 1, 29),
       (14077, 2, 27),
       (14078, 3, 19),
       (14079, 4, 18),
       (14080, 5, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14081, 6, 13),
       (14082, 1, 35),
       (14083, 2, 25),
       (14084, 3, 20),
       (14085, 4, 23),
       (14086, 5, 16),
       (14087, 6, 15),
       (14088, 7, 30),
       (14089, 1, 20),
       (14090, 2, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14091, 3, 22),
       (14092, 4, 25),
       (14093, 5, 25),
       (14094, 1, 16),
       (14095, 2, 20),
       (14096, 3, 20),
       (14097, 4, 28),
       (14098, 5, 16),
       (14099, 6, 16),
       (14100, 7, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14101, 8, 20),
       (14102, 9, 17),
       (14103, 10, 20),
       (14104, 11, 25),
       (14105, 1, 27),
       (14106, 2, 15),
       (14107, 3, 29),
       (14108, 4, 23),
       (14109, 5, 14),
       (14110, 6, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14111, 7, 26),
       (14112, 8, 17),
       (14113, 9, 14),
       (14115, 11, 20),
       (14116, 12, 23),
       (14117, 13, 18),
       (14118, 14, 42),
       (14119, 15, 22),
       (14120, 1, 53),
       (14121, 2, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14122, 3, 20),
       (14123, 4, 15),
       (14124, 5, 16),
       (14125, 6, 30),
       (14126, 7, 21),
       (14127, 8, 22),
       (14128, 9, 16),
       (14129, 10, 19),
       (14130, 11, 20),
       (14131, 12, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14132, 13, 19),
       (14133, 14, 16),
       (14134, 15, 30),
       (14135, 16, 16),
       (14136, 17, 21),
       (14138, 19, 18),
       (14139, 20, 20),
       (14140, 21, 17),
       (14141, 22, 17),
       (14143, 24, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14144, 25, 18),
       (14145, 26, 18),
       (14146, 27, 16),
       (14147, 28, 14),
       (14148, 29, 19),
       (14149, 30, 26),
       (14150, 31, 15),
       (14151, 32, 13),
       (14152, 33, 15),
       (14153, 34, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14154, 35, 26),
       (14155, 36, 14),
       (14156, 37, 18),
       (14157, 38, 21),
       (14158, 39, 22),
       (14159, 40, 21),
       (14160, 41, 17),
       (14161, 42, 24),
       (14162, 43, 30),
       (14163, 44, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14164, 45, 15),
       (14165, 46, 16),
       (14166, 47, 14),
       (14167, 48, 26),
       (14168, 49, 20),
       (14169, 50, 22),
       (14170, 1, 23),
       (14171, 2, 12),
       (14172, 3, 12),
       (14173, 4, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14174, 5, 21),
       (14175, 6, 28),
       (14176, 7, 20),
       (14177, 8, 19),
       (14178, 9, 19),
       (14179, 10, 24),
       (14180, 11, 15),
       (14181, 12, 12),
       (14182, 13, 29),
       (14183, 14, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14184, 1, 30),
       (14185, 2, 13),
       (14186, 3, 10),
       (14187, 4, 12),
       (14188, 5, 25),
       (14189, 6, 25),
       (14190, 7, 21),
       (14191, 8, 14),
       (14192, 9, 11),
       (14193, 1, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14194, 2, 18),
       (14195, 3, 20),
       (14196, 4, 18),
       (14197, 5, 16),
       (14198, 6, 18),
       (14199, 7, 20),
       (14200, 8, 19),
       (14201, 9, 29),
       (14202, 10, 18),
       (14203, 11, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14204, 12, 19),
       (14205, 13, 17),
       (14206, 1, 39),
       (14207, 2, 22),
       (14208, 3, 13),
       (14209, 4, 13),
       (14210, 5, 18),
       (14211, 6, 18),
       (14212, 7, 20),
       (14213, 8, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14214, 9, 25),
       (14215, 10, 18),
       (14216, 11, 16),
       (14217, 12, 14),
       (14219, 14, 25),
       (14220, 15, 26),
       (14221, 16, 21),
       (14222, 17, 13),
       (14223, 18, 15),
       (14224, 19, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14225, 20, 15),
       (14226, 21, 20),
       (14227, 22, 19),
       (14228, 23, 27),
       (14229, 24, 29),
       (14230, 25, 20),
       (14231, 26, 22),
       (14232, 27, 24),
       (14233, 28, 15),
       (14234, 29, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14235, 30, 17),
       (14236, 31, 21),
       (14237, 1, 14),
       (14238, 2, 16),
       (14239, 3, 18),
       (14240, 4, 31),
       (14241, 5, 24),
       (14242, 6, 25),
       (14243, 1, 22),
       (14244, 2, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14245, 3, 17),
       (14246, 4, 24),
       (14247, 5, 16),
       (14248, 6, 17),
       (14249, 7, 24),
       (14250, 8, 15),
       (14251, 9, 23),
       (14252, 10, 16),
       (14253, 1, 16),
       (14254, 2, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14255, 3, 23),
       (14256, 4, 11),
       (14257, 5, 25),
       (14258, 6, 17),
       (14259, 7, 24),
       (14260, 8, 14),
       (14261, 9, 16),
       (14262, 10, 19),
       (14263, 11, 15),
       (14264, 12, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14265, 13, 14),
       (14266, 14, 18),
       (14267, 15, 17),
       (14268, 16, 16),
       (14269, 17, 16),
       (14270, 18, 12),
       (14271, 19, 15),
       (14272, 20, 21),
       (14273, 21, 12),
       (14274, 22, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14275, 1, 25),
       (14276, 2, 14),
       (14277, 3, 15),
       (14278, 4, 16),
       (14279, 5, 15),
       (14280, 6, 16),
       (14281, 7, 19),
       (14282, 8, 16),
       (14283, 9, 14),
       (14284, 10, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14285, 11, 18),
       (14286, 12, 15),
       (14287, 1, 30),
       (14288, 2, 22),
       (14289, 3, 25),
       (14290, 4, 40),
       (14291, 5, 33),
       (14292, 6, 35),
       (14293, 7, 18),
       (14294, 8, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14295, 9, 31),
       (14296, 10, 15),
       (15611, 4, 11),
       (14297, 11, 18),
       (14298, 12, 25),
       (14299, 13, 21),
       (14300, 14, 17),
       (14301, 1, 38),
       (14302, 2, 22),
       (14303, 3, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14304, 4, 28),
       (14305, 5, 25),
       (14306, 6, 13),
       (14307, 7, 31),
       (14308, 8, 15),
       (14309, 9, 18),
       (14310, 1, 21),
       (14311, 2, 15),
       (14312, 3, 19),
       (14313, 4, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14314, 5, 17),
       (14315, 6, 18),
       (14317, 8, 14),
       (14318, 9, 22),
       (14319, 10, 15),
       (14320, 11, 15),
       (14321, 1, 38),
       (14322, 2, 14),
       (14323, 3, 25),
       (14324, 4, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14325, 5, 28),
       (14326, 6, 14),
       (14327, 7, 21),
       (14328, 8, 13),
       (14329, 9, 25),
       (14330, 10, 14),
       (14331, 11, 20),
       (14332, 12, 28),
       (14333, 1, 30),
       (14334, 2, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14335, 3, 20),
       (14336, 4, 19),
       (14337, 5, 18),
       (14338, 6, 13),
       (14339, 7, 23),
       (14340, 8, 23),
       (14341, 9, 24),
       (14342, 10, 26),
       (14343, 11, 31),
       (14344, 12, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14345, 13, 27),
       (14346, 14, 14),
       (14347, 15, 21),
       (14348, 16, 14),
       (14349, 17, 29),
       (14350, 18, 17),
       (14351, 19, 33),
       (14352, 20, 29),
       (14353, 21, 16),
       (14354, 22, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14355, 23, 19),
       (14356, 24, 15),
       (14357, 1, 18),
       (14358, 2, 19),
       (14359, 3, 16),
       (14360, 4, 21),
       (14361, 5, 31),
       (14362, 6, 32),
       (14363, 7, 21),
       (14364, 8, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14365, 9, 34),
       (14366, 10, 19),
       (14367, 11, 20),
       (14368, 1, 13),
       (14369, 2, 18),
       (14370, 3, 13),
       (14371, 4, 16),
       (14372, 5, 15),
       (14373, 6, 22),
       (14374, 7, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14375, 8, 19),
       (14376, 9, 14),
       (14377, 10, 22),
       (14378, 11, 17),
       (14379, 12, 19),
       (14380, 13, 12),
       (14381, 14, 17),
       (14382, 15, 14),
       (14383, 16, 21),
       (14384, 17, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14385, 18, 19),
       (14386, 19, 14),
       (14387, 20, 14),
       (14388, 21, 16),
       (14389, 22, 16),
       (14390, 1, 35),
       (14391, 2, 17),
       (14392, 3, 13),
       (14393, 4, 15),
       (14394, 5, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14395, 6, 17),
       (14396, 7, 15),
       (14397, 8, 18),
       (14398, 9, 17),
       (14399, 10, 20),
       (14400, 11, 15),
       (14401, 12, 17),
       (14402, 13, 12),
       (14403, 14, 12),
       (14404, 15, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14405, 16, 21),
       (14406, 17, 16),
       (14407, 18, 21),
       (14408, 19, 16),
       (14409, 20, 12),
       (14410, 21, 15),
       (14411, 22, 20),
       (14412, 1, 24),
       (14413, 2, 13),
       (14414, 3, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14415, 4, 27),
       (14416, 5, 17),
       (14417, 6, 15),
       (14418, 7, 24),
       (14419, 8, 23),
       (14420, 9, 15),
       (14421, 10, 35),
       (14422, 11, 14),
       (14423, 12, 13),
       (14424, 13, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14425, 14, 24),
       (14426, 15, 30),
       (14427, 16, 14),
       (14428, 17, 19),
       (14429, 18, 17),
       (14430, 19, 25),
       (14431, 20, 19),
       (14432, 21, 18),
       (14433, 22, 17),
       (14434, 23, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14435, 24, 18),
       (14436, 25, 23),
       (14437, 26, 28),
       (14438, 27, 31),
       (14439, 28, 17),
       (14440, 1, 32),
       (14441, 2, 20),
       (14442, 3, 20),
       (14443, 4, 21),
       (14444, 5, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14445, 6, 22),
       (14446, 7, 21),
       (14447, 8, 24),
       (14448, 9, 16),
       (14449, 10, 18),
       (15672, 20, 15),
       (14450, 11, 21),
       (14451, 12, 19),
       (14452, 1, 22),
       (14453, 2, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14454, 3, 16),
       (14455, 4, 16),
       (14456, 5, 17),
       (14457, 6, 20),
       (14458, 7, 30),
       (14459, 8, 16),
       (14460, 9, 19),
       (14461, 10, 24),
       (14462, 11, 17),
       (14463, 12, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14464, 13, 15),
       (14465, 14, 29),
       (14466, 15, 15),
       (14467, 16, 15),
       (14468, 17, 15),
       (14469, 18, 15),
       (14470, 19, 23),
       (14471, 20, 27),
       (14472, 21, 15),
       (14473, 22, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14474, 23, 15),
       (14475, 24, 18),
       (14476, 25, 22),
       (14477, 26, 15),
       (14478, 27, 11),
       (14479, 28, 25),
       (14480, 29, 12),
       (14481, 30, 14),
       (14482, 31, 16),
       (14483, 32, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14484, 33, 16),
       (14485, 34, 27),
       (14486, 35, 20),
       (14487, 36, 20),
       (14488, 37, 20),
       (14489, 38, 18),
       (14490, 39, 19),
       (14491, 40, 24),
       (14492, 1, 25),
       (14493, 2, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14494, 3, 24),
       (14495, 4, 19),
       (14496, 5, 11),
       (14497, 6, 15),
       (14498, 7, 16),
       (14499, 8, 18),
       (14500, 9, 16),
       (14501, 10, 21),
       (14502, 11, 17),
       (14503, 12, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14504, 13, 21),
       (14505, 14, 17),
       (14506, 15, 16),
       (14507, 16, 18),
       (14508, 17, 14),
       (14509, 18, 14),
       (14510, 19, 17),
       (14511, 20, 20),
       (14512, 21, 14),
       (14513, 22, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14514, 1, 42),
       (14515, 2, 18),
       (14516, 3, 20),
       (14517, 4, 24),
       (14518, 5, 29),
       (14519, 6, 26),
       (14520, 7, 13),
       (14521, 8, 15),
       (14522, 9, 13),
       (14523, 10, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14524, 11, 25),
       (15666, 14, 13),
       (14525, 12, 33),
       (14526, 13, 17),
       (14527, 1, 24),
       (14528, 2, 28),
       (14529, 3, 27),
       (14530, 4, 22),
       (14531, 5, 45),
       (14532, 6, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14533, 7, 19),
       (14534, 8, 17),
       (14535, 9, 23),
       (14536, 10, 31),
       (14537, 11, 20),
       (14538, 12, 37),
       (14539, 13, 15),
       (14540, 14, 32),
       (14541, 15, 16),
       (14542, 16, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14543, 17, 26),
       (14544, 1, 26),
       (14545, 2, 28),
       (14546, 3, 18),
       (14547, 4, 18),
       (14548, 5, 16),
       (14549, 6, 24),
       (14550, 7, 16),
       (14551, 8, 21),
       (14552, 9, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14553, 10, 18),
       (14554, 11, 18),
       (14555, 12, 19),
       (14556, 13, 16),
       (14557, 1, 28),
       (14558, 2, 18),
       (14559, 3, 20),
       (14560, 4, 37),
       (14561, 5, 32),
       (14562, 6, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14563, 7, 21),
       (14564, 8, 31),
       (14565, 9, 24),
       (14566, 10, 22),
       (14567, 11, 36),
       (14568, 1, 22),
       (14569, 2, 26),
       (14570, 3, 25),
       (14571, 4, 27),
       (14572, 5, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14573, 1, 39),
       (14574, 2, 26),
       (14575, 3, 39),
       (14576, 4, 11),
       (14577, 5, 22),
       (14578, 6, 15),
       (14579, 7, 18),
       (14580, 8, 22),
       (14581, 9, 20),
       (14582, 10, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14583, 11, 17),
       (14584, 12, 16),
       (14585, 13, 21),
       (14586, 14, 17),
       (14587, 15, 19),
       (14588, 16, 18),
       (14589, 17, 21),
       (14590, 18, 15),
       (14591, 19, 20),
       (14592, 20, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14593, 21, 15),
       (14594, 22, 20),
       (14595, 23, 14),
       (14596, 24, 13),
       (14597, 25, 16),
       (14598, 26, 13),
       (14599, 1, 48),
       (14600, 2, 22),
       (14601, 3, 15),
       (14655, 6, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14602, 4, 24),
       (14603, 5, 20),
       (14604, 6, 20),
       (14605, 7, 23),
       (14606, 8, 21),
       (14607, 9, 20),
       (14608, 10, 20),
       (14609, 11, 17),
       (14610, 12, 21),
       (14611, 13, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14612, 14, 23),
       (14613, 15, 17),
       (14614, 16, 18),
       (14615, 17, 23),
       (14616, 1, 30),
       (14617, 2, 23),
       (14618, 3, 17),
       (14619, 4, 24),
       (14620, 5, 21),
       (14621, 6, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14622, 7, 14),
       (14623, 8, 15),
       (14624, 9, 29),
       (14625, 10, 23),
       (14626, 11, 14),
       (14627, 1, 28),
       (14628, 2, 16),
       (14629, 3, 11),
       (14630, 4, 14),
       (14631, 5, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14632, 6, 14),
       (14633, 7, 15),
       (14634, 8, 12),
       (14635, 9, 31),
       (14636, 1, 29),
       (14637, 2, 25),
       (14638, 3, 12),
       (14639, 4, 11),
       (14640, 5, 14),
       (14641, 6, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14642, 7, 11),
       (14643, 8, 28),
       (14644, 9, 15),
       (14645, 10, 24),
       (14646, 11, 16),
       (14647, 12, 13),
       (14648, 13, 18),
       (14649, 14, 19),
       (14650, 1, 26),
       (14652, 3, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14653, 4, 18),
       (14654, 5, 18),
       (14656, 7, 19),
       (14657, 8, 15),
       (14658, 9, 13),
       (14659, 10, 22),
       (14660, 11, 27),
       (14661, 12, 15),
       (14662, 13, 14),
       (14663, 14, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14664, 15, 17),
       (14665, 16, 18),
       (14666, 17, 17),
       (14667, 18, 19),
       (14668, 19, 16),
       (14669, 20, 15),
       (14670, 1, 28),
       (14671, 2, 12),
       (14672, 3, 22),
       (14673, 4, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14674, 5, 17),
       (14675, 6, 13),
       (14676, 7, 23),
       (14677, 8, 17),
       (14678, 9, 17),
       (14679, 10, 16),
       (14680, 11, 18),
       (14681, 12, 19),
       (14682, 13, 14),
       (14683, 14, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14684, 15, 19),
       (14685, 16, 26),
       (14686, 17, 11),
       (14687, 18, 16),
       (14688, 19, 12),
       (14689, 20, 15),
       (14690, 21, 34),
       (14691, 22, 20),
       (14692, 23, 24),
       (14693, 1, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14694, 2, 13),
       (14695, 3, 13),
       (14696, 4, 31),
       (14697, 5, 16),
       (14698, 6, 21),
       (14699, 7, 19),
       (14700, 8, 17),
       (14701, 9, 13),
       (14702, 10, 16),
       (14703, 11, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14704, 12, 16),
       (14705, 13, 15),
       (14706, 14, 21),
       (14707, 15, 15),
       (14708, 16, 19),
       (14709, 17, 20),
       (14710, 18, 15),
       (14711, 19, 26),
       (14712, 1, 44),
       (14713, 2, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14714, 3, 14),
       (14715, 4, 10),
       (14716, 5, 30),
       (14717, 6, 15),
       (14718, 7, 26),
       (14719, 8, 28),
       (14720, 9, 30),
       (14721, 1, 37),
       (14815, 7, 20),
       (14722, 2, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14723, 3, 22),
       (14724, 4, 22),
       (14725, 5, 35),
       (14726, 6, 30),
       (14727, 1, 40),
       (14728, 2, 14),
       (14729, 3, 23),
       (14730, 4, 15),
       (14731, 5, 15),
       (14732, 6, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14733, 7, 20),
       (14734, 1, 26),
       (14735, 2, 15),
       (14736, 3, 27),
       (14737, 4, 17),
       (14738, 5, 13),
       (14739, 6, 21),
       (14740, 7, 14),
       (14741, 8, 14),
       (14742, 9, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14743, 10, 22),
       (14744, 11, 15),
       (14745, 12, 37),
       (14746, 13, 15),
       (14747, 14, 16),
       (14748, 15, 25),
       (14749, 16, 14),
       (14750, 17, 18),
       (14751, 18, 23),
       (14752, 19, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14753, 20, 20),
       (14754, 21, 23),
       (14755, 22, 20),
       (14756, 23, 31),
       (14757, 1, 43),
       (14758, 2, 20),
       (14759, 3, 13),
       (14760, 4, 26),
       (14761, 5, 17),
       (14762, 6, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14763, 7, 14),
       (14764, 8, 18),
       (14765, 9, 21),
       (14766, 10, 15),
       (14767, 11, 19),
       (14768, 12, 15),
       (14769, 13, 29),
       (14816, 8, 18),
       (14770, 1, 56),
       (14771, 2, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14772, 3, 27),
       (14773, 4, 32),
       (14774, 5, 17),
       (14775, 6, 29),
       (14776, 7, 19),
       (14777, 8, 15),
       (14778, 9, 21),
       (14779, 10, 15),
       (14780, 11, 17),
       (14781, 1, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14782, 2, 18),
       (14783, 3, 19),
       (14784, 4, 20),
       (14785, 5, 13),
       (14786, 6, 20),
       (14787, 7, 24),
       (14788, 8, 26),
       (14789, 9, 22),
       (14790, 10, 21),
       (14791, 11, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14792, 1, 45),
       (14793, 2, 15),
       (14794, 3, 27),
       (14795, 4, 16),
       (14796, 5, 25),
       (14797, 6, 16),
       (14798, 7, 19),
       (14799, 8, 17),
       (14800, 9, 18),
       (14801, 10, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14802, 11, 21),
       (14803, 12, 30),
       (14804, 13, 29),
       (15117, 3, 13),
       (14805, 14, 19),
       (14806, 15, 18),
       (14807, 16, 35),
       (14808, 17, 21),
       (14809, 1, 59),
       (14810, 2, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14811, 3, 18),
       (14812, 4, 20),
       (14813, 5, 15),
       (14814, 6, 21),
       (14818, 10, 19),
       (14819, 11, 14),
       (14820, 12, 17),
       (14821, 1, 23),
       (14822, 2, 27),
       (14823, 3, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14824, 4, 19),
       (14825, 5, 21),
       (14826, 6, 15),
       (14827, 7, 18),
       (14828, 8, 18),
       (14829, 1, 28),
       (14830, 2, 20),
       (14831, 3, 25),
       (14832, 4, 24),
       (14833, 5, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14834, 6, 19),
       (14835, 7, 20),
       (14836, 8, 21),
       (14837, 9, 29),
       (14838, 10, 19),
       (14839, 11, 15),
       (14840, 12, 18),
       (14841, 1, 45),
       (14842, 2, 17),
       (14843, 3, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14844, 4, 18),
       (14845, 5, 20),
       (14846, 6, 16),
       (14847, 7, 17),
       (14848, 8, 12),
       (14849, 9, 19),
       (14850, 10, 19),
       (14851, 11, 27),
       (14852, 1, 26),
       (14853, 2, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14854, 3, 17),
       (14855, 4, 20),
       (14856, 5, 20),
       (14857, 6, 25),
       (14858, 7, 15),
       (14859, 8, 22),
       (14860, 9, 21),
       (14861, 10, 22),
       (14862, 1, 28),
       (14863, 2, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14864, 3, 13),
       (14865, 4, 34),
       (14866, 5, 37),
       (14867, 6, 14),
       (14868, 7, 19),
       (14869, 8, 25),
       (14870, 9, 31),
       (14871, 10, 22),
       (14872, 11, 13),
       (14873, 12, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14874, 13, 22),
       (14875, 1, 19),
       (14876, 2, 12),
       (14877, 3, 22),
       (14878, 4, 18),
       (14879, 5, 19),
       (14880, 6, 21),
       (14881, 7, 19),
       (14882, 8, 17),
       (14883, 9, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14884, 10, 16),
       (14885, 11, 15),
       (14886, 12, 26),
       (14887, 13, 16),
       (14888, 14, 14),
       (14889, 15, 21),
       (14890, 16, 20),
       (14891, 17, 15),
       (14892, 18, 13),
       (14893, 19, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14894, 20, 16),
       (14895, 1, 29),
       (14896, 2, 14),
       (14897, 3, 14),
       (14898, 4, 25),
       (14899, 5, 14),
       (14900, 6, 15),
       (14901, 7, 15),
       (14902, 1, 29),
       (14903, 2, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14904, 3, 18),
       (14905, 4, 29),
       (14906, 5, 18),
       (15499, 8, 13),
       (14907, 6, 22),
       (14908, 7, 17),
       (14909, 8, 26),
       (14910, 9, 18),
       (14911, 10, 16),
       (14912, 11, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14913, 12, 16),
       (14914, 13, 24),
       (14915, 14, 15),
       (14916, 15, 18),
       (14917, 16, 26),
       (14918, 17, 23),
       (14919, 18, 29),
       (14920, 19, 17),
       (14921, 20, 18),
       (14922, 21, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14923, 22, 21),
       (14924, 23, 24),
       (14925, 24, 19),
       (14926, 25, 18),
       (14927, 26, 18),
       (14928, 27, 22),
       (14929, 28, 17),
       (14930, 29, 13),
       (14931, 30, 35),
       (14932, 31, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14933, 32, 15),
       (14934, 33, 22),
       (14935, 34, 18),
       (14936, 35, 26),
       (14937, 1, 26),
       (14938, 2, 22),
       (14939, 3, 20),
       (14940, 4, 38),
       (14941, 5, 15),
       (14942, 6, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14943, 7, 14),
       (14944, 8, 17),
       (14945, 9, 23),
       (14946, 10, 15),
       (14947, 11, 13),
       (14948, 12, 18),
       (14949, 13, 32),
       (14950, 14, 27),
       (14951, 15, 24),
       (14952, 16, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14953, 17, 17),
       (14954, 18, 15),
       (14955, 19, 17),
       (15610, 3, 16),
       (14956, 20, 31),
       (14957, 21, 19),
       (14958, 22, 20),
       (14959, 23, 18),
       (14960, 24, 16),
       (14961, 25, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14962, 26, 21),
       (14963, 27, 14),
       (14964, 28, 18),
       (14965, 29, 17),
       (15667, 15, 13),
       (14966, 30, 17),
       (14967, 31, 18),
       (14968, 32, 18),
       (14969, 33, 11),
       (14970, 34, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14971, 35, 22),
       (14972, 36, 19),
       (14973, 1, 28),
       (14974, 2, 28),
       (14975, 3, 15),
       (14976, 4, 26),
       (14977, 5, 25),
       (14978, 1, 16),
       (14979, 2, 18),
       (14980, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14981, 4, 23),
       (14982, 5, 16),
       (14983, 6, 30),
       (14984, 7, 14),
       (14985, 8, 16),
       (14986, 9, 18),
       (14987, 10, 17),
       (14988, 11, 16),
       (14989, 12, 16),
       (14990, 13, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (14991, 14, 14),
       (14992, 15, 22),
       (14993, 16, 23),
       (14994, 17, 18),
       (14995, 18, 33),
       (14996, 19, 22),
       (14997, 20, 26),
       (14998, 21, 11),
       (14999, 22, 30),
       (15000, 23, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15001, 24, 27),
       (15002, 1, 21),
       (15003, 2, 13),
       (15004, 3, 14),
       (15005, 4, 24),
       (15006, 5, 18),
       (15007, 6, 17),
       (15008, 7, 18),
       (15009, 8, 20),
       (15010, 9, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15011, 10, 21),
       (15012, 11, 14),
       (15013, 12, 17),
       (15014, 13, 19),
       (15015, 14, 19),
       (15016, 15, 31),
       (15017, 16, 35),
       (15018, 17, 30),
       (15019, 18, 14),
       (15020, 19, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15021, 20, 11),
       (15022, 1, 20),
       (15023, 2, 16),
       (15024, 3, 16),
       (15025, 4, 14),
       (15026, 5, 16),
       (15027, 6, 16),
       (15028, 7, 14),
       (15029, 8, 11),
       (15030, 9, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15031, 10, 16),
       (15032, 11, 16),
       (15033, 12, 15),
       (15034, 13, 15),
       (15035, 14, 14),
       (15036, 15, 20),
       (15037, 16, 15),
       (15038, 17, 14),
       (15039, 18, 14),
       (15040, 19, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15041, 20, 18),
       (15042, 21, 13),
       (15043, 22, 14),
       (15044, 23, 13),
       (15045, 24, 14),
       (15046, 25, 19),
       (15047, 26, 20),
       (15048, 27, 23),
       (15049, 28, 28),
       (15050, 1, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15051, 2, 28),
       (15052, 3, 20),
       (15053, 4, 19),
       (15054, 5, 14),
       (15055, 6, 15),
       (15056, 7, 23),
       (15057, 8, 25),
       (15058, 9, 22),
       (15059, 10, 17),
       (15060, 11, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15061, 12, 16),
       (15062, 13, 20),
       (15063, 14, 21),
       (15064, 15, 12),
       (15065, 16, 18),
       (15066, 17, 16),
       (15067, 18, 19),
       (15068, 19, 23),
       (15069, 20, 20),
       (15070, 21, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15071, 22, 18),
       (15072, 23, 19),
       (15073, 1, 37),
       (15074, 2, 12),
       (15075, 3, 18),
       (15076, 4, 18),
       (15077, 5, 14),
       (15078, 6, 18),
       (15079, 7, 14),
       (15080, 8, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15081, 9, 16),
       (15082, 10, 22),
       (15083, 1, 26),
       (15084, 2, 13),
       (15085, 3, 17),
       (15086, 4, 11),
       (15087, 5, 23),
       (15088, 6, 18),
       (15089, 7, 20),
       (15090, 8, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15091, 9, 14),
       (15092, 10, 18),
       (15093, 11, 24),
       (15094, 12, 18),
       (15095, 1, 36),
       (15096, 2, 28),
       (15097, 3, 14),
       (15098, 4, 14),
       (15099, 5, 13),
       (15100, 6, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15101, 7, 15),
       (15102, 8, 14),
       (15103, 9, 16),
       (15104, 10, 22),
       (15105, 11, 18),
       (15106, 12, 14),
       (15107, 13, 17),
       (15108, 14, 17),
       (15109, 15, 15),
       (15110, 16, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15111, 17, 17),
       (15112, 18, 20),
       (15113, 19, 20),
       (15114, 20, 15),
       (15115, 1, 22),
       (15116, 2, 16),
       (15118, 4, 30),
       (15119, 5, 28),
       (15120, 6, 25),
       (15121, 7, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15122, 8, 29),
       (15123, 9, 17),
       (15124, 10, 15),
       (15125, 11, 15),
       (15126, 12, 21),
       (15127, 13, 21),
       (15128, 14, 21),
       (15129, 15, 17),
       (15130, 16, 17),
       (15131, 17, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15132, 18, 15),
       (15133, 19, 16),
       (15134, 20, 26),
       (15135, 21, 21),
       (15136, 22, 13),
       (15137, 23, 13),
       (15138, 24, 16),
       (15139, 25, 16),
       (15140, 26, 20),
       (15141, 27, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15142, 28, 16),
       (15143, 29, 16),
       (15144, 30, 17),
       (15145, 31, 25),
       (15146, 32, 14),
       (15147, 33, 14),
       (15148, 34, 17),
       (15149, 35, 16),
       (15150, 36, 15),
       (15151, 37, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15152, 38, 29),
       (15153, 39, 18),
       (15154, 40, 17),
       (15155, 41, 15),
       (15156, 42, 16),
       (15157, 43, 16),
       (15158, 44, 16),
       (15159, 45, 16),
       (15160, 46, 15),
       (15161, 47, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15162, 48, 16),
       (15163, 49, 21),
       (15164, 50, 23),
       (15165, 51, 19),
       (15166, 52, 19),
       (15167, 53, 17),
       (15168, 54, 20),
       (15169, 55, 28),
       (15170, 56, 16),
       (15171, 57, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15172, 58, 20),
       (15173, 59, 12),
       (15174, 60, 16),
       (15175, 61, 15),
       (15176, 62, 16),
       (15177, 63, 13),
       (15179, 65, 20),
       (15180, 66, 14),
       (15181, 67, 15),
       (15182, 68, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15183, 69, 18),
       (15184, 70, 13),
       (15185, 71, 24),
       (15186, 72, 22),
       (15187, 1, 27),
       (15188, 2, 30),
       (15189, 3, 18),
       (15190, 4, 20),
       (15191, 5, 17),
       (15192, 6, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15193, 7, 11),
       (15194, 8, 23),
       (15195, 9, 26),
       (15196, 10, 30),
       (15197, 11, 25),
       (15198, 12, 19),
       (15199, 13, 25),
       (15200, 1, 35),
       (15201, 2, 16),
       (15202, 3, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15203, 4, 18),
       (15204, 5, 19),
       (15205, 6, 15),
       (15206, 7, 19),
       (15207, 8, 17),
       (15208, 9, 15),
       (15209, 10, 19),
       (15210, 11, 15),
       (15211, 12, 20),
       (15212, 13, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15213, 14, 20),
       (15214, 15, 18),
       (15215, 16, 18),
       (15216, 17, 23),
       (15217, 18, 19),
       (15218, 19, 19),
       (15219, 1, 29),
       (15220, 2, 15),
       (15221, 3, 16),
       (15222, 4, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15223, 5, 27),
       (15224, 6, 15),
       (15225, 7, 26),
       (15226, 8, 19),
       (15227, 9, 16),
       (15228, 10, 25),
       (15229, 11, 15),
       (15230, 12, 20),
       (15231, 13, 16),
       (15232, 14, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15233, 15, 17),
       (15234, 16, 23),
       (15235, 1, 18),
       (15236, 2, 14),
       (15237, 3, 13),
       (15238, 4, 15),
       (15239, 5, 23),
       (15240, 6, 15),
       (15241, 7, 14),
       (15242, 8, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15243, 1, 24),
       (15244, 2, 18),
       (15245, 3, 15),
       (15246, 4, 26),
       (15247, 5, 16),
       (15248, 6, 12),
       (15249, 7, 12),
       (15250, 8, 14),
       (15251, 9, 18),
       (15252, 10, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15253, 11, 16),
       (15254, 12, 14),
       (15255, 13, 15),
       (15256, 14, 18),
       (15257, 15, 13),
       (15258, 16, 14),
       (15259, 17, 18),
       (15260, 18, 20),
       (15261, 1, 26),
       (15262, 2, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15263, 3, 34),
       (15264, 4, 15),
       (15265, 5, 18),
       (15266, 6, 22),
       (15267, 7, 16),
       (15268, 8, 15),
       (15269, 9, 14),
       (15270, 10, 32),
       (15271, 11, 27),
       (15272, 12, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15273, 1, 29),
       (15274, 2, 15),
       (15275, 3, 18),
       (15276, 4, 16),
       (15277, 5, 18),
       (15278, 6, 14),
       (15279, 7, 12),
       (15280, 8, 29),
       (15281, 9, 17),
       (15282, 10, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15283, 11, 14),
       (15284, 12, 16),
       (15285, 13, 16),
       (15286, 1, 21),
       (15287, 2, 19),
       (15288, 3, 17),
       (15289, 4, 18),
       (15290, 5, 21),
       (15291, 6, 16),
       (15292, 7, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15293, 8, 21),
       (15294, 9, 21),
       (15295, 10, 13),
       (15296, 11, 20),
       (15297, 12, 21),
       (15298, 13, 18),
       (15299, 14, 28),
       (15300, 15, 20),
       (15301, 16, 23),
       (15302, 17, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15303, 1, 18),
       (15304, 2, 14),
       (15305, 3, 11),
       (15306, 4, 26),
       (15307, 5, 25),
       (15308, 6, 15),
       (15309, 7, 18),
       (15310, 1, 39),
       (15311, 2, 14),
       (15312, 3, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15313, 4, 21),
       (15314, 5, 27),
       (15315, 6, 15),
       (15316, 7, 16),
       (15317, 8, 26),
       (15318, 9, 25),
       (15319, 10, 17),
       (15320, 11, 14),
       (15321, 12, 17),
       (15322, 13, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15323, 14, 15),
       (15324, 15, 20),
       (15325, 16, 14),
       (15326, 17, 17),
       (15327, 18, 15),
       (15328, 1, 29),
       (15329, 2, 21),
       (15330, 3, 16),
       (15331, 4, 16),
       (15332, 5, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15333, 6, 22),
       (15334, 7, 24),
       (15668, 16, 14),
       (15335, 8, 23),
       (15336, 9, 16),
       (15337, 10, 23),
       (15338, 11, 20),
       (15339, 12, 17),
       (15340, 13, 16),
       (15341, 14, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15342, 15, 20),
       (15343, 16, 17),
       (15344, 17, 18),
       (15345, 18, 16),
       (15346, 19, 29),
       (15347, 20, 15),
       (15348, 21, 14),
       (15349, 22, 15),
       (15350, 23, 16),
       (15351, 24, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15352, 25, 17),
       (15353, 26, 18),
       (15354, 27, 17),
       (15355, 28, 18),
       (15356, 29, 19),
       (15357, 30, 13),
       (15358, 31, 11),
       (15359, 32, 15),
       (15360, 33, 17),
       (15361, 34, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15362, 35, 14),
       (15363, 36, 15),
       (15364, 37, 18),
       (15365, 38, 15),
       (15366, 39, 20),
       (15367, 40, 15),
       (15368, 41, 17),
       (15369, 42, 18),
       (15370, 43, 20),
       (15371, 44, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15372, 45, 15),
       (15373, 46, 19),
       (15374, 47, 19),
       (15375, 48, 22),
       (15376, 49, 15),
       (15377, 50, 22),
       (15378, 51, 17),
       (15379, 52, 9),
       (15380, 1, 20),
       (15381, 2, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15382, 3, 13),
       (15383, 4, 23),
       (15384, 5, 24),
       (15385, 6, 18),
       (15386, 7, 15),
       (15387, 8, 17),
       (15388, 9, 21),
       (15389, 10, 36),
       (15390, 11, 20),
       (15391, 12, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15392, 13, 14),
       (15393, 14, 20),
       (15394, 15, 21),
       (15395, 16, 14),
       (15396, 17, 32),
       (15397, 1, 20),
       (15398, 2, 19),
       (15399, 3, 17),
       (15400, 4, 24),
       (15401, 5, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15402, 6, 16),
       (15403, 7, 22),
       (15404, 8, 15),
       (15405, 9, 16),
       (15406, 10, 15),
       (15407, 11, 17),
       (15408, 12, 17),
       (15409, 13, 20),
       (15410, 14, 26),
       (15411, 15, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15412, 16, 13),
       (15413, 1, 30),
       (15414, 2, 14),
       (15415, 3, 18),
       (15416, 4, 20),
       (15417, 5, 13),
       (15418, 6, 12),
       (15419, 7, 26),
       (15420, 8, 10),
       (15421, 9, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15422, 10, 20),
       (15423, 11, 26),
       (15424, 12, 17),
       (15425, 13, 18),
       (15426, 14, 18),
       (15427, 15, 18),
       (15428, 1, 28),
       (15429, 2, 11),
       (15430, 3, 21),
       (15431, 4, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15432, 5, 14),
       (15433, 1, 17),
       (15434, 2, 15),
       (15435, 3, 13),
       (15436, 4, 13),
       (15437, 5, 13),
       (15438, 6, 12),
       (15439, 7, 15),
       (15440, 8, 15),
       (15441, 9, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15442, 10, 16),
       (15443, 11, 11),
       (15444, 12, 16),
       (15445, 13, 20),
       (15446, 14, 15),
       (15447, 15, 16),
       (15448, 16, 22),
       (15449, 17, 14),
       (15450, 18, 14),
       (15451, 19, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15452, 20, 15),
       (15453, 21, 16),
       (15454, 22, 16),
       (15455, 23, 26),
       (15456, 1, 20),
       (15457, 2, 19),
       (15458, 3, 14),
       (15459, 4, 19),
       (15460, 5, 16),
       (15461, 6, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15462, 7, 29),
       (15463, 8, 17),
       (15464, 9, 12),
       (15465, 10, 29),
       (15466, 11, 15),
       (15467, 1, 14),
       (15468, 2, 15),
       (15469, 3, 14),
       (15470, 4, 18),
       (15471, 5, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15472, 6, 14),
       (15473, 7, 15),
       (15474, 8, 18),
       (15475, 9, 13),
       (15476, 10, 24),
       (15477, 11, 19),
       (15478, 12, 20),
       (15479, 13, 26),
       (15480, 1, 14),
       (15481, 2, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15482, 3, 13),
       (15483, 4, 11),
       (15484, 5, 21),
       (15485, 6, 14),
       (15486, 7, 22),
       (15487, 8, 18),
       (15488, 9, 18),
       (15489, 10, 25),
       (15490, 11, 14),
       (15491, 12, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15492, 1, 29),
       (15493, 2, 19),
       (15494, 3, 27),
       (15495, 4, 19),
       (15496, 5, 16),
       (15497, 6, 15),
       (15498, 7, 16),
       (15500, 9, 22),
       (15501, 1, 17),
       (15502, 2, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15503, 3, 12),
       (15504, 4, 19),
       (15505, 5, 14),
       (15506, 6, 24),
       (15507, 7, 21),
       (15508, 8, 22),
       (15509, 9, 18),
       (15510, 1, 15),
       (15511, 2, 11),
       (15512, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15513, 4, 21),
       (15514, 5, 16),
       (15515, 1, 21),
       (15516, 2, 27),
       (15517, 3, 25),
       (15518, 4, 14),
       (15519, 5, 24),
       (15520, 6, 29),
       (15521, 7, 22),
       (15522, 8, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15523, 1, 30),
       (15524, 2, 27),
       (15525, 3, 16),
       (15526, 4, 16),
       (15527, 5, 15),
       (15528, 6, 19),
       (15529, 7, 16),
       (15530, 8, 18),
       (15531, 9, 14),
       (15532, 10, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15533, 11, 15),
       (15534, 12, 16),
       (15535, 13, 24),
       (15536, 14, 15),
       (15537, 15, 19),
       (15538, 16, 13),
       (15539, 17, 15),
       (15540, 18, 20),
       (15541, 19, 19),
       (15542, 20, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15543, 21, 16),
       (15544, 22, 13),
       (15545, 23, 12),
       (15546, 24, 22),
       (15547, 25, 20),
       (15548, 26, 30),
       (15549, 27, 13),
       (15550, 28, 16),
       (15551, 1, 21),
       (15552, 2, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15553, 3, 11),
       (15554, 4, 15),
       (15555, 5, 17),
       (15556, 6, 12),
       (15557, 7, 15),
       (15558, 8, 13),
       (15559, 9, 14),
       (15560, 10, 16),
       (15561, 11, 20),
       (15562, 12, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15563, 13, 15),
       (15564, 14, 12),
       (15565, 15, 18),
       (15566, 16, 20),
       (15567, 17, 23),
       (15568, 18, 17),
       (15569, 19, 15),
       (15570, 20, 22),
       (15571, 21, 15),
       (15572, 22, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15573, 1, 21),
       (15574, 2, 18),
       (15575, 3, 25),
       (15576, 4, 11),
       (15577, 5, 16),
       (15578, 6, 17),
       (15579, 7, 14),
       (15580, 8, 18),
       (15581, 9, 21),
       (15582, 10, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15583, 11, 16),
       (15584, 12, 16),
       (15585, 13, 18),
       (15586, 14, 27),
       (15587, 15, 25),
       (15588, 16, 17),
       (15589, 17, 17),
       (15590, 18, 17),
       (15591, 19, 13),
       (15592, 20, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15593, 21, 14),
       (15594, 22, 15),
       (15595, 23, 14),
       (15596, 24, 22),
       (15597, 25, 18),
       (15598, 26, 15),
       (15599, 27, 16),
       (15600, 28, 16),
       (15601, 29, 20),
       (15602, 30, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15603, 31, 15),
       (15604, 32, 16),
       (15605, 33, 23),
       (15606, 34, 13),
       (15607, 35, 24),
       (15608, 1, 17),
       (15609, 2, 15),
       (15612, 5, 17),
       (15613, 6, 15),
       (15614, 7, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15615, 8, 17),
       (15616, 9, 14),
       (15617, 10, 16),
       (15618, 11, 16),
       (15619, 12, 17),
       (15620, 13, 15),
       (15621, 14, 16),
       (15622, 15, 14),
       (15623, 16, 17),
       (15624, 17, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15625, 18, 14),
       (15626, 19, 16),
       (15627, 20, 17),
       (15628, 21, 14),
       (15629, 22, 13),
       (15630, 23, 14),
       (15631, 24, 14),
       (15632, 25, 15),
       (15633, 26, 12),
       (15634, 27, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15635, 28, 15),
       (15636, 29, 11),
       (15637, 30, 12),
       (15638, 31, 15),
       (15639, 32, 13),
       (15640, 33, 17),
       (15641, 34, 14),
       (15642, 35, 19),
       (15643, 36, 17),
       (15644, 37, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15645, 38, 16),
       (15646, 39, 16),
       (15647, 40, 15),
       (15648, 41, 18),
       (15649, 42, 11),
       (15650, 43, 14),
       (15651, 44, 20),
       (15652, 45, 14),
       (15653, 1, 19),
       (15654, 2, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15655, 3, 15),
       (15656, 4, 20),
       (15657, 5, 27),
       (15658, 6, 15),
       (15659, 7, 28),
       (15660, 8, 20),
       (15661, 9, 23),
       (15662, 10, 22),
       (15663, 11, 14),
       (15664, 12, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15669, 17, 14),
       (15670, 18, 15),
       (15671, 19, 12),
       (15673, 21, 13),
       (15674, 22, 15),
       (15675, 23, 30),
       (15676, 24, 12),
       (15677, 25, 14),
       (15678, 26, 14),
       (15679, 27, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15680, 28, 15),
       (15681, 29, 17),
       (15682, 30, 14),
       (15683, 31, 14),
       (15684, 32, 20),
       (15685, 33, 15),
       (15686, 34, 11),
       (15687, 35, 11),
       (15688, 36, 11),
       (15689, 37, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15690, 38, 30),
       (15691, 39, 15),
       (15692, 40, 16),
       (15693, 41, 19),
       (15694, 42, 15),
       (15695, 43, 21),
       (15696, 44, 11),
       (15697, 45, 17),
       (15698, 46, 15),
       (15699, 47, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15700, 48, 23),
       (15701, 1, 16),
       (15702, 2, 18),
       (15703, 3, 21),
       (15704, 4, 16),
       (15705, 5, 9),
       (15706, 6, 17),
       (15707, 7, 18),
       (15708, 8, 20),
       (15709, 9, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15710, 10, 18),
       (15711, 11, 17),
       (15712, 12, 18),
       (15713, 13, 17),
       (15714, 14, 18),
       (15715, 15, 20),
       (15716, 16, 17),
       (15717, 17, 13),
       (15718, 18, 17),
       (15719, 19, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15720, 20, 14),
       (15721, 21, 20),
       (15722, 22, 15),
       (15723, 23, 16),
       (15724, 24, 13),
       (15725, 25, 15),
       (15726, 26, 21),
       (15727, 27, 18),
       (15728, 28, 17),
       (15729, 29, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15730, 30, 17),
       (15731, 31, 20),
       (15732, 32, 21),
       (15733, 33, 13),
       (15734, 34, 16),
       (15735, 35, 16),
       (15736, 36, 17),
       (15737, 37, 13),
       (15738, 38, 19),
       (15739, 39, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15740, 40, 19),
       (15741, 41, 17),
       (15742, 42, 16),
       (15743, 43, 18),
       (15744, 1, 26),
       (15745, 2, 11),
       (15746, 3, 22),
       (15747, 4, 16),
       (15748, 5, 16),
       (15749, 6, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15750, 7, 21),
       (15751, 8, 19),
       (15752, 9, 17),
       (15753, 10, 15),
       (15754, 11, 19),
       (15755, 12, 14),
       (15756, 13, 17),
       (15757, 1, 19),
       (15758, 2, 26),
       (15759, 3, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15760, 4, 14),
       (15761, 5, 14),
       (15762, 6, 17),
       (15763, 7, 18),
       (15764, 8, 12),
       (15765, 9, 11),
       (15766, 10, 19),
       (15767, 11, 17),
       (15768, 12, 22),
       (15769, 13, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15770, 14, 22),
       (15771, 15, 19),
       (15772, 16, 23),
       (15773, 17, 22),
       (15774, 18, 26),
       (15775, 19, 22),
       (15776, 20, 19),
       (15777, 21, 23),
       (15778, 22, 14),
       (15779, 23, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15780, 24, 13),
       (15781, 25, 17),
       (15782, 26, 14),
       (15783, 27, 16),
       (15784, 28, 21),
       (15785, 29, 21),
       (15786, 30, 19),
       (15787, 31, 21),
       (15788, 1, 24),
       (15789, 2, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15790, 3, 29),
       (15791, 4, 19),
       (15792, 5, 17),
       (15793, 6, 24),
       (15794, 7, 17),
       (15795, 1, 24),
       (15796, 2, 16),
       (15797, 3, 13),
       (15798, 4, 15),
       (15799, 5, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15800, 6, 19),
       (15801, 7, 15),
       (15802, 8, 15),
       (15803, 9, 21),
       (15804, 10, 25),
       (15805, 1, 17),
       (15806, 2, 16),
       (15807, 3, 14),
       (15808, 4, 17),
       (15809, 5, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15810, 6, 15),
       (15811, 7, 16),
       (15812, 8, 18),
       (15813, 9, 22),
       (15814, 10, 25),
       (15815, 1, 15),
       (15816, 2, 14),
       (15817, 3, 21),
       (15818, 4, 13),
       (15819, 5, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15820, 6, 16),
       (15821, 7, 18),
       (15822, 8, 15),
       (15823, 9, 20),
       (15824, 1, 18),
       (15825, 2, 8),
       (15826, 3, 12),
       (15827, 4, 11),
       (15828, 5, 16),
       (15829, 6, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15830, 7, 18),
       (15831, 8, 17),
       (15832, 1, 24),
       (15833, 2, 11),
       (15834, 3, 14),
       (15835, 4, 13),
       (15836, 5, 15),
       (15837, 6, 15),
       (15838, 7, 21),
       (15839, 8, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15840, 9, 14),
       (15841, 10, 16),
       (15842, 11, 15),
       (15843, 12, 25),
       (15844, 13, 12),
       (15845, 14, 11),
       (15846, 15, 11),
       (15847, 16, 19),
       (15848, 17, 13),
       (15849, 18, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15850, 1, 12),
       (15851, 2, 20),
       (15852, 3, 21),
       (15853, 4, 17),
       (15854, 5, 11),
       (15855, 6, 13),
       (15856, 7, 15),
       (15857, 8, 18),
       (15858, 9, 12),
       (15859, 10, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15860, 11, 10),
       (15861, 12, 13),
       (15862, 13, 15),
       (15863, 14, 16),
       (15864, 15, 13),
       (15865, 16, 22),
       (15866, 17, 18),
       (15867, 18, 16),
       (15868, 19, 18),
       (15869, 1, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15870, 2, 19),
       (15871, 1, 16),
       (15872, 2, 11),
       (15873, 3, 14),
       (15874, 4, 14),
       (15875, 5, 19),
       (15876, 6, 16),
       (15877, 7, 22),
       (15878, 8, 15),
       (15879, 9, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15880, 10, 16),
       (15881, 11, 20),
       (15882, 12, 25),
       (15883, 13, 15),
       (15884, 14, 13),
       (15885, 15, 21),
       (15886, 16, 15),
       (15887, 17, 13),
       (15888, 18, 15),
       (15889, 19, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15890, 20, 13),
       (15891, 21, 17),
       (15892, 22, 14),
       (15893, 23, 12),
       (15894, 24, 17),
       (15895, 25, 16),
       (15896, 26, 21),
       (15897, 27, 22),
       (15898, 28, 20),
       (15899, 29, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15900, 1, 18),
       (15901, 2, 15),
       (15902, 3, 11),
       (15903, 4, 13),
       (15904, 5, 11),
       (15905, 6, 17),
       (15906, 7, 17),
       (15907, 8, 11),
       (15908, 9, 18),
       (15909, 10, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15910, 11, 17),
       (15911, 12, 10),
       (15912, 13, 13),
       (15913, 14, 16),
       (15914, 15, 13),
       (15915, 16, 14),
       (15916, 17, 17),
       (15917, 18, 15),
       (15918, 19, 14),
       (15919, 20, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15920, 21, 15),
       (15921, 22, 14),
       (15922, 23, 16),
       (15923, 24, 10),
       (15924, 25, 15),
       (15925, 26, 13),
       (15926, 27, 18),
       (15927, 28, 13),
       (15928, 29, 14),
       (15929, 30, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15930, 31, 13),
       (15931, 32, 15),
       (15932, 33, 19),
       (15933, 34, 19),
       (15934, 35, 16),
       (15935, 36, 11),
       (15936, 37, 14),
       (15937, 38, 16),
       (15938, 39, 14),
       (15939, 40, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15940, 41, 18),
       (15941, 42, 18),
       (15942, 43, 20),
       (15943, 44, 12),
       (15944, 45, 13),
       (15945, 46, 17),
       (15946, 47, 13),
       (15947, 48, 22),
       (15948, 49, 15),
       (15949, 50, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15950, 51, 17),
       (15951, 52, 14),
       (15952, 53, 16),
       (15953, 54, 13),
       (15954, 55, 16),
       (15955, 56, 11),
       (15956, 57, 15),
       (15957, 58, 17),
       (15958, 59, 13),
       (15959, 60, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15960, 61, 17),
       (15961, 62, 16),
       (15962, 63, 18),
       (15963, 64, 14),
       (15964, 65, 15),
       (15965, 66, 14),
       (15966, 67, 14),
       (15967, 68, 11),
       (15968, 69, 18),
       (15969, 70, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15970, 71, 17),
       (15971, 72, 16),
       (15972, 73, 19),
       (15973, 74, 18),
       (15974, 75, 18),
       (15975, 76, 18),
       (15976, 77, 18),
       (15977, 78, 21),
       (15978, 79, 15),
       (15979, 80, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15980, 81, 14),
       (15981, 82, 15),
       (15982, 83, 19),
       (15983, 84, 19),
       (15984, 85, 15),
       (15985, 86, 13),
       (15986, 87, 14),
       (15987, 88, 15),
       (15988, 89, 12),
       (15989, 90, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (15990, 91, 15),
       (15991, 92, 16),
       (15992, 93, 14),
       (15993, 94, 12),
       (15994, 95, 16),
       (15995, 96, 15),
       (15996, 97, 15),
       (15997, 98, 15),
       (15998, 99, 15),
       (15999, 100, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16000, 101, 16),
       (16001, 102, 14),
       (16002, 103, 16),
       (16003, 104, 13),
       (16004, 105, 15),
       (16005, 106, 15),
       (16006, 107, 14),
       (16007, 108, 18),
       (16008, 109, 15),
       (16009, 110, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16010, 111, 19),
       (16011, 112, 16),
       (16012, 113, 17),
       (16013, 114, 14),
       (16014, 115, 16),
       (16015, 116, 20),
       (16016, 117, 18),
       (16017, 118, 18),
       (16018, 119, 17),
       (16019, 120, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16020, 121, 14),
       (16021, 122, 14),
       (16022, 123, 12),
       (16023, 124, 14),
       (16024, 125, 14),
       (16025, 126, 15),
       (16026, 127, 12),
       (16027, 128, 19),
       (16028, 129, 12),
       (16029, 130, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16030, 131, 14),
       (16031, 132, 21),
       (16032, 133, 16),
       (16033, 134, 14),
       (16034, 135, 14),
       (16035, 136, 14),
       (16036, 137, 12),
       (16037, 138, 11),
       (16038, 139, 13),
       (16039, 140, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16040, 141, 13),
       (16041, 142, 12),
       (16042, 143, 15),
       (16043, 144, 14),
       (16044, 145, 18),
       (16045, 146, 14),
       (16046, 147, 15),
       (16047, 148, 14),
       (16048, 149, 16),
       (16049, 150, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16050, 151, 12),
       (16051, 152, 16),
       (16052, 153, 15),
       (16053, 154, 14),
       (16054, 155, 13),
       (16055, 156, 14),
       (16056, 157, 16),
       (16057, 158, 14),
       (16058, 159, 15),
       (16059, 160, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16060, 161, 18),
       (16061, 162, 12),
       (16062, 163, 12),
       (16063, 164, 14),
       (16064, 165, 16),
       (16065, 166, 14),
       (16066, 167, 12),
       (16067, 168, 16),
       (16068, 169, 18),
       (16069, 170, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16070, 171, 12),
       (16071, 172, 14),
       (16072, 173, 15),
       (16073, 174, 15),
       (16074, 175, 16),
       (16075, 176, 19),
       (16076, 1, 17),
       (16077, 2, 14),
       (16078, 3, 18),
       (16079, 4, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16080, 5, 17),
       (16081, 6, 13),
       (16082, 7, 13),
       (16083, 1, 21),
       (16084, 2, 11),
       (16085, 3, 17),
       (16086, 4, 11),
       (16087, 5, 13),
       (16088, 6, 14),
       (16089, 7, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16090, 8, 18),
       (16091, 1, 24),
       (16092, 2, 10),
       (16093, 3, 12),
       (16094, 4, 24),
       (16095, 5, 15),
       (16096, 6, 13),
       (16097, 7, 11),
       (16098, 8, 15),
       (16099, 9, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16100, 1, 21),
       (16101, 2, 40),
       (16102, 3, 18),
       (16103, 4, 22),
       (16104, 1, 23),
       (16105, 2, 18),
       (16106, 3, 15),
       (16107, 4, 14),
       (16108, 5, 10),
       (16109, 6, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16110, 7, 23),
       (16111, 8, 14),
       (16112, 1, 23),
       (16113, 2, 22),
       (16114, 3, 25),
       (16115, 4, 19),
       (16116, 5, 26),
       (16117, 1, 22),
       (16118, 2, 26),
       (16119, 3, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16120, 4, 13),
       (16121, 5, 10),
       (16122, 6, 22),
       (16123, 1, 31),
       (16179, 3, 17),
       (16124, 2, 28),
       (16125, 3, 17),
       (16126, 4, 16),
       (16127, 5, 28),
       (16128, 1, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16129, 2, 21),
       (16130, 3, 25),
       (16131, 4, 11),
       (16132, 5, 20),
       (16133, 6, 12),
       (16134, 1, 21),
       (16135, 2, 19),
       (16136, 3, 12),
       (16137, 4, 13),
       (16138, 5, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16139, 6, 16),
       (16140, 7, 15),
       (16141, 8, 23),
       (16142, 1, 17),
       (16143, 2, 16),
       (16144, 3, 12),
       (16145, 4, 12),
       (16146, 5, 16),
       (16147, 6, 21),
       (16148, 7, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16150, 1, 33),
       (16151, 2, 25),
       (16152, 3, 13),
       (16153, 1, 13),
       (16154, 2, 14),
       (16155, 3, 18),
       (16156, 4, 14),
       (16157, 5, 17),
       (16158, 6, 17),
       (16159, 7, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16160, 8, 15),
       (16161, 9, 15),
       (16162, 10, 15),
       (16163, 11, 26),
       (16164, 12, 26),
       (16165, 13, 13),
       (16166, 14, 17),
       (16167, 15, 14),
       (16168, 16, 17),
       (16169, 17, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16170, 18, 15),
       (16171, 1, 23),
       (16172, 2, 29),
       (16173, 3, 24),
       (16174, 1, 24),
       (16175, 2, 12),
       (16176, 3, 14),
       (16177, 1, 17),
       (16178, 2, 18),
       (16180, 4, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16181, 5, 16),
       (16182, 6, 20),
       (16183, 7, 28),
       (16184, 8, 13),
       (16185, 9, 20),
       (16186, 10, 9),
       (16187, 11, 17),
       (16188, 12, 14),
       (16189, 13, 16),
       (16190, 14, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16191, 15, 16),
       (16192, 16, 15),
       (16193, 17, 16),
       (16194, 18, 17),
       (16195, 19, 15),
       (16196, 20, 15),
       (16197, 21, 14),
       (16198, 1, 16),
       (16199, 2, 15),
       (16200, 3, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16201, 4, 14),
       (16202, 5, 15),
       (16203, 6, 17),
       (16204, 7, 13),
       (16205, 8, 13),
       (16206, 9, 15),
       (16207, 10, 16),
       (16208, 11, 14),
       (16209, 12, 16),
       (16210, 13, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16211, 14, 17),
       (16212, 15, 17),
       (16213, 16, 16),
       (16214, 17, 13),
       (16215, 18, 11),
       (16216, 19, 12),
       (16217, 20, 12),
       (16218, 21, 14),
       (16219, 22, 14),
       (16220, 23, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16221, 24, 14),
       (16222, 25, 13),
       (16223, 26, 15),
       (16224, 1, 17),
       (16225, 2, 13),
       (16226, 3, 30),
       (16228, 5, 14),
       (16229, 6, 25),
       (16230, 7, 24),
       (16231, 8, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16232, 9, 15),
       (16233, 1, 24),
       (16234, 2, 31),
       (16235, 3, 19),
       (16236, 4, 22),
       (16237, 5, 17),
       (16238, 6, 20),
       (16239, 7, 32),
       (16240, 8, 23),
       (16241, 1, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16242, 2, 14),
       (16243, 3, 17),
       (16244, 4, 18),
       (16245, 5, 14),
       (16246, 6, 17),
       (16247, 7, 16),
       (16248, 8, 21),
       (16249, 9, 18),
       (16250, 10, 15),
       (16251, 11, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16252, 12, 25),
       (16253, 13, 17),
       (16254, 14, 25),
       (16255, 15, 24),
       (16256, 16, 32),
       (16257, 17, 18),
       (16258, 18, 22),
       (16259, 19, 16),
       (16260, 20, 15),
       (16261, 21, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16262, 22, 12),
       (16263, 23, 15),
       (16264, 24, 18),
       (16265, 1, 24),
       (16266, 2, 15),
       (16267, 3, 15),
       (16268, 4, 25),
       (16269, 5, 25),
       (16270, 6, 19),
       (16271, 7, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16272, 8, 19),
       (16273, 9, 20),
       (16274, 10, 22),
       (16275, 11, 20),
       (16276, 12, 17),
       (16277, 13, 17),
       (16278, 1, 26),
       (16279, 2, 21),
       (16280, 3, 15),
       (16281, 4, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16282, 5, 39),
       (16283, 6, 22),
       (16284, 7, 18),
       (16285, 8, 22),
       (16286, 9, 21),
       (16287, 10, 14),
       (16288, 1, 29),
       (16289, 2, 14),
       (16290, 3, 25),
       (16291, 4, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16292, 5, 21),
       (16293, 6, 22),
       (16294, 7, 28),
       (16295, 1, 25),
       (16296, 2, 18),
       (16297, 3, 33),
       (16298, 4, 14),
       (16299, 5, 21),
       (16300, 6, 17),
       (16301, 7, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16302, 8, 34),
       (16303, 9, 15),
       (16304, 10, 23),
       (16305, 11, 19),
       (16306, 12, 22),
       (16307, 1, 22),
       (16308, 2, 27),
       (16309, 3, 22),
       (16310, 4, 15),
       (16311, 5, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16312, 6, 14),
       (16313, 7, 22),
       (16314, 8, 15),
       (16315, 9, 23),
       (16316, 10, 18),
       (16317, 11, 26),
       (16318, 12, 26),
       (16319, 13, 24),
       (16320, 14, 24),
       (16321, 15, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16322, 1, 26),
       (16323, 2, 17),
       (16324, 3, 14),
       (16325, 4, 15),
       (16326, 5, 16),
       (16327, 6, 18),
       (16328, 7, 16),
       (16329, 8, 13),
       (16330, 9, 15),
       (16331, 10, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16332, 11, 15),
       (16333, 12, 21),
       (16334, 13, 14),
       (16335, 14, 15),
       (16336, 15, 17),
       (16337, 16, 13),
       (16338, 17, 14),
       (16339, 18, 19),
       (16340, 19, 21),
       (16341, 20, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16342, 21, 21),
       (16343, 1, 9),
       (16344, 2, 20),
       (16345, 3, 19),
       (16346, 4, 17),
       (16347, 5, 20),
       (16348, 6, 19),
       (16349, 7, 17),
       (16350, 8, 20),
       (16351, 9, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16352, 10, 16),
       (16353, 1, 22),
       (16354, 2, 13),
       (16355, 3, 12),
       (16356, 4, 15),
       (16357, 5, 13),
       (16358, 6, 13),
       (16359, 7, 14),
       (16360, 8, 21),
       (16361, 9, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16362, 10, 20),
       (16363, 11, 16),
       (16364, 12, 10),
       (16365, 13, 17),
       (16366, 14, 16),
       (16367, 15, 13),
       (16368, 16, 13),
       (16369, 17, 14),
       (16370, 18, 19),
       (16371, 19, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16372, 20, 22),
       (16373, 1, 15),
       (16374, 2, 13),
       (16375, 3, 14),
       (16376, 4, 15),
       (16377, 5, 15),
       (16378, 6, 20),
       (16379, 7, 12),
       (16380, 8, 12),
       (16381, 9, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16382, 10, 10),
       (16383, 11, 15),
       (16384, 12, 10),
       (16385, 13, 23),
       (16386, 14, 31),
       (16387, 1, 19),
       (16388, 2, 19),
       (16389, 3, 19),
       (16390, 4, 15),
       (16391, 5, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16392, 6, 20),
       (16393, 7, 12),
       (16394, 8, 14),
       (16395, 9, 17),
       (16396, 1, 17),
       (16397, 2, 14),
       (16398, 3, 12),
       (16399, 4, 14),
       (16400, 5, 12),
       (16401, 6, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16402, 1, 12),
       (16403, 2, 12),
       (16404, 3, 13),
       (16405, 4, 14),
       (16406, 5, 22),
       (16407, 6, 17),
       (16408, 7, 17),
       (16409, 8, 17),
       (16410, 9, 17),
       (16411, 10, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16412, 11, 22),
       (16413, 12, 19),
       (16414, 13, 14),
       (16415, 14, 14),
       (16416, 15, 17),
       (16417, 16, 14),
       (16418, 17, 14),
       (16419, 18, 16),
       (16420, 19, 22),
       (16421, 20, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16422, 21, 22),
       (16423, 22, 20),
       (16424, 23, 23),
       (16425, 24, 20),
       (16426, 25, 16),
       (16427, 26, 18),
       (16428, 27, 23),
       (16429, 28, 23),
       (16430, 29, 14),
       (16431, 30, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16432, 31, 19),
       (16433, 32, 19),
       (16434, 33, 17),
       (16435, 1, 16),
       (16436, 2, 15),
       (16437, 3, 14),
       (16438, 4, 15),
       (16439, 5, 15),
       (16440, 6, 13),
       (16441, 7, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16442, 8, 16),
       (16443, 9, 14),
       (16444, 10, 16),
       (16445, 11, 10),
       (16446, 12, 16),
       (16447, 13, 14),
       (16448, 14, 13),
       (16449, 15, 12),
       (16450, 16, 17),
       (16451, 17, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16452, 18, 13),
       (16453, 19, 17),
       (16454, 20, 18),
       (16455, 21, 16),
       (16456, 22, 20),
       (16457, 1, 14),
       (16458, 2, 16),
       (16459, 3, 21),
       (16460, 4, 16),
       (16461, 5, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16462, 6, 13),
       (16463, 7, 14),
       (16464, 8, 13),
       (16465, 9, 15),
       (16466, 10, 17),
       (16467, 11, 15),
       (16468, 12, 17),
       (16469, 13, 14),
       (16470, 14, 20),
       (16471, 15, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16472, 16, 17),
       (16473, 17, 13),
       (16474, 18, 22),
       (16475, 19, 13),
       (16476, 20, 16),
       (16477, 21, 15),
       (16478, 22, 14),
       (16479, 23, 15),
       (16480, 24, 21),
       (16481, 25, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16482, 26, 15),
       (16483, 27, 23),
       (16484, 28, 22),
       (16485, 29, 13),
       (16486, 30, 15),
       (16487, 31, 14),
       (16488, 32, 16),
       (16489, 33, 20),
       (16490, 34, 14),
       (16491, 35, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16492, 1, 14),
       (16493, 2, 12),
       (16494, 3, 19),
       (16495, 4, 20),
       (16496, 5, 15),
       (16497, 6, 16),
       (16498, 7, 16),
       (16499, 8, 19),
       (16500, 9, 20),
       (16501, 10, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16502, 11, 18),
       (16503, 12, 18),
       (16504, 13, 17),
       (16505, 14, 18),
       (16506, 15, 13),
       (16507, 16, 21),
       (16508, 17, 14),
       (16509, 18, 21),
       (16510, 19, 16),
       (16511, 20, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16512, 21, 16),
       (16513, 22, 16),
       (16514, 23, 16),
       (16515, 24, 15),
       (16516, 25, 15),
       (16517, 26, 15),
       (16518, 27, 16),
       (16519, 1, 13),
       (16520, 2, 13),
       (16521, 3, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16522, 4, 16),
       (16523, 5, 13),
       (16524, 6, 20),
       (16525, 7, 17),
       (16526, 8, 16),
       (16527, 9, 14),
       (16528, 10, 18),
       (16529, 11, 16),
       (16530, 12, 13),
       (16531, 13, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16532, 14, 16),
       (16533, 15, 16),
       (16534, 16, 14),
       (16535, 17, 13),
       (16536, 18, 14),
       (16537, 19, 26),
       (16538, 20, 20),
       (16539, 21, 19),
       (16540, 22, 19),
       (16541, 23, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16542, 1, 20),
       (16543, 2, 19),
       (16544, 3, 26),
       (16545, 4, 12),
       (16546, 5, 22),
       (16547, 6, 13),
       (16548, 7, 8),
       (16549, 8, 14),
       (16550, 9, 16),
       (16551, 10, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16552, 11, 16),
       (16553, 12, 16),
       (16554, 13, 17),
       (16555, 14, 13),
       (16556, 15, 18),
       (16557, 16, 16),
       (16558, 17, 12),
       (16559, 18, 15),
       (16560, 19, 14),
       (16561, 20, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16562, 21, 12),
       (16563, 22, 25),
       (16564, 23, 21),
       (16565, 24, 16),
       (16566, 25, 17),
       (16567, 26, 24),
       (16568, 27, 15),
       (16569, 28, 14),
       (16570, 29, 18),
       (16571, 30, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16572, 31, 19),
       (16573, 32, 21),
       (16574, 33, 15),
       (16575, 34, 19),
       (16576, 35, 17),
       (16577, 1, 13),
       (16578, 2, 15),
       (16579, 3, 14),
       (16580, 4, 13),
       (16581, 5, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16582, 6, 14),
       (16583, 7, 19),
       (16584, 8, 16),
       (16585, 9, 20),
       (16586, 10, 18),
       (16587, 11, 14),
       (16588, 12, 19),
       (16589, 13, 17),
       (16590, 14, 15),
       (16591, 15, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16592, 16, 18),
       (16593, 17, 11),
       (16594, 18, 18),
       (16595, 19, 14),
       (16596, 20, 18),
       (16597, 21, 21),
       (16598, 22, 24),
       (16599, 23, 24),
       (16600, 24, 16),
       (16601, 25, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16602, 26, 16),
       (16603, 27, 15),
       (16604, 1, 11),
       (16605, 2, 16),
       (16606, 3, 20),
       (16607, 4, 16),
       (16608, 5, 14),
       (16609, 6, 18),
       (16610, 7, 15),
       (16611, 8, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16612, 9, 16),
       (16613, 10, 13),
       (16614, 11, 22),
       (16615, 12, 14),
       (16616, 13, 23),
       (16617, 14, 13),
       (16618, 15, 9),
       (16619, 16, 14),
       (16620, 17, 16),
       (16621, 18, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16622, 19, 17),
       (16623, 20, 16),
       (16624, 21, 19),
       (16625, 22, 15),
       (16626, 23, 14),
       (16627, 24, 18),
       (16628, 25, 13),
       (16629, 26, 22),
       (16630, 27, 20),
       (16631, 28, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16632, 29, 26),
       (16633, 30, 20),
       (16634, 31, 15),
       (16635, 32, 16),
       (16636, 33, 10),
       (16637, 34, 20),
       (16638, 35, 13),
       (16639, 36, 18),
       (16640, 1, 13),
       (16641, 2, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16642, 3, 16),
       (16643, 4, 21),
       (16644, 5, 16),
       (16645, 6, 15),
       (16646, 7, 21),
       (16647, 8, 18),
       (16648, 9, 23),
       (16649, 10, 19),
       (16650, 11, 18),
       (16651, 12, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16652, 13, 12),
       (16653, 14, 20),
       (16654, 15, 14),
       (16655, 16, 22),
       (16656, 17, 12),
       (16657, 18, 19),
       (16658, 1, 22),
       (16659, 2, 11),
       (16660, 3, 21),
       (16661, 4, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16662, 5, 22),
       (16663, 6, 17),
       (16664, 7, 16),
       (16665, 8, 14),
       (16666, 9, 16),
       (16667, 10, 15),
       (16668, 11, 19),
       (16669, 12, 10),
       (16670, 13, 26),
       (16671, 14, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16672, 15, 18),
       (16673, 16, 16),
       (16674, 17, 17),
       (16675, 18, 18),
       (16676, 19, 18),
       (16677, 20, 18),
       (16678, 21, 16),
       (16679, 22, 14),
       (16680, 23, 20),
       (16681, 24, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16682, 25, 17),
       (16683, 26, 21),
       (16684, 27, 16),
       (16685, 28, 17),
       (16686, 29, 21),
       (16687, 30, 16),
       (16688, 31, 17),
       (16689, 32, 18),
       (16690, 1, 16),
       (16691, 2, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16692, 3, 18),
       (16693, 4, 14),
       (16694, 5, 19),
       (16695, 6, 19),
       (16696, 7, 16),
       (16697, 8, 15),
       (16698, 9, 18),
       (16699, 10, 19),
       (16700, 11, 21),
       (16701, 12, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16702, 13, 22),
       (16703, 14, 18),
       (16704, 15, 19),
       (16705, 16, 11),
       (16706, 17, 19),
       (16707, 18, 15),
       (16708, 19, 22),
       (16709, 20, 23),
       (16710, 21, 23),
       (16711, 22, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16712, 23, 17),
       (16713, 24, 24),
       (16714, 25, 17),
       (16715, 26, 22),
       (16716, 27, 19),
       (16717, 28, 18),
       (16718, 29, 22),
       (16719, 30, 18),
       (16720, 31, 18),
       (16721, 1, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16722, 2, 18),
       (16723, 3, 19),
       (16724, 4, 21),
       (16725, 5, 16),
       (16726, 6, 22),
       (16727, 7, 16),
       (16728, 8, 21),
       (16729, 9, 20),
       (16730, 10, 19),
       (16731, 11, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16732, 12, 17),
       (16733, 13, 22),
       (16734, 14, 27),
       (16735, 15, 20),
       (16736, 16, 14),
       (16737, 17, 13),
       (16738, 18, 20),
       (16739, 19, 19),
       (16740, 20, 19),
       (16741, 21, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16742, 22, 16),
       (16743, 23, 13),
       (16744, 24, 17),
       (16745, 25, 18),
       (16746, 26, 19),
       (16747, 27, 22),
       (16748, 28, 17),
       (16749, 1, 15),
       (16750, 2, 21),
       (16751, 3, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16752, 4, 20),
       (16753, 5, 16),
       (16754, 6, 15),
       (16755, 7, 20),
       (16756, 8, 17),
       (16757, 9, 17),
       (16758, 10, 13),
       (16759, 11, 17),
       (16760, 12, 18),
       (16761, 13, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16762, 14, 20),
       (16763, 15, 13),
       (16764, 16, 13),
       (16765, 17, 13),
       (16766, 18, 19),
       (16767, 19, 20),
       (16768, 20, 19),
       (16769, 21, 12),
       (16770, 22, 24),
       (16771, 23, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17088, 8, 14),
       (16772, 24, 17),
       (16773, 25, 18),
       (16774, 1, 17),
       (16775, 2, 19),
       (16776, 3, 22),
       (16777, 4, 19),
       (16778, 5, 13),
       (16779, 6, 18),
       (16780, 7, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16781, 8, 18),
       (16782, 9, 14),
       (16783, 10, 16),
       (16784, 11, 17),
       (16785, 12, 20),
       (16786, 13, 15),
       (16787, 14, 21),
       (16788, 15, 15),
       (16789, 16, 18),
       (16790, 17, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16791, 18, 12),
       (16792, 19, 17),
       (16793, 20, 16),
       (16794, 21, 18),
       (16795, 22, 19),
       (16796, 23, 17),
       (16797, 24, 17),
       (16798, 25, 13),
       (16799, 26, 18),
       (16800, 27, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16801, 28, 23),
       (16802, 29, 20),
       (16803, 30, 18),
       (16804, 31, 19),
       (16805, 32, 19),
       (16806, 33, 24),
       (16807, 34, 13),
       (16808, 35, 22),
       (16809, 1, 14),
       (16810, 2, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16811, 3, 17),
       (16812, 4, 18),
       (16813, 5, 15),
       (16814, 6, 19),
       (16815, 7, 17),
       (16816, 8, 20),
       (16817, 9, 19),
       (16818, 10, 18),
       (16819, 11, 18),
       (16820, 12, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16821, 13, 17),
       (16822, 14, 18),
       (16823, 15, 21),
       (16824, 16, 15),
       (16825, 17, 17),
       (16826, 18, 16),
       (16827, 19, 22),
       (16828, 20, 15),
       (16829, 21, 20),
       (16830, 22, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16831, 23, 21),
       (16832, 24, 17),
       (16833, 25, 19),
       (16834, 26, 13),
       (16835, 27, 18),
       (16836, 28, 19),
       (16837, 29, 15),
       (16838, 30, 16),
       (16839, 31, 15),
       (16840, 32, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16841, 33, 15),
       (16842, 1, 18),
       (16843, 2, 18),
       (16844, 3, 12),
       (16845, 4, 18),
       (16846, 5, 23),
       (16847, 6, 19),
       (16848, 7, 19),
       (16849, 8, 12),
       (16850, 9, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16851, 10, 18),
       (16852, 11, 18),
       (16853, 12, 17),
       (16854, 13, 15),
       (16855, 14, 18),
       (16856, 15, 22),
       (16857, 16, 22),
       (16858, 17, 19),
       (16859, 18, 12),
       (17547, 9, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16860, 19, 21),
       (16861, 20, 19),
       (16862, 21, 17),
       (16863, 22, 21),
       (16864, 23, 15),
       (16865, 24, 16),
       (16866, 25, 20),
       (16867, 26, 16),
       (16868, 27, 16),
       (16869, 28, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16870, 29, 18),
       (16871, 30, 21),
       (16872, 31, 18),
       (16873, 32, 24),
       (16874, 33, 16),
       (16875, 1, 17),
       (16876, 2, 25),
       (16877, 3, 17),
       (16878, 4, 18),
       (16879, 5, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16880, 6, 18),
       (16881, 7, 14),
       (16882, 8, 21),
       (16883, 9, 18),
       (16884, 10, 17),
       (16885, 11, 16),
       (16886, 12, 18),
       (16887, 13, 13),
       (16888, 14, 20),
       (16889, 15, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16890, 16, 20),
       (16891, 17, 14),
       (16892, 18, 17),
       (16893, 19, 15),
       (16894, 20, 20),
       (16895, 21, 20),
       (16896, 22, 16),
       (16897, 23, 17),
       (16898, 24, 24),
       (16899, 25, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16900, 26, 17),
       (16901, 27, 21),
       (16902, 28, 22),
       (16903, 1, 15),
       (16904, 2, 16),
       (16905, 3, 14),
       (16906, 4, 21),
       (16907, 5, 19),
       (16908, 6, 14),
       (16909, 7, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16910, 8, 18),
       (16911, 9, 17),
       (16912, 10, 17),
       (16913, 11, 19),
       (16914, 12, 14),
       (16915, 13, 15),
       (16916, 14, 17),
       (16917, 15, 16),
       (16918, 16, 15),
       (16919, 17, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16920, 18, 12),
       (16921, 19, 23),
       (16922, 20, 24),
       (16923, 21, 21),
       (16924, 22, 14),
       (16925, 23, 10),
       (16926, 24, 23),
       (16927, 1, 22),
       (16928, 2, 19),
       (16929, 3, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16930, 4, 13),
       (16931, 5, 16),
       (16932, 6, 21),
       (16933, 7, 29),
       (16934, 8, 16),
       (16935, 9, 15),
       (16936, 10, 19),
       (16937, 11, 21),
       (16938, 12, 21),
       (16939, 13, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16940, 14, 16),
       (16941, 15, 14),
       (16942, 16, 19),
       (16943, 17, 20),
       (16944, 18, 16),
       (16945, 19, 21),
       (16946, 20, 15),
       (16947, 21, 18),
       (16948, 22, 21),
       (16949, 23, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16950, 24, 21),
       (16951, 25, 21),
       (16952, 26, 22),
       (16953, 27, 15),
       (16954, 28, 15),
       (16955, 29, 13),
       (16956, 1, 16),
       (16957, 2, 24),
       (16958, 3, 19),
       (16959, 4, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16960, 5, 20),
       (16961, 6, 17),
       (16962, 7, 15),
       (16963, 8, 17),
       (16964, 9, 16),
       (16965, 10, 15),
       (16966, 11, 20),
       (16967, 12, 15),
       (16968, 13, 19),
       (16969, 14, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16970, 15, 17),
       (16971, 16, 20),
       (16972, 17, 18),
       (16973, 18, 14),
       (16974, 19, 21),
       (16975, 20, 18),
       (16976, 21, 18),
       (16977, 22, 16),
       (16978, 23, 15),
       (16979, 24, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16980, 25, 20),
       (16981, 26, 14),
       (16982, 27, 15),
       (16983, 28, 14),
       (16984, 29, 19),
       (16985, 30, 13),
       (16986, 1, 20),
       (16987, 2, 17),
       (16988, 3, 13),
       (16989, 4, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (16990, 5, 20),
       (16991, 6, 21),
       (16992, 7, 16),
       (16993, 8, 22),
       (16994, 9, 21),
       (16995, 10, 16),
       (16996, 11, 20),
       (16997, 12, 18),
       (16998, 13, 20),
       (16999, 14, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17000, 15, 20),
       (17001, 16, 19),
       (17002, 17, 20),
       (17003, 18, 19),
       (17004, 19, 17),
       (17005, 20, 20),
       (17006, 21, 13),
       (17007, 22, 19),
       (17008, 23, 13),
       (17009, 24, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17010, 25, 14),
       (17011, 26, 17),
       (17012, 27, 20),
       (17013, 28, 17),
       (17014, 29, 16),
       (17015, 30, 11),
       (17016, 31, 15),
       (17017, 1, 20),
       (17018, 2, 15),
       (17019, 3, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17020, 4, 16),
       (17021, 5, 21),
       (17638, 10, 12),
       (17022, 6, 23),
       (17023, 7, 15),
       (17024, 8, 16),
       (17025, 9, 19),
       (17026, 10, 16),
       (17027, 11, 19),
       (17028, 12, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17029, 13, 16),
       (17030, 14, 19),
       (17031, 15, 22),
       (17032, 16, 22),
       (17033, 17, 18),
       (17034, 18, 21),
       (17035, 19, 20),
       (17036, 20, 13),
       (17037, 21, 25),
       (17038, 22, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17039, 23, 15),
       (17040, 24, 21),
       (17041, 25, 13),
       (17042, 26, 18),
       (17043, 27, 18),
       (17044, 28, 11),
       (17045, 29, 21),
       (17046, 1, 16),
       (17047, 2, 16),
       (17048, 3, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17049, 4, 12),
       (17050, 5, 24),
       (17051, 6, 18),
       (17052, 7, 24),
       (17053, 8, 16),
       (17054, 9, 18),
       (17055, 10, 15),
       (17056, 11, 13),
       (17057, 12, 14),
       (17058, 13, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17059, 14, 15),
       (17060, 15, 15),
       (17061, 16, 12),
       (17062, 17, 19),
       (17063, 18, 15),
       (17064, 19, 15),
       (17065, 20, 10),
       (17066, 21, 19),
       (17067, 22, 17),
       (17068, 23, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17069, 24, 21),
       (17070, 25, 16),
       (17071, 26, 15),
       (17072, 27, 16),
       (17073, 28, 15),
       (17074, 29, 23),
       (17075, 30, 16),
       (17076, 31, 22),
       (17077, 32, 14),
       (17078, 33, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17079, 34, 27),
       (17080, 35, 32),
       (17081, 1, 14),
       (17082, 2, 12),
       (17083, 3, 13),
       (17084, 4, 14),
       (17085, 5, 13),
       (17086, 6, 19),
       (17087, 7, 16),
       (17089, 9, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17090, 10, 13),
       (17091, 11, 22),
       (17092, 12, 41),
       (17093, 13, 22),
       (17094, 14, 30),
       (17095, 15, 18),
       (17096, 16, 19),
       (17097, 17, 18),
       (17098, 18, 17),
       (17099, 19, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17100, 20, 20),
       (17101, 21, 19),
       (17102, 22, 16),
       (17103, 23, 18),
       (17104, 24, 18),
       (17105, 25, 18),
       (17106, 26, 10),
       (17107, 27, 19),
       (17108, 28, 16),
       (17109, 29, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17110, 30, 19),
       (17111, 31, 25),
       (17112, 32, 12),
       (17113, 33, 17),
       (17114, 34, 16),
       (17115, 1, 17),
       (17116, 2, 22),
       (17117, 3, 18),
       (17118, 4, 17),
       (17119, 5, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17120, 6, 20),
       (17121, 7, 32),
       (17122, 8, 26),
       (17123, 9, 15),
       (17124, 10, 14),
       (17125, 11, 14),
       (17126, 12, 23),
       (17127, 13, 29),
       (17128, 14, 18),
       (17129, 15, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20103, 22, 11),
       (17130, 16, 21),
       (17131, 17, 20),
       (17132, 18, 20),
       (17133, 19, 21),
       (17134, 20, 27),
       (17135, 21, 21),
       (17136, 22, 16),
       (17137, 23, 15),
       (17138, 24, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17139, 25, 17),
       (17140, 26, 21),
       (17141, 27, 20),
       (17142, 28, 18),
       (17143, 1, 18),
       (17144, 2, 21),
       (17145, 3, 19),
       (17146, 4, 16),
       (17147, 5, 16),
       (17148, 6, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17149, 7, 17),
       (17150, 8, 19),
       (17151, 9, 23),
       (17152, 10, 23),
       (17153, 11, 17),
       (17154, 12, 20),
       (17155, 13, 17),
       (17156, 14, 16),
       (17157, 15, 19),
       (17158, 16, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17159, 17, 24),
       (17160, 18, 10),
       (17161, 19, 16),
       (17162, 20, 17),
       (17163, 21, 20),
       (17164, 22, 18),
       (17165, 23, 16),
       (17166, 24, 15),
       (17167, 25, 16),
       (17168, 26, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17169, 27, 19),
       (17170, 28, 16),
       (17171, 1, 17),
       (17172, 2, 18),
       (17173, 3, 19),
       (17174, 4, 16),
       (17175, 5, 10),
       (17176, 6, 16),
       (17177, 7, 17),
       (17178, 8, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17179, 9, 21),
       (17180, 10, 37),
       (17181, 11, 18),
       (17182, 12, 19),
       (17183, 13, 22),
       (17184, 14, 23),
       (17185, 15, 15),
       (17186, 16, 15),
       (17187, 17, 13),
       (17188, 18, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17189, 19, 15),
       (17190, 20, 15),
       (17191, 21, 20),
       (17192, 22, 25),
       (17193, 23, 17),
       (17194, 24, 15),
       (17195, 25, 20),
       (17196, 26, 16),
       (17197, 27, 22),
       (17198, 1, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17199, 2, 25),
       (17200, 3, 17),
       (17201, 4, 18),
       (17202, 5, 14),
       (17203, 6, 22),
       (17204, 7, 20),
       (17205, 8, 20),
       (17206, 9, 17),
       (17207, 10, 26),
       (17208, 11, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17209, 12, 17),
       (17210, 13, 18),
       (17211, 14, 18),
       (17212, 15, 19),
       (17213, 16, 20),
       (17214, 17, 22),
       (17215, 18, 19),
       (17216, 19, 22),
       (17217, 20, 20),
       (17218, 21, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17219, 22, 19),
       (17220, 23, 18),
       (17221, 24, 22),
       (17222, 25, 23),
       (17223, 26, 19),
       (17224, 27, 21),
       (17225, 28, 15),
       (17226, 1, 17),
       (17227, 2, 19),
       (17228, 3, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17229, 4, 15),
       (17230, 5, 13),
       (17231, 6, 19),
       (17232, 7, 19),
       (17233, 8, 14),
       (17234, 9, 23),
       (17235, 10, 17),
       (17236, 11, 17),
       (17237, 12, 12),
       (17238, 13, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17239, 14, 15),
       (17240, 15, 18),
       (17241, 16, 16),
       (17242, 17, 18),
       (17243, 18, 20),
       (17244, 19, 18),
       (17245, 20, 21),
       (17246, 21, 20),
       (17247, 22, 14),
       (17248, 23, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17249, 24, 18),
       (17250, 25, 18),
       (17251, 26, 15),
       (17252, 27, 24),
       (17253, 1, 20),
       (17254, 2, 17),
       (17255, 3, 16),
       (17256, 4, 48),
       (17257, 5, 18),
       (17258, 6, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17259, 7, 15),
       (17260, 8, 24),
       (17261, 9, 28),
       (17262, 10, 17),
       (17263, 11, 14),
       (17264, 12, 20),
       (17265, 13, 17),
       (17266, 14, 30),
       (17267, 15, 23),
       (17268, 16, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17269, 17, 30),
       (17270, 18, 17),
       (17271, 19, 37),
       (17272, 20, 22),
       (17273, 21, 15),
       (17274, 22, 17),
       (17275, 23, 18),
       (17276, 24, 16),
       (17277, 25, 16),
       (17278, 26, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17279, 27, 15),
       (17280, 28, 14),
       (17281, 29, 18),
       (17282, 30, 14),
       (17283, 31, 17),
       (17284, 32, 22),
       (17285, 33, 26),
       (17286, 1, 13),
       (17287, 2, 18),
       (17288, 3, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17289, 4, 25),
       (17290, 5, 18),
       (17291, 6, 18),
       (17292, 7, 14),
       (17293, 8, 17),
       (17294, 9, 14),
       (17295, 10, 14),
       (17296, 11, 17),
       (17297, 12, 14),
       (17298, 13, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17299, 14, 13),
       (17300, 15, 21),
       (17301, 16, 18),
       (17302, 17, 12),
       (17303, 18, 15),
       (17304, 19, 14),
       (17305, 20, 18),
       (17306, 21, 19),
       (17307, 22, 15),
       (17308, 23, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17309, 24, 14),
       (17310, 25, 15),
       (17311, 26, 16),
       (17312, 27, 17),
       (17313, 28, 17),
       (17314, 29, 11),
       (17315, 30, 18),
       (17316, 31, 18),
       (17317, 1, 13),
       (17318, 2, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17319, 3, 15),
       (17320, 4, 14),
       (17321, 5, 18),
       (17322, 6, 28),
       (17323, 7, 25),
       (17324, 8, 24),
       (17325, 9, 31),
       (17326, 10, 26),
       (17327, 11, 29),
       (17328, 12, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17329, 13, 39),
       (17330, 14, 23),
       (17331, 15, 17),
       (17332, 16, 34),
       (17333, 17, 25),
       (17334, 18, 15),
       (17335, 1, 23),
       (17336, 2, 14),
       (17337, 3, 52),
       (17338, 4, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17339, 5, 18),
       (17340, 6, 16),
       (17341, 7, 32),
       (17634, 6, 12),
       (17342, 8, 40),
       (17343, 9, 22),
       (17344, 10, 37),
       (17345, 11, 41),
       (17346, 12, 31),
       (17347, 13, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17348, 14, 27),
       (17349, 15, 38),
       (17350, 16, 41),
       (17351, 17, 27),
       (17352, 18, 27),
       (17353, 19, 41),
       (17354, 20, 22),
       (17355, 21, 41),
       (17356, 22, 23),
       (17357, 23, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17358, 24, 36),
       (17359, 25, 13),
       (17360, 26, 46),
       (17361, 1, 15),
       (17362, 2, 25),
       (17363, 3, 21),
       (17364, 4, 19),
       (17365, 5, 25),
       (17366, 6, 20),
       (17367, 7, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17368, 8, 19),
       (17369, 9, 12),
       (17370, 10, 19),
       (17371, 11, 37),
       (17372, 12, 22),
       (17373, 13, 22),
       (17374, 14, 34),
       (17375, 15, 27),
       (17376, 16, 27),
       (17377, 17, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17378, 18, 31),
       (17379, 19, 42),
       (17380, 20, 17),
       (17381, 21, 24),
       (17465, 6, 20),
       (17382, 22, 36),
       (17383, 1, 44),
       (17384, 2, 19),
       (17385, 3, 28),
       (17386, 4, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17387, 5, 12),
       (17388, 6, 16),
       (17390, 8, 60),
       (17391, 9, 15),
       (17392, 10, 30),
       (17393, 11, 17),
       (17394, 12, 23),
       (17395, 13, 23),
       (17396, 14, 20),
       (17397, 15, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17398, 16, 37),
       (17399, 1, 35),
       (17400, 2, 34),
       (17401, 3, 20),
       (17402, 4, 25),
       (17403, 5, 17),
       (17404, 6, 37),
       (17405, 7, 18),
       (17406, 8, 39),
       (17407, 9, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17408, 10, 22),
       (17409, 11, 27),
       (17410, 12, 27),
       (17411, 13, 23),
       (17412, 14, 21),
       (17413, 15, 33),
       (17414, 16, 30),
       (17415, 17, 19),
       (17416, 18, 52),
       (17417, 19, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17418, 20, 22),
       (17419, 1, 18),
       (17420, 2, 47),
       (17505, 11, 17),
       (17466, 7, 18),
       (17421, 3, 45),
       (17422, 4, 18),
       (17423, 5, 18),
       (17424, 6, 22),
       (17425, 7, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17426, 8, 25),
       (17427, 9, 23),
       (17428, 10, 29),
       (17429, 11, 14),
       (17430, 12, 39),
       (17431, 1, 21),
       (17432, 2, 36),
       (17433, 3, 18),
       (17434, 4, 23),
       (17435, 5, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17436, 6, 21),
       (17437, 7, 14),
       (17438, 8, 24),
       (17439, 9, 18),
       (17440, 10, 24),
       (17441, 11, 19),
       (17442, 12, 28),
       (17443, 13, 17),
       (17444, 14, 42),
       (17445, 15, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17446, 16, 14),
       (17447, 17, 16),
       (17448, 18, 30),
       (17449, 19, 18),
       (17450, 20, 16),
       (17451, 21, 18),
       (17452, 22, 15),
       (17453, 23, 20),
       (17454, 24, 15),
       (17455, 25, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17456, 26, 36),
       (17457, 27, 19),
       (17458, 28, 29),
       (17459, 29, 19),
       (17460, 1, 32),
       (17461, 2, 18),
       (17462, 3, 22),
       (17463, 4, 17),
       (17464, 5, 20),
       (17677, 22, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17467, 8, 41),
       (17468, 9, 33),
       (17469, 10, 35),
       (17470, 11, 27),
       (17471, 12, 31),
       (17472, 13, 27),
       (17473, 14, 50),
       (17474, 15, 48),
       (17475, 16, 34),
       (17476, 17, 57)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17477, 1, 43),
       (17478, 2, 57),
       (17479, 3, 50),
       (17480, 4, 24),
       (17481, 5, 29),
       (17482, 6, 32),
       (17483, 7, 24),
       (17484, 8, 14),
       (17485, 9, 47),
       (17486, 10, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17487, 11, 50),
       (17488, 12, 46),
       (17489, 13, 18),
       (17490, 14, 28),
       (17491, 15, 27),
       (17492, 16, 23),
       (17493, 17, 20),
       (17494, 18, 14),
       (17495, 1, 24),
       (17496, 2, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17497, 3, 25),
       (17498, 4, 20),
       (17499, 5, 22),
       (17500, 6, 15),
       (17501, 7, 15),
       (17502, 8, 21),
       (17503, 9, 17),
       (17504, 10, 26),
       (17506, 12, 21),
       (17507, 13, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17508, 14, 24),
       (17509, 15, 20),
       (17510, 16, 19),
       (17511, 17, 27),
       (17512, 18, 16),
       (17513, 19, 18),
       (17514, 20, 37),
       (17515, 1, 15),
       (17516, 2, 21),
       (17517, 3, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17518, 4, 18),
       (17519, 5, 39),
       (17520, 6, 34),
       (17521, 7, 19),
       (17522, 8, 32),
       (17523, 9, 49),
       (17524, 10, 23),
       (17525, 1, 31),
       (17526, 2, 22),
       (17527, 3, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17528, 4, 39),
       (17529, 5, 49),
       (17530, 6, 28),
       (17531, 7, 20),
       (17532, 8, 10),
       (17533, 9, 26),
       (17534, 10, 19),
       (17535, 11, 28),
       (17536, 12, 24),
       (17537, 13, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17538, 14, 22),
       (17539, 1, 9),
       (17540, 2, 18),
       (17541, 3, 20),
       (17542, 4, 40),
       (17543, 5, 21),
       (17544, 6, 38),
       (17633, 5, 25),
       (17545, 7, 38),
       (17546, 8, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17548, 10, 15),
       (17549, 11, 12),
       (17550, 12, 14),
       (17551, 13, 16),
       (17552, 14, 18),
       (17553, 15, 16),
       (17554, 16, 14),
       (17555, 17, 13),
       (17556, 1, 12),
       (17557, 2, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17558, 3, 35),
       (17559, 4, 15),
       (17560, 5, 16),
       (17561, 6, 15),
       (17562, 7, 30),
       (17563, 8, 17),
       (17564, 9, 28),
       (17565, 10, 18),
       (17566, 11, 13),
       (17567, 12, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17568, 13, 28),
       (17569, 14, 39),
       (17570, 15, 18),
       (17571, 16, 16),
       (17572, 17, 29),
       (17573, 1, 21),
       (17574, 2, 37),
       (17575, 3, 21),
       (17576, 4, 47),
       (17577, 5, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17578, 6, 25),
       (17579, 7, 20),
       (17580, 8, 25),
       (17581, 9, 12),
       (17582, 10, 31),
       (17583, 11, 37),
       (17584, 1, 35),
       (17585, 2, 31),
       (17586, 3, 26),
       (17587, 4, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17588, 5, 19),
       (17589, 6, 26),
       (17590, 7, 14),
       (17591, 8, 35),
       (17592, 9, 26),
       (17593, 10, 29),
       (17594, 11, 29),
       (17595, 12, 17),
       (17596, 13, 15),
       (17597, 14, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17598, 15, 18),
       (17599, 16, 32),
       (17600, 1, 44),
       (17601, 2, 44),
       (17602, 3, 23),
       (17603, 4, 20),
       (17604, 5, 27),
       (17605, 6, 41),
       (17606, 7, 27),
       (17607, 8, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17608, 9, 28),
       (17609, 10, 12),
       (17610, 11, 18),
       (17611, 12, 16),
       (17612, 13, 22),
       (17613, 14, 20),
       (17614, 15, 23),
       (17615, 16, 24),
       (17616, 1, 24),
       (17617, 2, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17618, 3, 18),
       (17619, 4, 18),
       (17620, 5, 27),
       (17621, 6, 27),
       (17622, 7, 13),
       (17623, 8, 12),
       (17624, 9, 44),
       (17625, 10, 24),
       (17626, 11, 29),
       (17627, 12, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17628, 13, 26),
       (17629, 1, 27),
       (17630, 2, 26),
       (17631, 3, 14),
       (17632, 4, 34),
       (17635, 7, 16),
       (17636, 8, 36),
       (17637, 9, 24),
       (17639, 11, 17),
       (17640, 12, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17641, 13, 29),
       (17642, 1, 31),
       (17643, 2, 32),
       (17644, 3, 16),
       (17645, 4, 20),
       (17646, 5, 38),
       (17647, 6, 38),
       (17648, 7, 29),
       (17649, 8, 27),
       (17650, 9, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17651, 10, 23),
       (17652, 11, 29),
       (17653, 12, 25),
       (17654, 13, 18),
       (17655, 14, 22),
       (17656, 1, 28),
       (17657, 2, 26),
       (17658, 3, 23),
       (17659, 4, 36),
       (17660, 5, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17661, 6, 36),
       (17662, 7, 27),
       (17663, 8, 26),
       (17664, 9, 26),
       (17665, 10, 22),
       (17666, 11, 44),
       (17667, 12, 19),
       (17668, 13, 29),
       (17669, 14, 23),
       (17670, 15, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17671, 16, 21),
       (17672, 17, 17),
       (17673, 18, 34),
       (17674, 19, 15),
       (17675, 20, 22),
       (17676, 21, 22),
       (17678, 23, 32),
       (17679, 24, 27),
       (17680, 25, 22),
       (17681, 26, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17682, 27, 12),
       (17683, 28, 19),
       (17684, 29, 25),
       (17685, 30, 19),
       (17686, 31, 25),
       (17687, 1, 14),
       (17688, 2, 41),
       (17689, 3, 59),
       (17690, 4, 43),
       (17691, 5, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17692, 6, 35),
       (17693, 7, 33),
       (17694, 8, 23),
       (17695, 9, 19),
       (17696, 10, 24),
       (17697, 11, 28),
       (17698, 12, 31),
       (17699, 13, 21),
       (17700, 14, 16),
       (17701, 15, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17702, 16, 13),
       (17703, 17, 28),
       (17704, 18, 8),
       (17705, 19, 39),
       (17706, 20, 32),
       (17707, 21, 38),
       (17708, 22, 19),
       (17709, 1, 30),
       (17710, 2, 20),
       (17711, 3, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17712, 4, 16),
       (17713, 5, 33),
       (17714, 6, 32),
       (17715, 7, 35),
       (17716, 8, 25),
       (17717, 9, 32),
       (17718, 10, 22),
       (17719, 11, 22),
       (17720, 12, 32),
       (17721, 13, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17722, 14, 34),
       (17723, 15, 22),
       (17724, 16, 32),
       (17725, 17, 27),
       (17726, 18, 20),
       (17727, 19, 9),
       (17728, 20, 17),
       (17729, 21, 7),
       (17730, 22, 13),
       (17731, 23, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17732, 24, 43),
       (17733, 25, 14),
       (17734, 26, 18),
       (17735, 1, 38),
       (17736, 2, 31),
       (17737, 3, 35),
       (17738, 4, 38),
       (17739, 5, 41),
       (17740, 6, 30),
       (17741, 1, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17742, 2, 49),
       (17743, 3, 20),
       (17744, 4, 32),
       (17745, 5, 40),
       (17746, 6, 35),
       (17747, 7, 35),
       (17748, 8, 32),
       (17749, 9, 22),
       (17750, 10, 20),
       (17751, 11, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17752, 12, 35),
       (17753, 13, 25),
       (17754, 14, 31),
       (17755, 15, 22),
       (17756, 16, 18),
       (17757, 17, 21),
       (17758, 18, 20),
       (17759, 19, 36),
       (17760, 20, 29),
       (17761, 21, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17762, 22, 18),
       (17763, 23, 18),
       (17764, 24, 55),
       (17846, 16, 20),
       (17765, 25, 57),
       (17766, 26, 32),
       (17767, 27, 31),
       (17768, 28, 24),
       (17769, 29, 36),
       (17770, 30, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17771, 1, 26),
       (17772, 2, 30),
       (17773, 3, 23),
       (17774, 4, 22),
       (17775, 5, 41),
       (17776, 6, 27),
       (17777, 7, 26),
       (17778, 8, 28),
       (17779, 9, 22),
       (17780, 10, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17781, 11, 26),
       (17782, 12, 20),
       (17783, 13, 40),
       (17784, 1, 51),
       (17785, 2, 35),
       (17786, 3, 36),
       (17787, 4, 40),
       (17788, 5, 15),
       (17789, 6, 34),
       (17790, 7, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17791, 8, 35),
       (17792, 9, 28),
       (17793, 10, 8),
       (17794, 11, 20),
       (17795, 12, 13),
       (17796, 13, 28),
       (17797, 14, 25),
       (17798, 15, 18),
       (17799, 16, 25),
       (17800, 17, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17801, 18, 39),
       (17802, 19, 31),
       (17803, 20, 41),
       (17804, 21, 22),
       (17805, 22, 39),
       (17806, 23, 29),
       (17807, 24, 19),
       (17808, 25, 38),
       (17809, 1, 26),
       (17810, 2, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17811, 3, 26),
       (17812, 4, 33),
       (17813, 5, 9),
       (17814, 6, 22),
       (17815, 7, 42),
       (17816, 8, 37),
       (17817, 9, 34),
       (17818, 10, 24),
       (17819, 11, 24),
       (17820, 12, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17821, 13, 20),
       (17822, 14, 38),
       (17823, 15, 17),
       (17824, 16, 12),
       (17825, 17, 22),
       (17826, 18, 28),
       (17827, 19, 43),
       (17828, 20, 23),
       (17829, 21, 41),
       (17830, 22, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17831, 1, 53),
       (17832, 2, 29),
       (17833, 3, 29),
       (17834, 4, 27),
       (17835, 5, 26),
       (17836, 6, 37),
       (17837, 7, 50),
       (17838, 8, 14),
       (17839, 9, 23),
       (17840, 10, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17841, 11, 20),
       (17842, 12, 32),
       (17843, 13, 19),
       (17844, 14, 18),
       (17845, 15, 21),
       (17847, 17, 51),
       (17848, 18, 31),
       (17849, 19, 27),
       (17850, 20, 37),
       (17851, 21, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17852, 1, 15),
       (17853, 2, 34),
       (17854, 3, 34),
       (17855, 4, 31),
       (17856, 5, 16),
       (17857, 6, 42),
       (17858, 7, 28),
       (17859, 8, 12),
       (17860, 9, 16),
       (17861, 10, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17862, 11, 20),
       (17863, 12, 43),
       (17864, 13, 51),
       (17865, 14, 43),
       (17866, 15, 45),
       (17867, 16, 29),
       (17868, 17, 32),
       (17869, 18, 29),
       (17870, 19, 20),
       (17871, 20, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17872, 21, 14),
       (17873, 22, 27),
       (17874, 23, 22),
       (17875, 24, 41),
       (17876, 25, 24),
       (17877, 26, 42),
       (17878, 27, 36),
       (17879, 28, 18),
       (17880, 29, 22),
       (17881, 30, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17882, 31, 12),
       (17883, 32, 25),
       (17884, 33, 29),
       (17885, 34, 21),
       (17886, 1, 24),
       (17887, 2, 32),
       (17888, 3, 30),
       (17889, 4, 43),
       (17890, 5, 17),
       (17891, 6, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17892, 7, 25),
       (17893, 8, 26),
       (17894, 9, 29),
       (17895, 10, 36),
       (17896, 11, 58),
       (17897, 12, 32),
       (17898, 13, 28),
       (17899, 14, 42),
       (17900, 15, 39),
       (17901, 16, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17902, 1, 32),
       (17903, 2, 29),
       (17904, 3, 14),
       (17905, 4, 29),
       (17906, 5, 18),
       (17907, 6, 22),
       (17908, 1, 13),
       (17909, 2, 29),
       (17910, 3, 22),
       (17911, 4, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17912, 5, 26),
       (17913, 6, 19),
       (17914, 7, 14),
       (17915, 8, 39),
       (17916, 9, 28),
       (17917, 10, 34),
       (17918, 11, 36),
       (17919, 12, 20),
       (17920, 13, 34),
       (17921, 14, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17922, 15, 21),
       (17923, 16, 21),
       (17924, 17, 25),
       (17925, 18, 29),
       (17926, 19, 22),
       (17927, 20, 33),
       (17928, 21, 30),
       (17929, 22, 28),
       (17930, 1, 37),
       (17931, 2, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17932, 3, 34),
       (17933, 4, 24),
       (17934, 5, 14),
       (17935, 6, 23),
       (17936, 7, 15),
       (17937, 8, 26),
       (17938, 9, 42),
       (17939, 10, 22),
       (17940, 11, 24),
       (17941, 12, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17942, 13, 38),
       (17943, 14, 18),
       (17944, 15, 16),
       (17945, 16, 28),
       (17946, 17, 22),
       (17947, 18, 19),
       (17948, 19, 41),
       (17949, 20, 32),
       (17950, 21, 31),
       (17951, 22, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17952, 23, 29),
       (17953, 24, 27),
       (17954, 25, 34),
       (17955, 26, 25),
       (17956, 27, 24),
       (17957, 28, 11),
       (17958, 29, 37),
       (17959, 30, 32),
       (17960, 31, 33),
       (17961, 32, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17962, 1, 33),
       (17963, 2, 34),
       (17964, 3, 22),
       (17965, 4, 27),
       (17966, 5, 40),
       (17967, 6, 24),
       (17968, 7, 24),
       (17969, 8, 24),
       (17970, 9, 33),
       (17971, 1, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17972, 2, 26),
       (17973, 3, 24),
       (17974, 4, 39),
       (17975, 5, 30),
       (17976, 6, 28),
       (17977, 7, 23),
       (17978, 8, 44),
       (17979, 9, 40),
       (17980, 10, 42),
       (17981, 11, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17982, 12, 32),
       (17984, 14, 41),
       (17985, 1, 21),
       (17986, 2, 22),
       (17987, 3, 33),
       (17988, 4, 28),
       (17989, 5, 33),
       (17990, 6, 43),
       (17991, 7, 22),
       (17992, 8, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (17993, 9, 36),
       (17994, 10, 32),
       (18031, 1, 25),
       (17995, 11, 35),
       (17996, 12, 28),
       (17997, 13, 43),
       (17998, 14, 29),
       (17999, 1, 16),
       (18000, 2, 47),
       (18001, 3, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18002, 4, 35),
       (18003, 5, 37),
       (18004, 6, 39),
       (18005, 7, 54),
       (18006, 1, 38),
       (18007, 2, 33),
       (18008, 3, 42),
       (18009, 4, 29),
       (18010, 5, 18),
       (18011, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18012, 7, 30),
       (18013, 8, 27),
       (18014, 9, 17),
       (18015, 10, 22),
       (18016, 11, 36),
       (18017, 12, 25),
       (18018, 13, 29),
       (18019, 14, 33),
       (18020, 15, 19),
       (18021, 16, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18022, 17, 36),
       (18023, 18, 34),
       (18024, 19, 28),
       (18025, 20, 45),
       (18026, 21, 36),
       (18027, 22, 26),
       (18028, 23, 34),
       (18029, 24, 22),
       (18030, 25, 26),
       (18032, 2, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18033, 3, 27),
       (18034, 4, 33),
       (18035, 5, 18),
       (18036, 6, 37),
       (18037, 1, 25),
       (18038, 2, 33),
       (18039, 3, 38),
       (18040, 4, 20),
       (18084, 6, 12),
       (18041, 5, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18042, 6, 19),
       (18043, 7, 25),
       (18044, 8, 28),
       (18045, 9, 34),
       (18046, 10, 29),
       (18047, 11, 22),
       (18048, 12, 20),
       (18049, 13, 18),
       (18050, 14, 23),
       (18051, 15, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18052, 16, 26),
       (18053, 17, 30),
       (18054, 1, 21),
       (18055, 2, 28),
       (18056, 3, 26),
       (18057, 4, 26),
       (18058, 5, 38),
       (18059, 6, 17),
       (18060, 7, 24),
       (18061, 8, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18062, 9, 25),
       (18063, 10, 18),
       (18064, 11, 38),
       (18065, 12, 25),
       (18066, 13, 27),
       (18067, 14, 27),
       (18068, 15, 24),
       (18069, 16, 34),
       (18070, 17, 19),
       (18071, 18, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18188, 23, 13),
       (18072, 19, 18),
       (18073, 20, 21),
       (18074, 21, 41),
       (18075, 22, 31),
       (18076, 23, 27),
       (18077, 24, 31),
       (18078, 25, 44),
       (18079, 1, 34),
       (18080, 2, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18081, 3, 25),
       (18082, 4, 34),
       (18083, 5, 17),
       (18085, 7, 20),
       (18086, 8, 23),
       (18087, 9, 24),
       (18088, 10, 18),
       (18089, 11, 26),
       (18090, 12, 28),
       (18091, 13, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18092, 14, 12),
       (18093, 15, 42),
       (18094, 16, 25),
       (18095, 17, 43),
       (18096, 18, 38),
       (18097, 1, 22),
       (18098, 2, 59),
       (18099, 3, 17),
       (18100, 4, 21),
       (18101, 5, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18102, 6, 28),
       (18103, 7, 14),
       (18104, 8, 19),
       (18105, 9, 19),
       (18106, 10, 18),
       (18107, 11, 23),
       (18108, 12, 14),
       (18109, 13, 30),
       (18110, 14, 21),
       (18111, 15, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18112, 16, 40),
       (18113, 17, 16),
       (18114, 18, 54),
       (18115, 19, 16),
       (18116, 20, 35),
       (18117, 21, 31),
       (18118, 22, 30),
       (18119, 23, 30),
       (18120, 1, 30),
       (18121, 2, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18122, 3, 16),
       (18123, 4, 42),
       (18124, 5, 35),
       (18277, 17, 19),
       (18125, 6, 38),
       (18126, 7, 26),
       (18127, 8, 40),
       (18128, 9, 41),
       (18129, 10, 32),
       (18130, 11, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18131, 12, 23),
       (18132, 1, 27),
       (18133, 2, 15),
       (18134, 3, 19),
       (18135, 4, 16),
       (18136, 5, 33),
       (18137, 6, 19),
       (18138, 7, 19),
       (18139, 8, 29),
       (18140, 9, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18141, 10, 31),
       (18142, 11, 31),
       (18143, 12, 18),
       (18144, 13, 25),
       (18145, 14, 31),
       (18146, 15, 25),
       (18147, 16, 19),
       (18148, 17, 32),
       (18149, 18, 36),
       (18150, 19, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18151, 20, 26),
       (18152, 21, 34),
       (18153, 1, 35),
       (18154, 2, 12),
       (18155, 3, 23),
       (18156, 4, 27),
       (18157, 5, 24),
       (18158, 6, 25),
       (18159, 7, 27),
       (18160, 8, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18161, 9, 50),
       (18162, 10, 31),
       (18163, 11, 50),
       (18278, 18, 19),
       (18164, 12, 41),
       (18165, 13, 52),
       (18166, 1, 37),
       (18167, 2, 35),
       (18168, 3, 15),
       (18169, 4, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18170, 5, 24),
       (18171, 6, 24),
       (18172, 7, 40),
       (18173, 8, 17),
       (18174, 9, 27),
       (18175, 10, 22),
       (18176, 11, 18),
       (18177, 12, 27),
       (18178, 13, 42),
       (18179, 14, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18180, 15, 46),
       (18181, 16, 35),
       (18182, 17, 30),
       (18183, 18, 32),
       (18184, 19, 35),
       (18185, 20, 27),
       (18186, 21, 38),
       (18187, 22, 31),
       (18189, 24, 17),
       (18190, 25, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18191, 26, 12),
       (18192, 27, 37),
       (18193, 28, 30),
       (18194, 29, 18),
       (18195, 1, 19),
       (18196, 2, 21),
       (18197, 3, 26),
       (18198, 4, 50),
       (18199, 5, 32),
       (18200, 6, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18201, 7, 35),
       (20104, 23, 12),
       (18202, 8, 61),
       (18203, 9, 25),
       (18204, 10, 28),
       (18205, 11, 40),
       (18206, 12, 25),
       (18207, 13, 47),
       (18208, 14, 40),
       (18209, 15, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18210, 16, 42),
       (18211, 17, 28),
       (18212, 18, 29),
       (18213, 19, 23),
       (18214, 20, 23),
       (18215, 21, 31),
       (18216, 22, 26),
       (18217, 23, 41),
       (18218, 24, 18),
       (18219, 1, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18220, 2, 33),
       (18221, 3, 20),
       (18222, 4, 14),
       (18223, 5, 28),
       (18224, 6, 56),
       (18225, 7, 19),
       (18226, 8, 29),
       (18227, 9, 18),
       (18228, 10, 25),
       (18229, 11, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18230, 12, 23),
       (18231, 13, 27),
       (18232, 14, 48),
       (18233, 15, 33),
       (18234, 16, 30),
       (18235, 17, 38),
       (18236, 18, 41),
       (18237, 19, 36),
       (18238, 20, 31),
       (20410, 55, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18239, 21, 33),
       (18240, 22, 39),
       (18241, 23, 41),
       (18242, 24, 27),
       (18243, 25, 30),
       (18244, 26, 49),
       (18245, 27, 32),
       (18246, 28, 39),
       (18247, 29, 39),
       (18248, 30, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18249, 31, 19),
       (18250, 32, 37),
       (18251, 33, 43),
       (18252, 1, 44),
       (18253, 2, 36),
       (18254, 3, 44),
       (18255, 4, 60),
       (18256, 5, 24),
       (18257, 6, 15),
       (18258, 7, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18259, 8, 37),
       (18260, 9, 32),
       (18261, 1, 14),
       (18262, 2, 38),
       (18263, 3, 21),
       (18264, 4, 22),
       (18265, 5, 16),
       (18266, 6, 40),
       (18267, 7, 26),
       (18268, 8, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18269, 9, 21),
       (18270, 10, 23),
       (18271, 11, 25),
       (18272, 12, 15),
       (18273, 13, 24),
       (18274, 14, 34),
       (18275, 15, 27),
       (18276, 16, 16),
       (18279, 19, 19),
       (18280, 20, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18281, 1, 47),
       (18282, 2, 26),
       (18283, 3, 21),
       (18284, 4, 19),
       (18285, 5, 17),
       (18286, 6, 22),
       (18287, 7, 13),
       (18288, 8, 24),
       (18289, 9, 25),
       (18290, 10, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18291, 11, 19),
       (18292, 12, 21),
       (18293, 13, 19),
       (18294, 14, 30),
       (18295, 15, 39),
       (18296, 16, 27),
       (18297, 17, 18),
       (18298, 18, 27),
       (18299, 19, 28),
       (18300, 20, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18301, 21, 30),
       (18302, 22, 18),
       (18303, 23, 34),
       (18304, 24, 20),
       (18305, 1, 29),
       (18306, 2, 27),
       (18307, 3, 27),
       (18308, 4, 44),
       (18309, 5, 26),
       (18310, 6, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18311, 7, 31),
       (18312, 8, 17),
       (18313, 9, 25),
       (18314, 10, 34),
       (18315, 11, 34),
       (18316, 12, 22),
       (18317, 13, 28),
       (18318, 14, 37),
       (18434, 13, 15),
       (18319, 15, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18320, 16, 36),
       (18321, 17, 33),
       (18322, 1, 20),
       (18323, 2, 39),
       (18324, 3, 11),
       (18325, 4, 32),
       (18326, 5, 19),
       (18327, 6, 31),
       (18328, 7, 31),
       (18329, 8, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18330, 9, 26),
       (18331, 10, 35),
       (18332, 1, 30),
       (18333, 2, 37),
       (18334, 3, 28),
       (18335, 4, 27),
       (18336, 5, 26),
       (18337, 6, 40),
       (18338, 7, 41),
       (18339, 8, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18340, 9, 31),
       (18341, 10, 27),
       (18342, 11, 45),
       (18343, 12, 45),
       (18344, 13, 28),
       (18345, 14, 19),
       (18346, 15, 29),
       (18347, 16, 48),
       (18348, 17, 28),
       (18349, 18, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18350, 19, 24),
       (18351, 20, 29),
       (18352, 21, 22),
       (18353, 22, 38),
       (18354, 1, 28),
       (18355, 2, 31),
       (20411, 56, 15),
       (18356, 3, 38),
       (18357, 4, 49),
       (18358, 5, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18359, 6, 37),
       (18360, 7, 35),
       (18361, 8, 23),
       (18362, 9, 29),
       (18363, 10, 35),
       (18364, 11, 24),
       (18365, 12, 28),
       (18366, 13, 24),
       (18367, 14, 29),
       (18368, 15, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18369, 16, 34),
       (18370, 17, 30),
       (18371, 18, 18),
       (18372, 19, 29),
       (18373, 20, 28),
       (18374, 21, 29),
       (18375, 22, 34),
       (18376, 23, 29),
       (18454, 2, 44),
       (18377, 24, 63)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18378, 25, 23),
       (18379, 26, 38),
       (18380, 27, 43),
       (18381, 28, 20),
       (18382, 29, 45),
       (18383, 30, 47),
       (18384, 31, 21),
       (18385, 32, 28),
       (18386, 33, 37),
       (18387, 34, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18388, 35, 21),
       (18389, 36, 37),
       (18390, 37, 15),
       (18391, 38, 45),
       (18392, 1, 39),
       (18393, 2, 13),
       (18394, 3, 37),
       (18395, 4, 10),
       (18396, 5, 34),
       (18397, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18398, 7, 21),
       (18399, 8, 41),
       (18400, 9, 19),
       (18401, 10, 26),
       (18402, 11, 28),
       (18403, 12, 45),
       (18404, 13, 27),
       (18405, 14, 32),
       (18406, 15, 30),
       (18407, 16, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18408, 17, 37),
       (18409, 18, 22),
       (18410, 19, 24),
       (18411, 20, 27),
       (18412, 21, 25),
       (18413, 22, 19),
       (18414, 1, 31),
       (18455, 3, 20),
       (18415, 2, 59),
       (18416, 3, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18417, 4, 35),
       (18418, 5, 13),
       (18419, 6, 37),
       (18420, 7, 31),
       (18421, 8, 29),
       (18422, 1, 10),
       (18423, 2, 33),
       (18424, 3, 26),
       (18425, 4, 28),
       (18426, 5, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18427, 6, 30),
       (18428, 7, 20),
       (18429, 8, 16),
       (18430, 9, 45),
       (18431, 10, 29),
       (18432, 11, 32),
       (18433, 12, 41),
       (18435, 14, 30),
       (18436, 15, 32),
       (18437, 16, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18438, 17, 20),
       (18439, 18, 16),
       (18440, 19, 21),
       (18441, 20, 35),
       (18442, 21, 28),
       (18443, 22, 38),
       (18444, 23, 15),
       (18445, 24, 39),
       (18446, 25, 19),
       (18447, 26, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18448, 27, 28),
       (18449, 28, 33),
       (18450, 29, 17),
       (18451, 30, 16),
       (18452, 31, 32),
       (18453, 1, 29),
       (18456, 4, 24),
       (18457, 5, 18),
       (18458, 6, 18),
       (18459, 7, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18460, 8, 17),
       (18461, 9, 37),
       (18462, 10, 38),
       (18463, 11, 28),
       (18464, 12, 31),
       (18465, 13, 20),
       (18466, 14, 26),
       (18467, 15, 31),
       (18468, 16, 33),
       (18469, 17, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18470, 18, 33),
       (18471, 19, 34),
       (18472, 20, 29),
       (18473, 21, 16),
       (18474, 22, 38),
       (18592, 5, 19),
       (18475, 23, 32),
       (18476, 24, 19),
       (18477, 25, 40),
       (18478, 26, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18479, 27, 24),
       (18480, 28, 26),
       (18481, 29, 18),
       (18482, 1, 29),
       (18483, 2, 19),
       (18484, 3, 24),
       (18485, 4, 24),
       (18486, 5, 43),
       (18487, 6, 32),
       (18488, 7, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18489, 8, 23),
       (18490, 9, 24),
       (18491, 10, 34),
       (18492, 11, 33),
       (18493, 12, 14),
       (18494, 13, 35),
       (18495, 14, 30),
       (18496, 15, 27),
       (18497, 16, 46),
       (18498, 17, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18499, 18, 12),
       (18500, 19, 32),
       (18501, 20, 17),
       (18502, 21, 16),
       (18503, 22, 39),
       (18504, 23, 22),
       (18505, 24, 36),
       (18506, 25, 39),
       (18507, 1, 35),
       (18508, 2, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18509, 3, 27),
       (18510, 4, 30),
       (18511, 5, 22),
       (18512, 6, 30),
       (18513, 7, 26),
       (18514, 8, 15),
       (18515, 9, 44),
       (18516, 10, 40),
       (18517, 11, 13),
       (18518, 12, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18519, 13, 28),
       (18520, 14, 38),
       (18521, 15, 13),
       (18522, 16, 18),
       (18523, 17, 31),
       (18524, 18, 13),
       (18525, 19, 32),
       (18526, 20, 34),
       (18527, 21, 15),
       (18528, 22, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18529, 23, 32),
       (18530, 24, 36),
       (18531, 25, 22),
       (18532, 26, 19),
       (18533, 27, 12),
       (18534, 28, 21),
       (18535, 1, 14),
       (18536, 2, 30),
       (19119, 29, 26),
       (18537, 3, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18538, 4, 14),
       (18539, 5, 35),
       (18540, 6, 30),
       (18541, 7, 39),
       (18542, 8, 38),
       (18543, 9, 37),
       (18544, 10, 15),
       (18545, 11, 37),
       (18546, 12, 38),
       (18547, 13, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18548, 14, 36),
       (18549, 15, 42),
       (18550, 16, 35),
       (18551, 17, 33),
       (18552, 18, 25),
       (18553, 19, 59),
       (18554, 20, 29),
       (18666, 3, 13),
       (18555, 21, 30),
       (18556, 22, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18557, 23, 40),
       (18558, 24, 36),
       (18559, 25, 22),
       (18560, 26, 42),
       (18561, 27, 15),
       (18562, 28, 32),
       (18563, 1, 41),
       (18564, 2, 29),
       (18565, 3, 36),
       (18566, 4, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18567, 5, 25),
       (18568, 6, 29),
       (18569, 7, 22),
       (18570, 8, 37),
       (18679, 5, 30),
       (18571, 9, 36),
       (18572, 10, 20),
       (18573, 11, 34),
       (18574, 12, 27),
       (18575, 13, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18576, 14, 68),
       (18577, 15, 15),
       (18578, 16, 23),
       (18579, 17, 25),
       (18580, 18, 41),
       (18581, 19, 38),
       (18582, 20, 35),
       (18583, 21, 49),
       (18584, 22, 23),
       (18585, 23, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18586, 24, 32),
       (18587, 25, 14),
       (18588, 1, 32),
       (18589, 2, 19),
       (18590, 3, 33),
       (18591, 4, 32),
       (18593, 6, 31),
       (18594, 7, 44),
       (18595, 8, 15),
       (18596, 9, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18597, 10, 29),
       (18598, 11, 36),
       (18599, 12, 12),
       (18600, 13, 29),
       (18601, 1, 35),
       (18602, 2, 21),
       (18603, 3, 21),
       (18604, 4, 14),
       (18605, 5, 25),
       (18606, 6, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18607, 7, 28),
       (18608, 8, 43),
       (18718, 6, 28),
       (18609, 9, 43),
       (18610, 10, 39),
       (18611, 11, 40),
       (18612, 12, 35),
       (18613, 13, 33),
       (18614, 14, 38),
       (18615, 15, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18616, 1, 47),
       (18617, 2, 24),
       (18618, 3, 31),
       (18619, 4, 19),
       (18620, 5, 40),
       (18621, 6, 32),
       (18622, 7, 26),
       (18623, 8, 35),
       (18624, 9, 26),
       (18625, 10, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18626, 11, 29),
       (18627, 12, 22),
       (18628, 13, 29),
       (18629, 14, 32),
       (18630, 15, 22),
       (18703, 6, 26),
       (18631, 16, 38),
       (18632, 17, 31),
       (18633, 18, 26),
       (18634, 19, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18635, 20, 37),
       (18636, 21, 34),
       (18637, 22, 10),
       (18638, 1, 32),
       (18639, 2, 37),
       (18640, 3, 17),
       (18641, 4, 34),
       (18642, 5, 44),
       (18643, 6, 53),
       (19043, 15, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18644, 7, 54),
       (18645, 8, 48),
       (18646, 9, 32),
       (18647, 10, 34),
       (18648, 11, 16),
       (18649, 12, 24),
       (18650, 13, 29),
       (18651, 14, 14),
       (18652, 15, 30),
       (18653, 16, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18654, 17, 18),
       (18655, 18, 43),
       (18656, 19, 37),
       (18657, 20, 27),
       (18658, 21, 46),
       (18659, 22, 42),
       (18660, 23, 53),
       (18661, 24, 15),
       (18662, 25, 40),
       (18663, 26, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18664, 1, 48),
       (18665, 2, 61),
       (18667, 4, 43),
       (18668, 5, 17),
       (18669, 6, 27),
       (18670, 7, 34),
       (18671, 8, 27),
       (18672, 9, 30),
       (18673, 10, 37),
       (18674, 11, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18675, 1, 32),
       (18676, 2, 29),
       (18677, 3, 41),
       (18678, 4, 35),
       (18680, 6, 55),
       (18681, 7, 30),
       (18682, 8, 32),
       (18683, 9, 37),
       (18684, 10, 31),
       (18685, 11, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18686, 12, 33),
       (18687, 13, 46),
       (18688, 14, 24),
       (18689, 15, 24),
       (18690, 16, 41),
       (18691, 17, 33),
       (18692, 18, 35),
       (18693, 19, 25),
       (18694, 20, 33),
       (18695, 21, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18696, 22, 44),
       (18697, 23, 45),
       (18698, 1, 33),
       (18699, 2, 26),
       (18700, 3, 17),
       (18701, 4, 27),
       (18702, 5, 36),
       (18704, 7, 34),
       (18705, 8, 27),
       (18706, 9, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18707, 10, 29),
       (18708, 11, 31),
       (18709, 12, 30),
       (18710, 13, 19),
       (18711, 14, 26),
       (18712, 15, 35),
       (18713, 1, 16),
       (18714, 2, 40),
       (18715, 3, 33),
       (18716, 4, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18717, 5, 29),
       (18719, 7, 39),
       (18720, 8, 42),
       (18721, 9, 30),
       (18722, 10, 44),
       (18723, 11, 31),
       (18724, 12, 47),
       (18725, 1, 40),
       (18726, 2, 26),
       (18727, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18728, 4, 41),
       (18729, 5, 32),
       (18730, 6, 27),
       (18731, 7, 17),
       (18732, 8, 27),
       (18733, 9, 43),
       (18734, 10, 34),
       (18735, 11, 25),
       (18736, 12, 21),
       (18737, 13, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18738, 14, 28),
       (18739, 15, 21),
       (18740, 16, 29),
       (18815, 14, 23),
       (18741, 17, 41),
       (18742, 1, 33),
       (18743, 2, 39),
       (18744, 3, 29),
       (18745, 4, 19),
       (18746, 5, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18747, 6, 17),
       (18748, 7, 35),
       (18749, 8, 16),
       (18750, 9, 24),
       (18751, 10, 38),
       (18752, 11, 39),
       (18753, 12, 37),
       (18754, 13, 41),
       (18755, 1, 23),
       (18756, 2, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18757, 3, 32),
       (18758, 4, 24),
       (18759, 5, 38),
       (18760, 6, 38),
       (18761, 7, 44),
       (18762, 8, 24),
       (18763, 9, 17),
       (18764, 10, 24),
       (18765, 11, 34),
       (18766, 12, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18767, 1, 30),
       (18768, 2, 17),
       (18769, 3, 18),
       (18770, 4, 29),
       (18771, 5, 25),
       (18772, 6, 37),
       (18773, 7, 20),
       (18774, 8, 47),
       (18775, 9, 28),
       (18776, 10, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18777, 11, 40),
       (18778, 12, 16),
       (18779, 13, 42),
       (18780, 14, 26),
       (18781, 15, 50),
       (18782, 16, 28),
       (18783, 17, 31),
       (18784, 18, 24),
       (18785, 19, 29),
       (18786, 20, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18787, 21, 11),
       (18788, 1, 27),
       (18789, 2, 39),
       (18790, 3, 39),
       (19120, 30, 11),
       (18791, 4, 32),
       (18792, 5, 48),
       (18793, 6, 36),
       (18794, 7, 43),
       (18795, 8, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18796, 9, 39),
       (18797, 10, 30),
       (18798, 11, 37),
       (18799, 12, 40),
       (18800, 13, 49),
       (18801, 14, 42),
       (18802, 1, 20),
       (18803, 2, 26),
       (18804, 3, 22),
       (18805, 4, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18806, 5, 28),
       (18807, 6, 30),
       (18808, 7, 27),
       (18809, 8, 29),
       (18810, 9, 26),
       (18811, 10, 36),
       (18812, 11, 28),
       (18813, 12, 28),
       (18814, 13, 25),
       (20460, 17, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18816, 15, 28),
       (18817, 16, 30),
       (18818, 17, 34),
       (18819, 18, 24),
       (18820, 19, 35),
       (18821, 20, 19),
       (18822, 21, 61),
       (18823, 1, 17),
       (18824, 2, 27),
       (18825, 3, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18826, 4, 33),
       (18827, 5, 36),
       (18828, 6, 33),
       (18829, 7, 38),
       (18830, 8, 16),
       (18831, 9, 46),
       (18832, 10, 32),
       (18833, 11, 32),
       (18834, 12, 20),
       (18835, 13, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18836, 14, 47),
       (18837, 15, 27),
       (18838, 16, 35),
       (18839, 17, 33),
       (18840, 18, 27),
       (18841, 19, 35),
       (18842, 20, 30),
       (18843, 21, 30),
       (18844, 22, 23),
       (18845, 1, 49)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18846, 2, 22),
       (18847, 3, 49),
       (18848, 4, 27),
       (18849, 5, 18),
       (18850, 6, 35),
       (18851, 7, 33),
       (20461, 18, 14),
       (18852, 8, 29),
       (18853, 9, 32),
       (18854, 10, 51)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18855, 11, 40),
       (18856, 1, 35),
       (18857, 2, 29),
       (18858, 3, 24),
       (18859, 4, 39),
       (18860, 5, 30),
       (18861, 6, 29),
       (18862, 7, 19),
       (18863, 8, 42),
       (18864, 9, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18865, 10, 31),
       (18866, 11, 33),
       (18867, 12, 24),
       (18868, 1, 35),
       (18869, 2, 18),
       (18870, 3, 45),
       (18871, 4, 18),
       (18872, 5, 33),
       (18873, 6, 26),
       (18874, 7, 51)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18875, 8, 20),
       (18876, 9, 38),
       (18877, 10, 22),
       (18878, 11, 43),
       (18879, 12, 26),
       (18880, 13, 18),
       (18881, 14, 30),
       (18882, 15, 37),
       (18883, 16, 30),
       (18884, 17, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18885, 18, 17),
       (18886, 19, 21),
       (18887, 1, 21),
       (18888, 2, 31),
       (23279, 44, 16),
       (18889, 3, 20),
       (18890, 4, 31),
       (18891, 5, 36),
       (18892, 6, 37),
       (18893, 7, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18894, 8, 26),
       (18895, 9, 23),
       (18896, 10, 16),
       (18897, 11, 24),
       (18898, 12, 20),
       (18899, 1, 37),
       (18900, 2, 27),
       (18901, 3, 18),
       (18902, 4, 26),
       (18903, 5, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18904, 6, 22),
       (18905, 7, 36),
       (18906, 8, 40),
       (18907, 9, 32),
       (18908, 10, 29),
       (18909, 11, 25),
       (18910, 12, 49),
       (18911, 13, 39),
       (18912, 14, 25),
       (18913, 15, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18914, 16, 46),
       (18915, 17, 23),
       (18916, 18, 26),
       (18917, 19, 30),
       (18918, 20, 41),
       (18919, 21, 20),
       (18920, 22, 40),
       (18921, 23, 27),
       (18922, 24, 23),
       (18923, 25, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18924, 1, 30),
       (18925, 2, 43),
       (18926, 3, 62),
       (18927, 4, 45),
       (18928, 5, 48),
       (18929, 6, 23),
       (18930, 7, 18),
       (18931, 8, 39),
       (18932, 9, 28),
       (18933, 10, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18934, 11, 28),
       (18935, 12, 44),
       (18936, 13, 19),
       (18937, 14, 39),
       (18938, 15, 29),
       (18939, 16, 23),
       (18940, 17, 37),
       (18941, 18, 29),
       (18942, 19, 59),
       (18943, 20, 56)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18944, 21, 15),
       (18945, 22, 28),
       (18946, 23, 30),
       (18947, 24, 41),
       (18948, 1, 21),
       (18949, 2, 27),
       (18950, 3, 43),
       (18951, 4, 10),
       (18952, 5, 32),
       (18953, 6, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18954, 7, 31),
       (18955, 8, 17),
       (18956, 9, 25),
       (18957, 10, 33),
       (18958, 11, 25),
       (18959, 12, 19),
       (18960, 13, 32),
       (18961, 14, 21),
       (18962, 15, 52),
       (18963, 16, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24180, 50, 14),
       (18964, 17, 29),
       (18965, 18, 43),
       (18966, 19, 24),
       (18967, 1, 10),
       (18968, 2, 42),
       (18969, 3, 27),
       (18970, 4, 20),
       (19121, 1, 10),
       (18971, 5, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18972, 6, 54),
       (18973, 7, 32),
       (18974, 8, 37),
       (18975, 9, 19),
       (18976, 10, 27),
       (18977, 11, 25),
       (18978, 12, 18),
       (18979, 13, 29),
       (18980, 14, 17),
       (18981, 15, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18982, 16, 15),
       (18983, 17, 23),
       (18984, 18, 38),
       (18985, 19, 47),
       (18986, 20, 38),
       (18987, 21, 28),
       (18988, 22, 24),
       (18989, 23, 35),
       (18990, 24, 40),
       (18991, 25, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (18992, 26, 28),
       (18993, 27, 45),
       (18994, 28, 38),
       (18995, 29, 15),
       (18996, 30, 23),
       (18997, 31, 37),
       (18998, 32, 21),
       (18999, 33, 19),
       (19000, 34, 31),
       (19001, 35, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19002, 36, 24),
       (19003, 37, 30),
       (19004, 1, 49),
       (19005, 2, 45),
       (19006, 3, 26),
       (19007, 4, 19),
       (19008, 5, 29),
       (19009, 6, 41),
       (19010, 7, 27),
       (19011, 8, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19012, 9, 26),
       (19013, 10, 23),
       (19014, 11, 16),
       (19015, 12, 38),
       (19016, 13, 34),
       (19017, 14, 35),
       (19018, 15, 19),
       (19019, 16, 56),
       (19020, 17, 41),
       (19021, 18, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19022, 19, 44),
       (19023, 20, 23),
       (19024, 21, 31),
       (19025, 22, 22),
       (19026, 23, 29),
       (19027, 24, 25),
       (19028, 25, 44),
       (19029, 1, 33),
       (19030, 2, 29),
       (19031, 3, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19032, 4, 43),
       (19033, 5, 32),
       (19034, 6, 24),
       (19035, 7, 39),
       (19036, 8, 22),
       (19037, 9, 37),
       (19038, 10, 28),
       (19039, 11, 36),
       (19040, 12, 18),
       (19041, 13, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19042, 14, 22),
       (19044, 16, 28),
       (19045, 17, 21),
       (19046, 18, 26),
       (19047, 19, 39),
       (19048, 20, 24),
       (19049, 21, 15),
       (19050, 22, 33),
       (19051, 23, 20),
       (19052, 24, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19053, 25, 18),
       (19054, 26, 29),
       (19055, 27, 20),
       (19056, 28, 34),
       (19057, 29, 33),
       (19058, 30, 48),
       (19059, 31, 51),
       (19060, 1, 44),
       (19061, 2, 12),
       (19062, 3, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19063, 4, 25),
       (19064, 5, 40),
       (19065, 6, 47),
       (19066, 7, 39),
       (19067, 8, 17),
       (19068, 9, 23),
       (19069, 10, 25),
       (19070, 11, 19),
       (19071, 12, 24),
       (19072, 13, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19073, 14, 33),
       (19074, 15, 39),
       (19075, 16, 12),
       (19076, 17, 51),
       (19077, 18, 17),
       (19078, 19, 53),
       (19079, 20, 15),
       (19080, 21, 22),
       (19118, 28, 21),
       (19081, 22, 56)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19082, 23, 16),
       (19083, 24, 36),
       (19084, 25, 16),
       (19085, 26, 23),
       (19086, 27, 23),
       (19087, 28, 38),
       (19088, 29, 22),
       (19089, 30, 13),
       (19090, 31, 30),
       (19091, 1, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19092, 2, 14),
       (19093, 3, 26),
       (19094, 4, 30),
       (19095, 5, 15),
       (19096, 6, 35),
       (19097, 7, 28),
       (19098, 8, 23),
       (19099, 9, 28),
       (19100, 10, 38),
       (19101, 11, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19102, 12, 30),
       (19103, 13, 31),
       (19104, 14, 19),
       (19105, 15, 42),
       (19106, 16, 41),
       (19107, 17, 22),
       (19108, 18, 13),
       (19109, 19, 35),
       (19110, 20, 31),
       (19111, 21, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19112, 22, 27),
       (19113, 23, 43),
       (19114, 24, 25),
       (19115, 25, 24),
       (19116, 26, 34),
       (19117, 27, 21),
       (19474, 19, 20),
       (19122, 2, 34),
       (19123, 3, 26),
       (19124, 4, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19125, 5, 22),
       (19126, 6, 29),
       (19127, 7, 26),
       (19128, 8, 10),
       (19129, 9, 26),
       (19130, 10, 28),
       (19131, 11, 27),
       (19132, 12, 36),
       (19133, 13, 34),
       (19134, 14, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19135, 15, 24),
       (19136, 16, 27),
       (19137, 17, 18),
       (19138, 18, 41),
       (19139, 19, 21),
       (19140, 20, 48),
       (19141, 21, 21),
       (19142, 22, 29),
       (19143, 23, 42),
       (19144, 24, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19145, 25, 35),
       (19146, 26, 22),
       (19147, 27, 29),
       (19148, 28, 35),
       (19149, 29, 31),
       (19150, 30, 34),
       (19151, 31, 40),
       (19152, 32, 42),
       (19370, 12, 16),
       (19153, 33, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19154, 34, 45),
       (19155, 1, 47),
       (19156, 2, 62),
       (19157, 3, 34),
       (19158, 4, 25),
       (19159, 5, 22),
       (19160, 6, 37),
       (19161, 7, 36),
       (19162, 8, 27),
       (19163, 9, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19164, 10, 43),
       (19165, 11, 22),
       (19166, 12, 41),
       (19167, 13, 40),
       (19168, 14, 45),
       (19169, 15, 18),
       (19170, 16, 46),
       (19171, 17, 22),
       (19172, 18, 15),
       (19173, 19, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19174, 20, 14),
       (19175, 21, 21),
       (19176, 22, 25),
       (19177, 1, 30),
       (19178, 2, 34),
       (19179, 3, 39),
       (19180, 4, 30),
       (19181, 5, 29),
       (19182, 6, 18),
       (19183, 7, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19184, 8, 28),
       (19185, 9, 23),
       (19186, 10, 54),
       (19187, 11, 24),
       (19441, 18, 22),
       (19188, 12, 43),
       (19189, 13, 24),
       (19190, 14, 20),
       (19191, 15, 29),
       (19230, 3, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19192, 16, 30),
       (19193, 17, 28),
       (19194, 18, 28),
       (19195, 19, 32),
       (19196, 20, 31),
       (19197, 21, 29),
       (19198, 22, 30),
       (19199, 23, 31),
       (19200, 24, 37),
       (19201, 25, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19202, 26, 45),
       (19203, 1, 14),
       (19204, 2, 27),
       (19205, 3, 29),
       (19206, 4, 21),
       (19207, 5, 40),
       (19208, 6, 19),
       (19209, 7, 39),
       (19210, 8, 17),
       (19211, 9, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19212, 10, 32),
       (19213, 11, 29),
       (19214, 12, 27),
       (19215, 13, 43),
       (19216, 14, 33),
       (19217, 15, 17),
       (19218, 16, 31),
       (19219, 17, 16),
       (19220, 18, 27),
       (19221, 19, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19222, 20, 37),
       (19223, 21, 24),
       (19224, 22, 30),
       (19225, 23, 25),
       (19226, 24, 18),
       (19227, 25, 41),
       (19228, 1, 10),
       (19229, 2, 21),
       (20375, 20, 14),
       (19231, 4, 51)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19232, 5, 35),
       (19233, 6, 32),
       (19234, 7, 34),
       (19235, 8, 42),
       (19236, 9, 21),
       (19237, 10, 46),
       (19238, 11, 33),
       (19239, 12, 37),
       (19240, 13, 40),
       (19241, 14, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19242, 15, 32),
       (19243, 16, 33),
       (19244, 17, 44),
       (19245, 18, 18),
       (19246, 19, 55),
       (19247, 20, 31),
       (19248, 21, 31),
       (19249, 22, 29),
       (19250, 23, 25),
       (19251, 1, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19252, 2, 28),
       (19253, 3, 32),
       (19254, 4, 40),
       (19255, 5, 41),
       (19256, 6, 35),
       (19257, 7, 27),
       (19258, 8, 25),
       (19259, 9, 34),
       (19260, 10, 23),
       (19261, 11, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19262, 12, 37),
       (19263, 13, 33),
       (19436, 13, 22),
       (19264, 14, 43),
       (19265, 15, 39),
       (19266, 16, 47),
       (19267, 17, 21),
       (19268, 1, 25),
       (19269, 2, 18),
       (19270, 3, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19271, 4, 29),
       (19272, 5, 14),
       (19273, 6, 32),
       (19274, 7, 32),
       (19275, 8, 10),
       (19276, 9, 20),
       (19277, 10, 42),
       (19278, 11, 59),
       (19279, 12, 42),
       (19280, 13, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19281, 14, 33),
       (19282, 15, 13),
       (19283, 16, 39),
       (19284, 17, 35),
       (19285, 18, 27),
       (19286, 19, 30),
       (19287, 20, 24),
       (19288, 21, 37),
       (19289, 22, 30),
       (19290, 23, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19291, 24, 18),
       (19292, 25, 23),
       (19293, 26, 16),
       (19294, 27, 40),
       (19295, 1, 12),
       (19296, 2, 23),
       (19297, 3, 37),
       (19298, 4, 27),
       (19299, 5, 18),
       (19300, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19301, 7, 26),
       (20376, 21, 11),
       (19302, 8, 37),
       (19303, 9, 36),
       (19304, 10, 36),
       (19305, 11, 14),
       (19306, 12, 40),
       (19307, 13, 34),
       (19308, 14, 48),
       (19309, 15, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19310, 16, 49),
       (19311, 17, 42),
       (19312, 18, 46),
       (19313, 19, 40),
       (19314, 20, 19),
       (19315, 21, 25),
       (19316, 22, 41),
       (19317, 1, 33),
       (19318, 2, 60),
       (19319, 3, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19320, 4, 36),
       (19321, 5, 25),
       (19322, 6, 28),
       (19323, 7, 32),
       (19324, 8, 40),
       (19325, 9, 47),
       (19326, 10, 42),
       (19327, 11, 32),
       (19328, 12, 12),
       (19329, 13, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19330, 14, 31),
       (19331, 15, 32),
       (19332, 16, 36),
       (19333, 17, 28),
       (19334, 18, 29),
       (22272, 5, 14),
       (19335, 19, 48),
       (19336, 20, 40),
       (19337, 21, 25),
       (19338, 1, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19339, 2, 18),
       (19340, 3, 35),
       (19341, 4, 58),
       (19342, 5, 36),
       (19343, 6, 30),
       (19344, 7, 34),
       (19345, 8, 20),
       (19346, 9, 48),
       (19347, 10, 50),
       (19348, 11, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19349, 12, 30),
       (19350, 13, 41),
       (19351, 14, 31),
       (19352, 15, 43),
       (19353, 16, 44),
       (19354, 17, 24),
       (19355, 18, 33),
       (19356, 19, 47),
       (19357, 20, 13),
       (19358, 21, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19359, 1, 35),
       (19360, 2, 18),
       (19361, 3, 30),
       (19362, 4, 45),
       (19363, 5, 23),
       (19364, 6, 33),
       (19365, 7, 14),
       (19366, 8, 49),
       (19367, 9, 17),
       (19368, 10, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19369, 11, 42),
       (19371, 13, 37),
       (19372, 14, 22),
       (19373, 15, 16),
       (19374, 16, 34),
       (19375, 17, 16),
       (19376, 18, 41),
       (19377, 19, 38),
       (19378, 20, 30),
       (19379, 21, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19380, 22, 30),
       (19381, 23, 24),
       (19382, 24, 41),
       (19383, 25, 47),
       (19384, 26, 56),
       (19385, 27, 56),
       (19386, 1, 10),
       (19387, 2, 20),
       (19388, 3, 20),
       (19389, 4, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19390, 5, 10),
       (19391, 6, 34),
       (19392, 7, 25),
       (19393, 8, 26),
       (19394, 9, 21),
       (19395, 10, 31),
       (19396, 11, 47),
       (19397, 12, 29),
       (19398, 13, 26),
       (19399, 14, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19400, 15, 38),
       (19401, 16, 23),
       (19402, 17, 29),
       (19403, 18, 52),
       (19404, 19, 18),
       (19405, 20, 34),
       (19437, 14, 20),
       (19406, 21, 45),
       (19407, 22, 33),
       (19516, 31, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19408, 23, 42),
       (19409, 1, 27),
       (19410, 2, 31),
       (19411, 3, 41),
       (19412, 4, 43),
       (19413, 5, 34),
       (19414, 6, 30),
       (19415, 7, 61),
       (19416, 8, 28),
       (19417, 9, 49)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19418, 10, 17),
       (19419, 11, 47),
       (19420, 12, 21),
       (19421, 13, 50),
       (19422, 14, 29),
       (19423, 15, 45),
       (19424, 1, 23),
       (19425, 2, 28),
       (19426, 3, 33),
       (19427, 4, 64)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19428, 5, 55),
       (19429, 6, 43),
       (19430, 7, 32),
       (19431, 8, 32),
       (19432, 9, 46),
       (19433, 10, 49),
       (19434, 11, 46),
       (19435, 12, 32),
       (19438, 15, 23),
       (19439, 16, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19440, 17, 23),
       (19442, 1, 29),
       (19443, 2, 37),
       (19444, 3, 12),
       (19445, 4, 51),
       (19446, 5, 27),
       (19447, 6, 21),
       (19448, 7, 83),
       (19449, 8, 25),
       (19450, 9, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19451, 10, 37),
       (19452, 11, 16),
       (19453, 12, 48),
       (19454, 13, 36),
       (19455, 14, 34),
       (19456, 1, 19),
       (19457, 2, 32),
       (19458, 3, 44),
       (19459, 4, 39),
       (19460, 5, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19461, 6, 37),
       (19462, 7, 27),
       (19463, 8, 27),
       (19464, 9, 21),
       (19465, 10, 29),
       (19466, 11, 36),
       (19467, 12, 23),
       (19468, 13, 29),
       (19469, 14, 28),
       (19470, 15, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19471, 16, 22),
       (19472, 17, 27),
       (19473, 18, 40),
       (19475, 20, 24),
       (19476, 21, 29),
       (19477, 22, 27),
       (19478, 23, 33),
       (19479, 24, 28),
       (19480, 25, 42),
       (19481, 26, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19482, 27, 16),
       (19483, 28, 35),
       (19484, 29, 10),
       (19485, 30, 38),
       (19486, 1, 16),
       (19487, 2, 43),
       (19488, 3, 35),
       (19489, 4, 29),
       (19490, 5, 34),
       (19491, 6, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19492, 7, 30),
       (19493, 8, 41),
       (19494, 9, 37),
       (19495, 10, 34),
       (19496, 11, 19),
       (19497, 12, 37),
       (19498, 13, 22),
       (19499, 14, 52),
       (19500, 15, 39),
       (19501, 16, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19502, 17, 37),
       (19503, 18, 26),
       (19504, 19, 25),
       (19505, 20, 31),
       (19506, 21, 17),
       (19507, 22, 34),
       (19508, 23, 15),
       (19509, 24, 26),
       (19510, 25, 22),
       (19511, 26, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19512, 27, 30),
       (19513, 28, 33),
       (19514, 29, 19),
       (19515, 30, 19),
       (19517, 32, 48),
       (19518, 33, 36),
       (19519, 34, 28),
       (19520, 35, 25),
       (19521, 36, 37),
       (19522, 37, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19523, 38, 37),
       (19524, 39, 30),
       (19525, 40, 19),
       (19526, 1, 52),
       (19527, 2, 31),
       (19528, 3, 32),
       (19529, 4, 10),
       (19530, 5, 36),
       (19531, 6, 40),
       (19532, 7, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19533, 8, 50),
       (19534, 9, 42),
       (19535, 10, 31),
       (19536, 1, 37),
       (19537, 2, 20),
       (19538, 3, 47),
       (19539, 4, 29),
       (19540, 5, 40),
       (19541, 6, 33),
       (19542, 7, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19543, 8, 14),
       (19544, 9, 63),
       (19545, 10, 38),
       (19546, 11, 23),
       (19584, 11, 37),
       (19547, 12, 42),
       (19548, 13, 33),
       (19549, 14, 32),
       (19550, 15, 35),
       (19551, 16, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19552, 17, 23),
       (19553, 18, 35),
       (19554, 19, 15),
       (19555, 20, 34),
       (19556, 21, 9),
       (19557, 22, 24),
       (19558, 23, 17),
       (19559, 24, 20),
       (19560, 25, 20),
       (19561, 26, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19562, 27, 39),
       (19563, 28, 32),
       (19564, 29, 46),
       (19565, 30, 52),
       (19566, 31, 41),
       (19567, 32, 30),
       (19568, 33, 44),
       (19569, 34, 36),
       (19570, 35, 18),
       (19571, 36, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19572, 37, 16),
       (19573, 38, 30),
       (19574, 1, 22),
       (19575, 2, 43),
       (19576, 3, 37),
       (19577, 4, 28),
       (19578, 5, 28),
       (19579, 6, 23),
       (19580, 7, 21),
       (19581, 8, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19582, 9, 38),
       (19583, 10, 37),
       (19585, 12, 33),
       (19586, 13, 31),
       (19587, 14, 22),
       (19588, 15, 47),
       (19589, 16, 36),
       (19590, 17, 21),
       (19591, 18, 53),
       (19592, 19, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19593, 20, 39),
       (19594, 21, 40),
       (19595, 22, 22),
       (19596, 23, 34),
       (19597, 24, 30),
       (19598, 1, 24),
       (19599, 2, 17),
       (19600, 3, 51),
       (19601, 4, 26),
       (19602, 5, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19603, 6, 34),
       (19604, 7, 36),
       (19605, 8, 64),
       (19606, 9, 40),
       (19607, 10, 26),
       (19608, 11, 40),
       (19609, 12, 34),
       (19610, 13, 34),
       (19611, 14, 30),
       (19612, 15, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19613, 16, 51),
       (19614, 17, 19),
       (19615, 18, 51),
       (19616, 19, 31),
       (19617, 20, 33),
       (19618, 21, 34),
       (19619, 22, 33),
       (19620, 1, 60),
       (19621, 2, 21),
       (19622, 3, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19623, 4, 40),
       (19624, 5, 31),
       (19625, 6, 38),
       (19626, 7, 21),
       (19627, 8, 29),
       (19628, 9, 29),
       (19629, 10, 18),
       (19630, 11, 46),
       (19631, 12, 27),
       (19632, 13, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19633, 14, 49),
       (19634, 15, 28),
       (19635, 16, 30),
       (19636, 17, 13),
       (19637, 1, 48),
       (19638, 2, 31),
       (19639, 3, 30),
       (19640, 4, 27),
       (19641, 5, 17),
       (19642, 6, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19643, 7, 33),
       (19644, 8, 39),
       (19645, 9, 17),
       (19646, 10, 31),
       (19647, 11, 28),
       (19648, 12, 21),
       (19649, 13, 19),
       (19650, 14, 56),
       (19651, 15, 13),
       (19652, 16, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20267, 54, 18),
       (19653, 17, 34),
       (19654, 18, 56),
       (19655, 19, 33),
       (19656, 20, 22),
       (19657, 21, 53),
       (19865, 22, 25),
       (19658, 22, 38),
       (19659, 23, 40),
       (19660, 24, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19661, 25, 43),
       (19662, 26, 45),
       (19663, 27, 18),
       (19664, 28, 31),
       (19665, 29, 15),
       (19666, 30, 10),
       (19667, 31, 38),
       (19668, 32, 48),
       (19669, 1, 10),
       (19670, 2, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19671, 3, 44),
       (19672, 4, 14),
       (19673, 5, 18),
       (19674, 6, 37),
       (19675, 7, 30),
       (19676, 8, 38),
       (19677, 9, 19),
       (19678, 10, 50),
       (19679, 11, 52),
       (19680, 12, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19681, 13, 19),
       (19682, 14, 40),
       (19683, 15, 29),
       (19684, 16, 43),
       (19685, 17, 34),
       (19686, 18, 42),
       (19687, 19, 38),
       (19688, 20, 24),
       (19689, 21, 46),
       (19690, 22, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19691, 23, 24),
       (19692, 24, 31),
       (19693, 1, 23),
       (19694, 2, 27),
       (19695, 3, 24),
       (19696, 4, 35),
       (19697, 5, 21),
       (19698, 6, 30),
       (19699, 7, 33),
       (19700, 8, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19701, 9, 45),
       (19702, 10, 35),
       (19703, 11, 19),
       (19704, 12, 61),
       (19705, 13, 36),
       (19706, 14, 23),
       (19707, 15, 31),
       (19708, 16, 33),
       (19709, 17, 21),
       (19710, 18, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19711, 19, 35),
       (19712, 20, 40),
       (19713, 21, 34),
       (19714, 22, 29),
       (19715, 23, 45),
       (19716, 24, 21),
       (19717, 25, 15),
       (19718, 26, 14),
       (19719, 27, 31),
       (19720, 28, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19721, 29, 24),
       (19722, 30, 24),
       (19723, 31, 25),
       (19724, 32, 45),
       (19725, 33, 49),
       (19726, 34, 51),
       (19727, 35, 45),
       (19728, 36, 26),
       (19798, 22, 33),
       (19729, 37, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19730, 38, 26),
       (19731, 39, 21),
       (19732, 40, 49),
       (19733, 1, 25),
       (19734, 2, 36),
       (19735, 3, 39),
       (19736, 4, 44),
       (19737, 5, 29),
       (19738, 6, 12),
       (19739, 7, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19740, 8, 69),
       (19741, 9, 26),
       (19742, 10, 20),
       (19743, 11, 25),
       (19744, 12, 54),
       (19745, 13, 8),
       (19746, 14, 40),
       (19747, 15, 24),
       (19748, 16, 22),
       (19749, 17, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19750, 18, 32),
       (19751, 19, 37),
       (19752, 20, 32),
       (19753, 21, 33),
       (19754, 22, 23),
       (19755, 23, 42),
       (19756, 24, 54),
       (19757, 25, 30),
       (19758, 26, 10),
       (19759, 27, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19760, 28, 31),
       (19761, 29, 45),
       (19762, 30, 43),
       (19763, 31, 37),
       (19799, 23, 10),
       (19764, 32, 46),
       (19765, 33, 32),
       (19766, 34, 18),
       (19767, 35, 55),
       (19768, 36, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19769, 37, 44),
       (19770, 38, 13),
       (19771, 39, 29),
       (19772, 40, 39),
       (19773, 41, 29),
       (19774, 42, 31),
       (19775, 43, 28),
       (19776, 44, 66),
       (19777, 1, 25),
       (19778, 2, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19779, 3, 21),
       (19780, 4, 39),
       (19781, 5, 43),
       (19782, 6, 25),
       (19783, 7, 24),
       (19784, 8, 36),
       (19785, 9, 57),
       (19786, 10, 47),
       (19787, 11, 73),
       (20368, 13, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19788, 12, 38),
       (19789, 13, 54),
       (19790, 14, 29),
       (19791, 15, 30),
       (19792, 16, 26),
       (19793, 17, 21),
       (19794, 18, 26),
       (19795, 19, 10),
       (19796, 20, 31),
       (19797, 21, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19800, 24, 38),
       (19801, 25, 24),
       (19802, 26, 50),
       (19803, 1, 45),
       (19804, 2, 43),
       (19805, 3, 47),
       (19806, 4, 24),
       (19807, 5, 44),
       (19808, 6, 16),
       (19809, 7, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19810, 8, 31),
       (19811, 9, 38),
       (19812, 10, 47),
       (19813, 11, 30),
       (19814, 12, 12),
       (19815, 13, 36),
       (19816, 14, 50),
       (19817, 15, 41),
       (19818, 16, 45),
       (19819, 17, 62)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19820, 18, 39),
       (19821, 19, 30),
       (23244, 9, 13),
       (19822, 20, 43),
       (19823, 21, 45),
       (19824, 22, 41),
       (19825, 1, 22),
       (19826, 2, 31),
       (19827, 3, 27),
       (19828, 4, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19829, 5, 27),
       (19830, 6, 32),
       (19831, 7, 36),
       (19832, 8, 36),
       (19833, 9, 18),
       (19834, 10, 21),
       (19835, 11, 48),
       (19836, 12, 10),
       (19837, 13, 35),
       (19838, 14, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19839, 15, 69),
       (19840, 16, 30),
       (19841, 17, 57),
       (19842, 18, 43),
       (19843, 19, 27),
       (19844, 1, 28),
       (19845, 2, 46),
       (19846, 3, 40),
       (19847, 4, 34),
       (19848, 5, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19849, 6, 52),
       (19850, 7, 35),
       (19851, 8, 29),
       (19852, 9, 47),
       (19853, 10, 49),
       (19854, 11, 23),
       (19855, 12, 55),
       (19856, 13, 24),
       (19857, 14, 56),
       (19858, 15, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19859, 16, 34),
       (19860, 17, 19),
       (19861, 18, 24),
       (19862, 19, 21),
       (19863, 20, 37),
       (19864, 21, 45),
       (20105, 24, 20),
       (19866, 23, 47),
       (19867, 24, 23),
       (19868, 25, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19869, 26, 35),
       (19870, 27, 29),
       (19871, 28, 28),
       (19872, 29, 46),
       (19873, 30, 42),
       (19874, 31, 46),
       (19875, 32, 51),
       (19876, 1, 29),
       (19877, 2, 27),
       (19878, 3, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19879, 4, 19),
       (19880, 5, 28),
       (19881, 6, 12),
       (19882, 7, 45),
       (19883, 8, 22),
       (19884, 9, 20),
       (19885, 10, 40),
       (19886, 11, 24),
       (19887, 12, 26),
       (19888, 13, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20369, 14, 16),
       (19889, 14, 33),
       (19890, 15, 30),
       (19891, 16, 20),
       (19892, 17, 46),
       (19893, 18, 28),
       (19894, 19, 24),
       (19895, 20, 40),
       (19896, 21, 48),
       (19897, 1, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19898, 2, 46),
       (19899, 3, 26),
       (19997, 21, 31),
       (19900, 4, 60),
       (19901, 5, 24),
       (19902, 6, 48),
       (19903, 7, 34),
       (19904, 8, 17),
       (19905, 9, 52),
       (19906, 10, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19907, 11, 39),
       (19908, 12, 27),
       (19909, 13, 26),
       (19910, 14, 40),
       (19911, 15, 32),
       (19912, 16, 40),
       (19913, 17, 50),
       (19914, 18, 43),
       (19915, 19, 32),
       (19916, 20, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19917, 21, 17),
       (19918, 22, 57),
       (19919, 23, 47),
       (19920, 24, 18),
       (19921, 25, 52),
       (19922, 26, 29),
       (19923, 27, 38),
       (19924, 28, 17),
       (19925, 1, 37),
       (19926, 2, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19927, 3, 43),
       (19928, 4, 55),
       (19929, 5, 46),
       (19930, 6, 27),
       (19931, 7, 18),
       (19932, 8, 24),
       (19998, 22, 30),
       (19933, 9, 39),
       (19934, 10, 33),
       (19935, 11, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19936, 12, 24),
       (19937, 13, 28),
       (19938, 14, 38),
       (19939, 15, 21),
       (19940, 16, 44),
       (19941, 17, 28),
       (19942, 18, 35),
       (19943, 1, 47),
       (19944, 2, 22),
       (19945, 3, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19946, 4, 70),
       (19947, 5, 70),
       (19948, 6, 25),
       (19949, 7, 63),
       (19950, 8, 47),
       (19951, 9, 42),
       (20370, 15, 13),
       (19952, 10, 45),
       (19953, 11, 54),
       (19954, 12, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19955, 13, 24),
       (19956, 14, 37),
       (19957, 15, 59),
       (19958, 16, 26),
       (19959, 1, 56),
       (19960, 2, 44),
       (19961, 3, 28),
       (19962, 4, 19),
       (19963, 5, 43),
       (20106, 25, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19964, 6, 40),
       (19965, 7, 39),
       (19966, 8, 44),
       (19967, 9, 52),
       (19968, 10, 63),
       (19969, 11, 32),
       (19970, 12, 28),
       (19971, 13, 36),
       (19972, 14, 26),
       (19973, 15, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19974, 16, 69),
       (19975, 17, 20),
       (19976, 18, 34),
       (19977, 1, 33),
       (19978, 2, 45),
       (19979, 3, 21),
       (19980, 4, 50),
       (19981, 5, 33),
       (23708, 7, 14),
       (19982, 6, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19983, 7, 17),
       (19984, 8, 31),
       (19985, 9, 23),
       (19986, 10, 42),
       (19987, 11, 36),
       (19988, 12, 23),
       (19989, 13, 23),
       (19990, 14, 35),
       (19991, 15, 37),
       (19992, 16, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (19993, 17, 50),
       (19994, 18, 64),
       (19995, 19, 25),
       (19996, 20, 45),
       (19999, 1, 39),
       (20000, 2, 43),
       (20001, 3, 35),
       (20002, 4, 31),
       (20003, 5, 39),
       (20004, 6, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20005, 7, 22),
       (20006, 8, 12),
       (20007, 9, 34),
       (20008, 10, 48),
       (20009, 11, 40),
       (20010, 12, 51),
       (20011, 13, 30),
       (20012, 1, 35),
       (20013, 2, 42),
       (20014, 3, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20015, 4, 27),
       (20016, 5, 21),
       (20371, 16, 16),
       (20017, 6, 35),
       (20018, 7, 46),
       (20019, 8, 53),
       (20020, 9, 47),
       (20021, 10, 31),
       (20022, 11, 27),
       (20023, 12, 81)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20024, 13, 28),
       (20025, 14, 52),
       (20026, 15, 41),
       (20027, 16, 22),
       (20028, 17, 70),
       (20029, 18, 36),
       (24373, 8, 15),
       (20030, 19, 36),
       (20031, 20, 27),
       (20032, 21, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20033, 22, 44),
       (20034, 23, 46),
       (20035, 24, 27),
       (20036, 25, 63),
       (20037, 26, 55),
       (20038, 27, 42),
       (20039, 28, 49),
       (20040, 29, 33),
       (20041, 30, 52),
       (20042, 1, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20043, 2, 12),
       (20044, 3, 27),
       (20045, 4, 36),
       (20046, 5, 39),
       (20047, 1, 14),
       (20048, 2, 39),
       (20049, 3, 12),
       (20050, 4, 24),
       (20051, 5, 35),
       (20052, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20053, 7, 17),
       (20054, 8, 35),
       (20055, 9, 32),
       (20056, 10, 58),
       (20057, 11, 26),
       (20058, 12, 32),
       (20059, 13, 24),
       (20060, 14, 31),
       (20061, 15, 16),
       (20062, 16, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20063, 17, 20),
       (20102, 21, 17),
       (20064, 18, 29),
       (20065, 19, 27),
       (20066, 20, 18),
       (20067, 21, 46),
       (20068, 22, 26),
       (20069, 23, 24),
       (20070, 24, 23),
       (20071, 25, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20072, 26, 45),
       (20073, 27, 48),
       (20074, 28, 56),
       (20075, 1, 19),
       (20076, 2, 49),
       (20077, 3, 38),
       (20078, 4, 36),
       (20079, 5, 22),
       (20080, 6, 25),
       (23709, 8, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20081, 7, 25),
       (20082, 1, 36),
       (20083, 2, 41),
       (20084, 3, 12),
       (20085, 4, 14),
       (20086, 5, 30),
       (20087, 6, 13),
       (20088, 7, 31),
       (20089, 8, 29),
       (20090, 9, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20091, 10, 22),
       (20092, 11, 43),
       (20093, 12, 36),
       (20094, 13, 20),
       (20095, 14, 14),
       (20096, 15, 33),
       (20097, 16, 14),
       (20098, 17, 27),
       (20099, 18, 32),
       (20100, 19, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20101, 20, 25),
       (20107, 26, 25),
       (20108, 27, 26),
       (20109, 28, 29),
       (20110, 29, 28),
       (20111, 30, 16),
       (20112, 31, 24),
       (20113, 32, 43),
       (20114, 33, 39),
       (20115, 34, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20116, 35, 26),
       (20117, 36, 30),
       (20118, 37, 21),
       (20119, 38, 30),
       (20120, 39, 34),
       (20121, 40, 20),
       (20122, 41, 32),
       (20123, 42, 17),
       (20124, 43, 17),
       (20125, 44, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20126, 45, 46),
       (20127, 46, 24),
       (20128, 47, 23),
       (20129, 1, 31),
       (20130, 2, 52),
       (20131, 3, 39),
       (20132, 4, 24),
       (20133, 5, 42),
       (20134, 6, 16),
       (20135, 7, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20136, 8, 30),
       (20137, 9, 26),
       (20138, 10, 36),
       (20139, 11, 17),
       (20140, 12, 39),
       (20141, 13, 31),
       (20142, 14, 29),
       (20143, 15, 15),
       (20214, 1, 22),
       (20144, 16, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20145, 17, 24),
       (20146, 18, 29),
       (20147, 19, 61),
       (20148, 20, 48),
       (20149, 21, 23),
       (20150, 22, 41),
       (20151, 23, 28),
       (20152, 24, 30),
       (20154, 26, 28),
       (20155, 27, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20156, 28, 31),
       (20157, 29, 34),
       (20158, 30, 34),
       (20159, 31, 27),
       (20372, 17, 14),
       (20160, 32, 46),
       (20161, 33, 27),
       (20162, 34, 25),
       (20163, 35, 19),
       (20164, 36, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20165, 37, 45),
       (20166, 38, 19),
       (20167, 39, 22),
       (20168, 1, 18),
       (20169, 2, 39),
       (20170, 3, 34),
       (20171, 4, 36),
       (20172, 5, 27),
       (20173, 6, 36),
       (20174, 7, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20175, 8, 27),
       (20176, 9, 53),
       (20177, 10, 17),
       (20178, 11, 31),
       (20179, 12, 33),
       (20180, 13, 33),
       (20181, 14, 27),
       (20182, 15, 37),
       (20183, 16, 42),
       (20184, 17, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20185, 18, 30),
       (20186, 19, 32),
       (20187, 20, 45),
       (20188, 21, 35),
       (20189, 22, 13),
       (20190, 23, 22),
       (20191, 24, 32),
       (20192, 25, 32),
       (20193, 26, 27),
       (20194, 27, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24364, 40, 15),
       (20195, 28, 30),
       (20196, 29, 51),
       (20197, 30, 26),
       (20198, 31, 28),
       (20199, 32, 34),
       (20200, 33, 33),
       (20201, 34, 31),
       (20202, 35, 24),
       (20203, 36, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20204, 37, 41),
       (20205, 38, 27),
       (20206, 39, 39),
       (20207, 40, 29),
       (20208, 41, 26),
       (20209, 42, 43),
       (20210, 43, 30),
       (20211, 44, 62),
       (20212, 45, 49),
       (20213, 46, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20215, 2, 31),
       (20216, 3, 36),
       (20217, 4, 19),
       (20218, 5, 28),
       (20219, 6, 37),
       (20220, 7, 29),
       (20221, 8, 22),
       (20222, 9, 37),
       (20223, 10, 20),
       (20224, 11, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20225, 12, 36),
       (20226, 13, 20),
       (20227, 14, 30),
       (20228, 15, 27),
       (20229, 16, 43),
       (20373, 18, 13),
       (20230, 17, 32),
       (20231, 18, 17),
       (20232, 19, 31),
       (20233, 20, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20234, 21, 14),
       (20235, 22, 55),
       (20236, 23, 40),
       (20237, 24, 28),
       (20238, 25, 39),
       (20239, 26, 27),
       (20240, 27, 47),
       (20241, 28, 26),
       (20242, 29, 28),
       (20243, 30, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20244, 31, 28),
       (20245, 32, 21),
       (20246, 33, 40),
       (20247, 34, 41),
       (20248, 35, 31),
       (20249, 36, 28),
       (20250, 37, 18),
       (20251, 38, 14),
       (20252, 39, 30),
       (20253, 40, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20254, 41, 22),
       (20255, 42, 18),
       (20256, 43, 27),
       (20257, 44, 42),
       (20258, 45, 22),
       (20259, 46, 43),
       (20260, 47, 35),
       (20261, 48, 30),
       (20262, 49, 22),
       (20263, 50, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20264, 51, 25),
       (20265, 52, 26),
       (20266, 53, 28),
       (20268, 55, 28),
       (20269, 56, 34),
       (20270, 57, 40),
       (20271, 58, 42),
       (20272, 59, 40),
       (20273, 60, 24),
       (20274, 61, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20275, 62, 32),
       (20276, 63, 32),
       (20277, 64, 36),
       (20278, 1, 33),
       (20279, 2, 20),
       (20280, 3, 33),
       (20281, 4, 49),
       (20282, 5, 13),
       (20283, 6, 31),
       (20284, 7, 57)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20285, 8, 27),
       (20286, 9, 28),
       (20287, 10, 24),
       (20288, 11, 34),
       (20408, 53, 17),
       (20289, 12, 40),
       (20290, 13, 27),
       (20291, 14, 25),
       (20292, 15, 47),
       (20293, 16, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20294, 17, 42),
       (20295, 18, 28),
       (20296, 19, 44),
       (20297, 20, 36),
       (20298, 21, 34),
       (20299, 22, 42),
       (20300, 23, 22),
       (20301, 24, 24),
       (20302, 25, 69),
       (20303, 26, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20304, 27, 30),
       (20305, 28, 21),
       (20306, 29, 19),
       (20307, 30, 36),
       (20308, 31, 62),
       (20309, 32, 23),
       (20310, 33, 20),
       (20311, 34, 33),
       (20312, 1, 35),
       (20313, 2, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20314, 3, 31),
       (20315, 4, 33),
       (20316, 5, 31),
       (20317, 6, 31),
       (20318, 7, 49),
       (20319, 8, 31),
       (20320, 9, 34),
       (20321, 10, 38),
       (20322, 11, 30),
       (20323, 12, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20324, 13, 39),
       (20325, 14, 45),
       (20326, 15, 42),
       (20327, 16, 35),
       (20328, 17, 36),
       (20329, 18, 32),
       (20330, 19, 31),
       (20331, 20, 34),
       (20332, 21, 45),
       (20374, 19, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20333, 22, 32),
       (20334, 1, 41),
       (20335, 2, 46),
       (20336, 3, 38),
       (20337, 4, 45),
       (20338, 5, 37),
       (20339, 6, 49),
       (20340, 7, 46),
       (20341, 8, 40),
       (20342, 9, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20343, 10, 40),
       (20344, 11, 42),
       (20345, 12, 33),
       (20346, 13, 45),
       (20347, 14, 34),
       (20348, 15, 39),
       (20349, 16, 40),
       (20350, 17, 47),
       (20351, 18, 36),
       (20352, 19, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20353, 20, 40),
       (20354, 21, 41),
       (20355, 22, 44),
       (20356, 1, 15),
       (20357, 2, 16),
       (20358, 3, 14),
       (20359, 4, 15),
       (20360, 5, 13),
       (20361, 6, 17),
       (20362, 7, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20363, 8, 14),
       (20364, 9, 16),
       (20365, 10, 17),
       (20366, 11, 17),
       (20367, 12, 15),
       (20377, 22, 18),
       (20378, 23, 10),
       (20379, 24, 14),
       (20380, 25, 16),
       (20381, 26, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20382, 27, 15),
       (20383, 28, 15),
       (20384, 29, 16),
       (20385, 30, 18),
       (20386, 31, 10),
       (20387, 32, 18),
       (20388, 33, 13),
       (20389, 34, 11),
       (20390, 35, 16),
       (20391, 36, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20392, 37, 17),
       (20393, 38, 15),
       (20394, 39, 15),
       (20395, 40, 13),
       (20396, 41, 15),
       (20397, 42, 11),
       (20398, 43, 16),
       (20399, 44, 15),
       (20400, 45, 16),
       (20401, 46, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20402, 47, 12),
       (20403, 48, 18),
       (20404, 49, 11),
       (20405, 50, 9),
       (20406, 51, 14),
       (20407, 52, 16),
       (20409, 54, 12),
       (20412, 57, 16),
       (20413, 58, 16),
       (20414, 59, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20415, 60, 13),
       (20416, 61, 14),
       (20417, 62, 18),
       (20418, 63, 14),
       (20419, 64, 17),
       (20420, 65, 12),
       (20421, 66, 16),
       (20422, 1, 28),
       (20423, 2, 25),
       (20424, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20425, 4, 28),
       (20426, 5, 20),
       (20427, 6, 31),
       (20428, 7, 26),
       (20429, 8, 30),
       (20430, 9, 31),
       (20431, 10, 25),
       (20432, 11, 27),
       (20433, 12, 28),
       (20434, 13, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20435, 14, 21),
       (20436, 15, 29),
       (20437, 16, 27),
       (20438, 17, 25),
       (20439, 18, 26),
       (20440, 19, 25),
       (20441, 20, 28),
       (20442, 21, 33),
       (20443, 22, 35),
       (20444, 1, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20445, 2, 11),
       (20446, 3, 11),
       (20447, 4, 14),
       (20448, 5, 14),
       (20449, 6, 18),
       (20450, 7, 13),
       (20451, 8, 15),
       (20452, 9, 18),
       (20453, 10, 15),
       (20454, 11, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20455, 12, 15),
       (20456, 13, 14),
       (20457, 14, 14),
       (20458, 15, 14),
       (20459, 16, 15),
       (20462, 19, 14),
       (20463, 20, 14),
       (20464, 21, 19),
       (20465, 22, 13),
       (20466, 1, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20467, 2, 18),
       (20468, 3, 34),
       (20469, 4, 46),
       (20470, 5, 26),
       (20471, 6, 15),
       (20472, 7, 28),
       (20473, 8, 26),
       (20474, 9, 20),
       (20475, 10, 50),
       (20476, 11, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20477, 12, 22),
       (20478, 13, 45),
       (20479, 14, 16),
       (20480, 15, 25),
       (20481, 16, 35),
       (20482, 17, 16),
       (20483, 18, 21),
       (20484, 19, 28),
       (20485, 20, 34),
       (20486, 21, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20487, 22, 29),
       (20488, 23, 35),
       (20489, 24, 42),
       (20490, 25, 22),
       (20491, 26, 42),
       (20492, 27, 51),
       (20493, 28, 57),
       (20494, 1, 19),
       (20495, 2, 26),
       (20496, 3, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20497, 4, 25),
       (20498, 5, 29),
       (20499, 6, 48),
       (20500, 7, 23),
       (20501, 8, 30),
       (20502, 9, 22),
       (20503, 10, 24),
       (20504, 1, 25),
       (20505, 2, 14),
       (20506, 3, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20507, 4, 24),
       (20508, 5, 24),
       (20509, 6, 32),
       (20510, 7, 33),
       (20511, 8, 18),
       (20512, 9, 27),
       (20513, 10, 27),
       (20514, 11, 37),
       (20515, 12, 28),
       (20516, 13, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20517, 14, 31),
       (20518, 15, 32),
       (20519, 16, 21),
       (20520, 17, 28),
       (20521, 18, 49),
       (20522, 19, 31),
       (20523, 20, 58),
       (20524, 21, 32),
       (20525, 22, 28),
       (20526, 23, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20527, 24, 28),
       (20528, 25, 27),
       (20529, 26, 33),
       (20530, 27, 42),
       (20531, 1, 23),
       (20532, 2, 31),
       (20533, 3, 50),
       (20534, 4, 37),
       (20535, 5, 35),
       (20536, 6, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20537, 7, 22),
       (20538, 8, 29),
       (24420, 12, 11),
       (20539, 9, 52),
       (20540, 10, 24),
       (20541, 11, 21),
       (20542, 12, 24),
       (20543, 13, 23),
       (20544, 14, 45),
       (20545, 15, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20546, 16, 39),
       (20547, 17, 20),
       (20548, 1, 45),
       (20549, 2, 58),
       (20550, 3, 16),
       (20551, 4, 35),
       (20552, 5, 25),
       (24599, 10, 13),
       (20553, 6, 45),
       (20554, 7, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20555, 8, 30),
       (20556, 9, 28),
       (20557, 10, 40),
       (20558, 11, 44),
       (20559, 12, 54),
       (20560, 13, 42),
       (20561, 14, 27),
       (20562, 15, 44),
       (20563, 16, 38),
       (20564, 17, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20565, 1, 10),
       (20566, 2, 16),
       (20567, 3, 50),
       (20568, 4, 25),
       (20569, 5, 26),
       (20570, 6, 51),
       (20571, 7, 19),
       (20572, 8, 28),
       (20641, 7, 42),
       (20573, 9, 65)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20574, 10, 23),
       (20575, 11, 43),
       (20576, 12, 41),
       (20577, 13, 54),
       (20578, 14, 34),
       (20579, 1, 10),
       (20580, 2, 29),
       (20581, 3, 32),
       (20582, 4, 39),
       (20583, 5, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20584, 6, 16),
       (20585, 7, 32),
       (20586, 8, 34),
       (20587, 9, 40),
       (20588, 10, 19),
       (20589, 11, 30),
       (20590, 12, 26),
       (20591, 13, 40),
       (20592, 14, 26),
       (20593, 15, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20594, 16, 29),
       (20595, 17, 14),
       (20596, 18, 26),
       (20597, 19, 57),
       (20598, 20, 37),
       (20599, 21, 30),
       (20600, 22, 25),
       (20601, 23, 19),
       (20602, 24, 34),
       (20603, 25, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20604, 26, 34),
       (20605, 27, 50),
       (20606, 1, 46),
       (20607, 2, 38),
       (20642, 8, 17),
       (24937, 43, 17),
       (20608, 3, 67),
       (20609, 4, 22),
       (20610, 5, 46),
       (20611, 6, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20612, 7, 21),
       (20613, 8, 25),
       (20614, 9, 17),
       (20615, 10, 32),
       (20616, 11, 46),
       (20617, 12, 43),
       (20618, 13, 17),
       (20619, 14, 29),
       (22392, 12, 16),
       (20620, 15, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20621, 16, 58),
       (20622, 17, 59),
       (20623, 18, 35),
       (20624, 1, 33),
       (20625, 2, 56),
       (20626, 3, 42),
       (20627, 4, 44),
       (20628, 5, 28),
       (20629, 6, 45),
       (20630, 7, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20631, 8, 44),
       (20632, 9, 45),
       (20633, 10, 25),
       (20634, 11, 27),
       (20635, 1, 36),
       (20636, 2, 48),
       (20637, 3, 24),
       (20638, 4, 39),
       (20639, 5, 26),
       (20640, 6, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20643, 9, 34),
       (20644, 10, 20),
       (20645, 11, 33),
       (20646, 12, 30),
       (20647, 13, 14),
       (20648, 14, 43),
       (20649, 15, 18),
       (20650, 16, 33),
       (20651, 17, 26),
       (20652, 18, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20653, 19, 52),
       (20654, 20, 25),
       (20655, 21, 24),
       (20840, 14, 23),
       (20656, 22, 30),
       (20657, 1, 56),
       (20658, 2, 24),
       (20659, 3, 21),
       (20660, 4, 10),
       (20661, 5, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20662, 6, 19),
       (20663, 7, 40),
       (20664, 8, 18),
       (20665, 9, 26),
       (20666, 10, 24),
       (20667, 11, 27),
       (20668, 12, 37),
       (20669, 13, 45),
       (20670, 14, 10),
       (20671, 15, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20672, 16, 46),
       (20673, 17, 36),
       (20674, 18, 23),
       (20675, 19, 36),
       (20676, 20, 27),
       (20677, 21, 31),
       (20678, 22, 27),
       (20679, 23, 28),
       (20680, 24, 36),
       (20681, 25, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20682, 1, 10),
       (20683, 2, 35),
       (20684, 3, 43),
       (20685, 4, 35),
       (20686, 5, 13),
       (20687, 6, 42),
       (20688, 7, 48),
       (20689, 8, 13),
       (20690, 9, 19),
       (20691, 10, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20692, 11, 25),
       (20693, 12, 45),
       (21066, 9, 19),
       (20694, 13, 41),
       (20695, 14, 30),
       (20696, 15, 23),
       (20697, 16, 41),
       (20699, 18, 18),
       (20700, 19, 60),
       (20701, 20, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20702, 21, 10),
       (20703, 22, 25),
       (20704, 23, 43),
       (20705, 24, 18),
       (20706, 25, 44),
       (20707, 26, 10),
       (20708, 27, 32),
       (20709, 28, 34),
       (20710, 1, 10),
       (20711, 2, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20712, 3, 20),
       (20713, 4, 13),
       (20714, 5, 29),
       (20715, 6, 31),
       (20716, 7, 27),
       (20717, 8, 25),
       (20718, 9, 59),
       (20719, 10, 30),
       (20720, 11, 34),
       (20721, 12, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20722, 13, 37),
       (20723, 14, 51),
       (20724, 15, 36),
       (20725, 16, 29),
       (20726, 17, 27),
       (20727, 18, 46),
       (20728, 19, 46),
       (20729, 20, 48),
       (20730, 21, 35),
       (20731, 22, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20732, 23, 30),
       (20733, 1, 15),
       (20734, 2, 10),
       (20735, 3, 32),
       (20736, 4, 56),
       (20737, 5, 23),
       (20738, 6, 30),
       (20739, 7, 57),
       (20740, 8, 42),
       (20741, 9, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20742, 10, 24),
       (20743, 11, 39),
       (20744, 12, 10),
       (20745, 13, 43),
       (20746, 14, 26),
       (20747, 15, 31),
       (20748, 16, 33),
       (20749, 17, 27),
       (20750, 18, 29),
       (20751, 19, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20752, 20, 33),
       (20753, 21, 39),
       (20754, 22, 57),
       (20755, 23, 36),
       (20756, 1, 10),
       (20757, 2, 24),
       (25128, 20, 13),
       (20758, 3, 23),
       (20759, 4, 32),
       (20760, 5, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20761, 6, 34),
       (20762, 7, 37),
       (20763, 8, 18),
       (20764, 1, 10),
       (20765, 2, 10),
       (20766, 3, 33),
       (20767, 4, 36),
       (20768, 5, 40),
       (20769, 6, 37),
       (20770, 7, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20771, 8, 50),
       (20772, 9, 22),
       (20773, 10, 26),
       (20774, 11, 20),
       (20775, 12, 22),
       (20776, 13, 42),
       (20777, 14, 29),
       (20778, 15, 30),
       (20779, 16, 35),
       (20780, 17, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20781, 18, 20),
       (20782, 19, 37),
       (20783, 20, 32),
       (20784, 21, 21),
       (20785, 22, 30),
       (20786, 23, 19),
       (20787, 24, 20),
       (20788, 25, 35),
       (20789, 26, 24),
       (20790, 27, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20791, 28, 28),
       (20792, 29, 21),
       (20793, 30, 22),
       (20794, 31, 34),
       (20795, 32, 13),
       (20796, 33, 31),
       (25219, 23, 14),
       (20797, 34, 36),
       (20798, 35, 9),
       (20799, 36, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20800, 37, 53),
       (20801, 38, 28),
       (20802, 39, 44),
       (20803, 40, 24),
       (20804, 41, 40),
       (20805, 42, 29),
       (20806, 43, 46),
       (20807, 44, 22),
       (20808, 45, 40),
       (20809, 46, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20810, 47, 33),
       (20811, 48, 26),
       (20812, 49, 35),
       (20813, 50, 19),
       (20814, 51, 31),
       (20815, 52, 50),
       (20816, 53, 34),
       (20817, 54, 27),
       (20818, 55, 36),
       (20819, 56, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20820, 57, 38),
       (20821, 58, 11),
       (20822, 59, 26),
       (20823, 60, 24),
       (20824, 61, 36),
       (20825, 62, 17),
       (20826, 63, 33),
       (20827, 1, 10),
       (20828, 2, 17),
       (20829, 3, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20830, 4, 27),
       (20831, 5, 30),
       (20832, 6, 37),
       (20908, 12, 27),
       (20833, 7, 41),
       (20834, 8, 30),
       (20835, 9, 54),
       (20836, 10, 28),
       (20837, 11, 10),
       (20838, 12, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20839, 13, 29),
       (20841, 15, 39),
       (20842, 16, 40),
       (20843, 17, 29),
       (20844, 18, 29),
       (20845, 19, 33),
       (20846, 20, 41),
       (20847, 21, 34),
       (20848, 22, 46),
       (20849, 23, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20850, 24, 46),
       (20851, 1, 10),
       (20852, 2, 30),
       (20853, 3, 21),
       (20854, 4, 28),
       (20855, 5, 15),
       (20856, 6, 39),
       (20857, 7, 34),
       (20858, 8, 29),
       (20859, 9, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20860, 10, 22),
       (20861, 11, 22),
       (20862, 12, 28),
       (20863, 13, 34),
       (20864, 14, 26),
       (20865, 15, 29),
       (20866, 16, 32),
       (20867, 17, 39),
       (20868, 18, 29),
       (20869, 19, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20870, 20, 47),
       (20871, 21, 35),
       (20872, 22, 24),
       (20873, 23, 27),
       (20874, 24, 60),
       (20875, 25, 28),
       (22393, 13, 18),
       (20876, 26, 26),
       (20877, 27, 29),
       (20878, 28, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20879, 29, 29),
       (20880, 30, 36),
       (20881, 31, 31),
       (20882, 32, 22),
       (20884, 2, 24),
       (20885, 3, 24),
       (20886, 4, 24),
       (20887, 5, 27),
       (20888, 6, 25),
       (20889, 7, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20890, 8, 26),
       (20891, 9, 36),
       (20892, 10, 26),
       (20893, 11, 36),
       (20894, 12, 35),
       (20895, 13, 15),
       (20896, 14, 42),
       (20897, 1, 36),
       (20898, 2, 10),
       (20899, 3, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20900, 4, 21),
       (20901, 5, 49),
       (20902, 6, 40),
       (20903, 7, 30),
       (20904, 8, 57),
       (20905, 9, 44),
       (20906, 10, 20),
       (20907, 11, 22),
       (20909, 13, 56),
       (20910, 14, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20911, 15, 36),
       (20912, 16, 23),
       (20913, 17, 23),
       (20914, 18, 29),
       (20915, 19, 17),
       (20916, 20, 25),
       (20917, 21, 54),
       (20918, 22, 32),
       (20919, 23, 23),
       (20920, 24, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20921, 25, 18),
       (20922, 26, 40),
       (20923, 27, 37),
       (20924, 28, 57),
       (20925, 29, 24),
       (20926, 30, 31),
       (20927, 31, 55),
       (20928, 32, 34),
       (20929, 33, 29),
       (20930, 34, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20931, 35, 24),
       (20932, 36, 30),
       (20933, 37, 22),
       (20934, 38, 47),
       (20935, 39, 46),
       (20936, 40, 57),
       (20937, 41, 42),
       (20938, 42, 30),
       (20939, 43, 34),
       (20940, 44, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20941, 45, 10),
       (20942, 46, 28),
       (21021, 13, 13),
       (21022, 14, 22),
       (20943, 47, 60),
       (20944, 48, 17),
       (20945, 49, 18),
       (20946, 1, 10),
       (20947, 2, 23),
       (20948, 3, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20949, 4, 34),
       (20950, 5, 24),
       (20951, 6, 22),
       (20952, 7, 60),
       (20953, 8, 10),
       (20954, 9, 21),
       (20955, 10, 33),
       (20956, 11, 31),
       (20957, 12, 36),
       (20958, 13, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20959, 14, 44),
       (20960, 15, 32),
       (20961, 16, 21),
       (20962, 17, 21),
       (20963, 18, 10),
       (20964, 19, 46),
       (20965, 20, 25),
       (20966, 21, 39),
       (20967, 22, 42),
       (20968, 23, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20969, 24, 46),
       (20970, 25, 25),
       (20971, 26, 32),
       (20972, 27, 26),
       (20973, 28, 49),
       (20974, 29, 40),
       (20975, 30, 25),
       (20976, 31, 35),
       (20977, 32, 31),
       (20978, 1, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20979, 2, 23),
       (20980, 3, 34),
       (21061, 4, 22),
       (20981, 4, 55),
       (20982, 5, 22),
       (20983, 6, 19),
       (20984, 7, 34),
       (20985, 8, 12),
       (20986, 9, 28),
       (20987, 10, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20988, 11, 32),
       (20989, 12, 34),
       (20990, 13, 28),
       (20991, 14, 29),
       (20992, 15, 24),
       (20993, 16, 22),
       (20994, 17, 10),
       (20995, 18, 36),
       (20996, 19, 24),
       (20997, 20, 49)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (20998, 21, 25),
       (20999, 22, 34),
       (21000, 23, 10),
       (21001, 24, 23),
       (21002, 25, 39),
       (21003, 26, 53),
       (21004, 27, 26),
       (21005, 28, 30),
       (21006, 29, 26),
       (21007, 30, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21008, 31, 33),
       (21009, 1, 10),
       (21010, 2, 13),
       (21011, 3, 29),
       (21012, 4, 35),
       (21013, 5, 21),
       (21014, 6, 19),
       (21015, 7, 28),
       (21016, 8, 36),
       (21017, 9, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21018, 10, 32),
       (21019, 11, 30),
       (21020, 12, 24),
       (21023, 15, 33),
       (21024, 16, 19),
       (21025, 17, 32),
       (21026, 18, 26),
       (21027, 19, 23),
       (21028, 20, 24),
       (21029, 21, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21030, 22, 34),
       (21031, 23, 38),
       (21032, 24, 49),
       (21033, 25, 51),
       (21034, 26, 15),
       (21035, 27, 36),
       (21036, 28, 31),
       (21037, 29, 38),
       (21038, 30, 26),
       (21039, 31, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21040, 32, 32),
       (21041, 33, 23),
       (21042, 34, 31),
       (21043, 35, 27),
       (21044, 36, 21),
       (21045, 37, 42),
       (21046, 38, 22),
       (21047, 39, 35),
       (21048, 40, 36),
       (21049, 41, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21050, 42, 42),
       (21051, 43, 23),
       (21052, 44, 26),
       (21053, 45, 32),
       (21054, 46, 27),
       (21055, 47, 30),
       (21056, 48, 24),
       (21057, 49, 28),
       (21058, 1, 25),
       (21059, 2, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21060, 3, 31),
       (21062, 5, 35),
       (21063, 6, 41),
       (21064, 7, 29),
       (21065, 8, 27),
       (21067, 10, 24),
       (21068, 11, 39),
       (21069, 12, 24),
       (21070, 13, 36),
       (21071, 14, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21072, 15, 10),
       (21073, 16, 31),
       (21074, 17, 35),
       (21075, 18, 26),
       (21076, 19, 22),
       (21077, 20, 14),
       (21078, 21, 50),
       (21079, 22, 21),
       (21080, 23, 34),
       (21081, 24, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21082, 25, 42),
       (21083, 26, 21),
       (21084, 27, 39),
       (21085, 1, 10),
       (21086, 2, 16),
       (21087, 3, 53),
       (21088, 4, 41),
       (21089, 5, 28),
       (21090, 6, 32),
       (21091, 7, 53)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21092, 8, 24),
       (21093, 9, 32),
       (21094, 10, 34),
       (21095, 11, 16),
       (21096, 12, 28),
       (21097, 13, 41),
       (21098, 14, 41),
       (21099, 15, 26),
       (21282, 1, 10),
       (21100, 16, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21101, 17, 28),
       (21102, 1, 26),
       (21103, 2, 37),
       (21104, 3, 33),
       (21105, 4, 28),
       (21106, 5, 35),
       (21107, 6, 23),
       (21108, 7, 37),
       (21109, 8, 33),
       (21110, 9, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21111, 10, 50),
       (21112, 11, 34),
       (21113, 12, 47),
       (21114, 13, 23),
       (21115, 14, 35),
       (21116, 15, 33),
       (21117, 16, 47),
       (21118, 17, 48),
       (21119, 18, 26),
       (21120, 19, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21121, 20, 65),
       (21122, 21, 31),
       (21123, 1, 10),
       (21124, 2, 12),
       (21125, 3, 40),
       (21126, 4, 16),
       (21127, 5, 25),
       (21128, 6, 26),
       (21129, 7, 32),
       (21130, 8, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21131, 9, 33),
       (21132, 10, 27),
       (21133, 11, 35),
       (21134, 12, 26),
       (21135, 13, 22),
       (21136, 14, 18),
       (21137, 15, 26),
       (21138, 16, 31),
       (21139, 17, 27),
       (21140, 18, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21141, 19, 19),
       (21142, 20, 10),
       (21143, 21, 27),
       (21144, 22, 29),
       (21145, 23, 16),
       (21146, 24, 31),
       (21147, 25, 25),
       (21148, 26, 21),
       (21149, 27, 56),
       (21150, 28, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21151, 29, 28),
       (21152, 30, 30),
       (21153, 31, 27),
       (21154, 32, 36),
       (21155, 33, 32),
       (21156, 34, 30),
       (21157, 35, 23),
       (21158, 36, 21),
       (21159, 1, 10),
       (21160, 2, 60)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21161, 3, 16),
       (21162, 4, 22),
       (21163, 5, 24),
       (21164, 6, 18),
       (21165, 7, 32),
       (21166, 8, 26),
       (21167, 9, 28),
       (21168, 10, 23),
       (21169, 11, 10),
       (21170, 12, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21171, 13, 60),
       (21172, 14, 36),
       (21173, 15, 20),
       (21174, 16, 48),
       (21175, 17, 38),
       (21176, 18, 53),
       (21177, 19, 26),
       (21179, 21, 13),
       (21214, 9, 36),
       (21180, 22, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21181, 23, 39),
       (21182, 24, 41),
       (21183, 25, 50),
       (21184, 26, 44),
       (21185, 1, 24),
       (21186, 2, 20),
       (21187, 3, 44),
       (21188, 4, 48),
       (21189, 5, 52),
       (21190, 6, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21191, 7, 37),
       (21192, 8, 24),
       (21193, 9, 34),
       (21194, 10, 35),
       (21195, 11, 24),
       (21196, 12, 52),
       (21197, 13, 25),
       (21198, 14, 35),
       (21199, 15, 34),
       (21200, 16, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21201, 17, 31),
       (21202, 18, 47),
       (21203, 19, 44),
       (21204, 20, 25),
       (21205, 21, 40),
       (21206, 1, 10),
       (21207, 2, 18),
       (21208, 3, 25),
       (21209, 4, 35),
       (21210, 5, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21211, 6, 37),
       (21212, 7, 29),
       (21213, 8, 23),
       (21215, 10, 24),
       (21216, 11, 35),
       (21217, 12, 41),
       (21218, 13, 46),
       (21219, 14, 20),
       (21220, 15, 22),
       (21221, 16, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21222, 17, 22),
       (21223, 18, 43),
       (21224, 19, 16),
       (21225, 20, 30),
       (21226, 21, 41),
       (21227, 22, 40),
       (21228, 23, 17),
       (21229, 24, 41),
       (21230, 25, 54),
       (21231, 26, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21232, 1, 30),
       (21233, 2, 21),
       (21234, 3, 30),
       (21235, 4, 32),
       (21236, 5, 33),
       (21237, 6, 36),
       (21238, 7, 21),
       (21239, 8, 44),
       (21240, 9, 27),
       (21241, 10, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21242, 11, 30),
       (21243, 12, 57),
       (21244, 13, 24),
       (21245, 14, 71),
       (21246, 15, 55),
       (21247, 16, 52),
       (21432, 6, 26),
       (21248, 17, 34),
       (21353, 8, 31),
       (21249, 18, 63)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21250, 1, 30),
       (21251, 2, 55),
       (21252, 3, 29),
       (21253, 4, 43),
       (21254, 5, 17),
       (21255, 6, 25),
       (21256, 7, 34),
       (21257, 8, 23),
       (21258, 9, 27),
       (21259, 10, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21260, 11, 18),
       (21261, 12, 40),
       (21262, 13, 30),
       (21263, 14, 20),
       (21264, 15, 38),
       (21265, 16, 32),
       (21266, 17, 26),
       (21267, 18, 38),
       (21268, 19, 16),
       (21269, 20, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21270, 21, 35),
       (21271, 22, 22),
       (21272, 23, 37),
       (21273, 24, 55),
       (21274, 25, 67),
       (21275, 26, 34),
       (21276, 27, 55),
       (21277, 28, 23),
       (21278, 29, 39),
       (21279, 30, 60)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21280, 31, 27),
       (21281, 32, 42),
       (21354, 9, 23),
       (21283, 2, 41),
       (21284, 3, 19),
       (21285, 4, 29),
       (21286, 5, 30),
       (21287, 6, 49),
       (21288, 7, 30),
       (21289, 8, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21290, 9, 33),
       (21291, 10, 35),
       (21292, 11, 48),
       (21293, 12, 67),
       (21294, 13, 41),
       (21295, 14, 26),
       (21296, 15, 33),
       (21297, 16, 27),
       (21298, 17, 25),
       (21299, 18, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21300, 19, 21),
       (21301, 20, 25),
       (21302, 21, 40),
       (21303, 22, 44),
       (21304, 23, 10),
       (21305, 24, 36),
       (21306, 25, 32),
       (21307, 26, 24),
       (21308, 27, 61),
       (21309, 28, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21310, 29, 29),
       (21311, 30, 52),
       (21312, 31, 42),
       (21313, 32, 36),
       (21314, 33, 21),
       (21315, 1, 10),
       (21316, 2, 41),
       (21317, 3, 22),
       (23147, 2, 15),
       (21356, 11, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21318, 4, 53),
       (21319, 5, 24),
       (21320, 6, 36),
       (21321, 7, 9),
       (21322, 8, 51),
       (21323, 9, 9),
       (21324, 10, 55),
       (21325, 11, 22),
       (21326, 12, 48),
       (21327, 13, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21328, 14, 42),
       (21329, 15, 22),
       (21330, 16, 47),
       (21331, 17, 26),
       (21332, 18, 45),
       (21333, 19, 27),
       (21334, 20, 23),
       (21335, 21, 23),
       (21336, 22, 23),
       (21337, 23, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21338, 24, 20),
       (21339, 25, 35),
       (21340, 26, 33),
       (21341, 27, 58),
       (21342, 28, 32),
       (21343, 29, 33),
       (21344, 30, 27),
       (21345, 31, 21),
       (21346, 1, 10),
       (21347, 2, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21348, 3, 37),
       (21349, 4, 20),
       (21350, 5, 37),
       (21351, 6, 31),
       (21352, 7, 27),
       (23148, 3, 17),
       (21355, 10, 24),
       (21357, 12, 33),
       (21358, 13, 22),
       (21359, 14, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21360, 15, 45),
       (21361, 1, 23),
       (21362, 2, 23),
       (21363, 3, 54),
       (21364, 4, 60),
       (21365, 5, 55),
       (21366, 6, 49),
       (21367, 7, 24),
       (21368, 8, 28),
       (21369, 9, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21370, 10, 30),
       (21371, 11, 47),
       (21372, 12, 35),
       (21373, 13, 26),
       (21374, 14, 18),
       (21375, 15, 39),
       (21376, 16, 10),
       (21377, 17, 38),
       (21378, 18, 29),
       (21379, 19, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21380, 20, 36),
       (21381, 21, 22),
       (21382, 22, 39),
       (21383, 23, 47),
       (21384, 24, 26),
       (21385, 25, 27),
       (21386, 26, 39),
       (21387, 27, 26),
       (21388, 28, 26),
       (21389, 29, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21390, 30, 29),
       (21391, 31, 31),
       (21392, 32, 28),
       (21431, 5, 14),
       (21393, 33, 32),
       (21394, 34, 23),
       (21395, 35, 29),
       (21396, 36, 36),
       (21397, 37, 33),
       (21398, 38, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21399, 1, 34),
       (21400, 2, 27),
       (21401, 3, 21),
       (21402, 4, 23),
       (21403, 5, 22),
       (21404, 6, 37),
       (21405, 7, 29),
       (21406, 8, 27),
       (21407, 9, 40),
       (21408, 10, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21409, 11, 35),
       (21410, 12, 41),
       (21411, 13, 28),
       (21412, 14, 37),
       (21413, 15, 10),
       (21414, 16, 47),
       (21415, 17, 20),
       (21416, 18, 23),
       (21417, 19, 57),
       (21418, 20, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21419, 21, 40),
       (21420, 22, 45),
       (21421, 23, 53),
       (21422, 24, 31),
       (21423, 25, 46),
       (21424, 26, 39),
       (21425, 27, 20),
       (21426, 28, 25),
       (21427, 1, 10),
       (23149, 4, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21428, 2, 25),
       (21429, 3, 21),
       (21430, 4, 45),
       (21433, 7, 24),
       (21434, 8, 60),
       (21435, 9, 31),
       (21436, 10, 28),
       (21437, 11, 39),
       (21438, 12, 47),
       (21439, 13, 51)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21440, 14, 29),
       (21441, 15, 35),
       (21442, 16, 52),
       (21443, 17, 38),
       (21444, 18, 32),
       (21445, 19, 30),
       (21446, 20, 67),
       (21447, 21, 27),
       (21448, 22, 42),
       (21449, 23, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21450, 1, 29),
       (21451, 2, 36),
       (21452, 3, 24),
       (21453, 4, 42),
       (21454, 5, 17),
       (21455, 6, 26),
       (21456, 7, 42),
       (21457, 8, 21),
       (21458, 9, 49),
       (21459, 10, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21460, 11, 63),
       (21461, 12, 18),
       (21462, 13, 31),
       (25021, 47, 14),
       (21463, 14, 46),
       (21464, 15, 40),
       (21465, 16, 17),
       (21643, 12, 20),
       (21466, 17, 60),
       (21467, 18, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21468, 19, 26),
       (21469, 20, 26),
       (21470, 21, 31),
       (21471, 22, 19),
       (21472, 23, 48),
       (21473, 24, 21),
       (21474, 25, 34),
       (21475, 26, 31),
       (21476, 27, 29),
       (21477, 28, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21478, 29, 27),
       (21479, 1, 49),
       (21480, 2, 36),
       (21481, 3, 38),
       (21482, 4, 55),
       (21483, 5, 47),
       (21484, 6, 36),
       (21485, 7, 39),
       (21486, 8, 14),
       (21487, 9, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21488, 10, 37),
       (21489, 11, 22),
       (21490, 12, 34),
       (21491, 13, 29),
       (21492, 14, 18),
       (21493, 15, 24),
       (21494, 16, 36),
       (21495, 17, 29),
       (21496, 18, 22),
       (21497, 19, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21498, 20, 23),
       (21499, 21, 44),
       (21500, 22, 43),
       (21501, 23, 33),
       (21502, 24, 29),
       (21503, 25, 29),
       (21504, 26, 36),
       (21505, 27, 26),
       (21506, 28, 23),
       (21507, 29, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21508, 30, 16),
       (21509, 31, 26),
       (21510, 32, 21),
       (21511, 33, 40),
       (21512, 34, 33),
       (21513, 35, 17),
       (21514, 36, 30),
       (21515, 37, 33),
       (21516, 38, 21),
       (21517, 39, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21518, 40, 39),
       (21519, 41, 26),
       (21520, 42, 44),
       (21521, 43, 22),
       (21522, 44, 45),
       (21523, 45, 26),
       (21524, 46, 43),
       (21525, 47, 23),
       (21526, 48, 47),
       (21527, 49, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21528, 1, 34),
       (21529, 2, 43),
       (21530, 3, 27),
       (21531, 4, 28),
       (21532, 5, 27),
       (22273, 6, 22),
       (21533, 6, 49),
       (21534, 7, 53),
       (21535, 8, 27),
       (21536, 9, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21537, 10, 18),
       (21538, 11, 40),
       (21539, 12, 38),
       (21540, 13, 25),
       (21541, 14, 21),
       (21542, 15, 45),
       (21543, 16, 38),
       (21544, 17, 26),
       (21545, 18, 25),
       (21546, 19, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21547, 20, 21),
       (21548, 21, 28),
       (21549, 22, 43),
       (21550, 23, 10),
       (21551, 24, 23),
       (21552, 25, 38),
       (21553, 26, 35),
       (21554, 1, 39),
       (21555, 2, 18),
       (21556, 3, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21557, 4, 25),
       (21558, 5, 25),
       (21559, 6, 33),
       (21560, 7, 26),
       (21561, 8, 25),
       (21562, 9, 22),
       (21563, 10, 24),
       (21564, 11, 44),
       (21565, 12, 38),
       (21566, 13, 63)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21602, 2, 40),
       (21567, 14, 51),
       (21568, 15, 34),
       (21569, 16, 20),
       (21570, 17, 16),
       (21571, 18, 14),
       (21572, 19, 17),
       (21573, 20, 37),
       (21574, 1, 16),
       (23277, 42, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21575, 2, 34),
       (21576, 3, 49),
       (21577, 4, 22),
       (21578, 5, 23),
       (21579, 6, 18),
       (21580, 7, 71),
       (21581, 8, 50),
       (21582, 9, 29),
       (21583, 10, 27),
       (21584, 11, 75)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21585, 12, 32),
       (21586, 13, 51),
       (21587, 14, 39),
       (21588, 15, 21),
       (21589, 16, 19),
       (21590, 17, 46),
       (21591, 18, 39),
       (21592, 19, 36),
       (21593, 20, 42),
       (21594, 21, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21595, 22, 32),
       (21596, 23, 27),
       (21597, 24, 29),
       (21598, 25, 30),
       (21599, 26, 18),
       (21600, 27, 41),
       (21601, 1, 25),
       (21603, 3, 38),
       (21604, 4, 35),
       (21605, 5, 55)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21606, 6, 32),
       (21607, 7, 48),
       (21608, 8, 25),
       (21609, 9, 30),
       (21610, 10, 26),
       (21611, 11, 44),
       (21612, 12, 39),
       (21613, 13, 47),
       (21614, 14, 26),
       (21615, 15, 55)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21616, 16, 25),
       (21617, 17, 43),
       (21618, 18, 27),
       (21619, 19, 50),
       (21620, 20, 24),
       (21621, 21, 16),
       (21622, 22, 39),
       (21623, 23, 26),
       (21624, 24, 38),
       (21625, 25, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21626, 26, 13),
       (21627, 27, 30),
       (21628, 28, 24),
       (21629, 29, 24),
       (21630, 30, 47),
       (21631, 31, 21),
       (21632, 1, 55),
       (21633, 2, 31),
       (21634, 3, 32),
       (21635, 4, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22274, 7, 18),
       (21636, 5, 31),
       (21637, 6, 38),
       (21638, 7, 72),
       (21639, 8, 38),
       (21640, 9, 34),
       (21641, 10, 14),
       (21642, 11, 39),
       (21644, 13, 35),
       (21645, 14, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21646, 15, 40),
       (21647, 16, 17),
       (21648, 17, 70),
       (21649, 18, 31),
       (21650, 19, 45),
       (21651, 20, 32),
       (21652, 21, 27),
       (21653, 22, 25),
       (21654, 23, 36),
       (21655, 24, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21656, 25, 44),
       (21657, 1, 45),
       (21658, 2, 62),
       (21659, 3, 25),
       (21660, 4, 27),
       (21661, 5, 33),
       (21662, 6, 28),
       (21663, 7, 36),
       (21664, 8, 29),
       (21665, 9, 80)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21666, 10, 26),
       (21667, 11, 43),
       (21668, 12, 67),
       (21669, 13, 26),
       (21670, 14, 43),
       (21671, 15, 22),
       (21672, 16, 33),
       (21673, 17, 42),
       (21674, 18, 42),
       (21675, 19, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21676, 20, 44),
       (21677, 21, 34),
       (21678, 22, 27),
       (21679, 23, 24),
       (21680, 24, 24),
       (21681, 1, 55),
       (21682, 2, 46),
       (21683, 3, 33),
       (21684, 4, 39),
       (21685, 5, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21686, 6, 28),
       (21687, 7, 25),
       (21688, 8, 47),
       (21689, 9, 55),
       (21690, 10, 45),
       (21691, 11, 21),
       (21692, 12, 64),
       (21693, 13, 31),
       (21694, 14, 29),
       (21695, 15, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21696, 16, 25),
       (21697, 17, 31),
       (21698, 18, 36),
       (21699, 19, 33),
       (21700, 20, 28),
       (21701, 21, 15),
       (21906, 31, 15),
       (21702, 22, 59),
       (21703, 23, 25),
       (21704, 1, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21705, 2, 18),
       (21706, 3, 19),
       (21707, 4, 18),
       (21708, 5, 18),
       (21709, 6, 19),
       (21710, 7, 18),
       (21711, 8, 56),
       (21712, 9, 23),
       (21713, 10, 59),
       (21714, 11, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21715, 12, 25),
       (21716, 13, 38),
       (21717, 14, 27),
       (21718, 15, 41),
       (21719, 16, 44),
       (21720, 17, 38),
       (21721, 18, 45),
       (21722, 19, 18),
       (21723, 20, 29),
       (21724, 21, 83)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21725, 22, 42),
       (21726, 23, 20),
       (21727, 24, 18),
       (21728, 25, 18),
       (21729, 26, 18),
       (21730, 27, 18),
       (21731, 28, 34),
       (21732, 29, 28),
       (21733, 30, 21),
       (21734, 31, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21735, 32, 31),
       (21736, 33, 32),
       (22354, 10, 19),
       (21737, 34, 30),
       (21738, 35, 23),
       (21739, 1, 23),
       (21740, 2, 49),
       (21741, 3, 32),
       (21742, 4, 48),
       (21743, 5, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21744, 6, 15),
       (21745, 7, 35),
       (21746, 8, 40),
       (21747, 9, 19),
       (25717, 28, 13),
       (21748, 10, 51),
       (21749, 11, 21),
       (21750, 12, 21),
       (21751, 13, 31),
       (21752, 14, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21753, 15, 30),
       (21754, 16, 19),
       (21755, 17, 27),
       (21756, 18, 27),
       (21757, 19, 26),
       (21758, 20, 34),
       (21759, 21, 12),
       (21760, 1, 25),
       (21761, 2, 33),
       (21762, 3, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21763, 4, 28),
       (21764, 5, 42),
       (21765, 6, 31),
       (21766, 7, 22),
       (21767, 8, 25),
       (21768, 9, 52),
       (21769, 10, 43),
       (21770, 11, 32),
       (21771, 12, 21),
       (21772, 13, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21773, 14, 29),
       (21774, 15, 28),
       (21775, 16, 25),
       (21776, 17, 19),
       (21777, 18, 31),
       (21778, 19, 21),
       (21779, 20, 21),
       (21780, 21, 29),
       (21781, 22, 21),
       (21782, 23, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21783, 24, 48),
       (21784, 25, 38),
       (21785, 26, 30),
       (21786, 27, 27),
       (21787, 28, 40),
       (21788, 29, 36),
       (21789, 30, 46),
       (21790, 31, 29),
       (21791, 32, 25),
       (21792, 33, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21793, 34, 30),
       (21794, 35, 58),
       (21795, 36, 15),
       (21796, 37, 26),
       (21797, 38, 40),
       (21798, 39, 25),
       (21799, 40, 34),
       (21800, 41, 45),
       (21801, 42, 26),
       (21802, 43, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21803, 44, 49),
       (21804, 45, 58),
       (21805, 46, 25),
       (21806, 47, 37),
       (21807, 48, 36),
       (21808, 49, 32),
       (21809, 1, 34),
       (21810, 2, 46),
       (21811, 3, 51),
       (21812, 4, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21813, 5, 37),
       (21814, 6, 22),
       (21815, 7, 46),
       (21816, 8, 15),
       (21817, 9, 14),
       (21818, 10, 38),
       (21819, 11, 19),
       (21820, 12, 45),
       (25768, 36, 12),
       (21821, 13, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21822, 14, 33),
       (21823, 15, 73),
       (21824, 16, 24),
       (21825, 17, 31),
       (21826, 18, 28),
       (21827, 19, 42),
       (21828, 20, 28),
       (21829, 21, 29),
       (21830, 22, 30),
       (21831, 23, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21832, 24, 42),
       (21833, 25, 36),
       (21834, 26, 49),
       (21835, 27, 51),
       (21836, 28, 53),
       (21837, 29, 52),
       (21838, 30, 15),
       (21839, 1, 22),
       (21840, 2, 22),
       (21907, 1, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21841, 3, 26),
       (21842, 4, 14),
       (21843, 5, 23),
       (21844, 6, 29),
       (21845, 7, 31),
       (21846, 8, 39),
       (21847, 9, 40),
       (21848, 10, 29),
       (21849, 11, 25),
       (21850, 12, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21851, 13, 24),
       (21852, 14, 38),
       (21853, 15, 50),
       (21854, 16, 26),
       (21920, 14, 34),
       (21855, 17, 54),
       (21856, 18, 48),
       (21857, 19, 54),
       (21858, 20, 24),
       (21859, 21, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21860, 22, 30),
       (21861, 23, 78),
       (21862, 24, 24),
       (21863, 25, 65),
       (21864, 26, 33),
       (21865, 27, 36),
       (21866, 28, 8),
       (21867, 29, 16),
       (21868, 30, 33),
       (21869, 31, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21870, 32, 55),
       (21871, 33, 46),
       (21872, 34, 52),
       (21873, 35, 44),
       (21874, 36, 47),
       (21875, 37, 34),
       (21876, 1, 20),
       (21877, 2, 43),
       (21878, 3, 37),
       (21879, 4, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21880, 5, 42),
       (21881, 6, 30),
       (21882, 7, 60),
       (21883, 8, 25),
       (21884, 9, 19),
       (21885, 10, 43),
       (22214, 5, 20),
       (21886, 11, 61),
       (21887, 12, 44),
       (21888, 13, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21889, 14, 27),
       (21890, 15, 38),
       (21891, 16, 54),
       (21892, 17, 37),
       (21893, 18, 20),
       (21894, 19, 47),
       (21895, 20, 32),
       (21896, 21, 67),
       (21897, 22, 17),
       (21898, 23, 79)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21899, 24, 17),
       (21900, 25, 13),
       (21901, 26, 20),
       (21902, 27, 12),
       (21903, 28, 13),
       (21904, 29, 34),
       (21908, 2, 27),
       (21909, 3, 30),
       (21910, 4, 40),
       (21911, 5, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21912, 6, 21),
       (21913, 7, 59),
       (21914, 8, 28),
       (21915, 9, 10),
       (21916, 10, 47),
       (21917, 11, 16),
       (21918, 12, 70),
       (21919, 13, 41),
       (21921, 15, 39),
       (21922, 16, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21923, 17, 37),
       (21924, 18, 27),
       (21925, 19, 19),
       (21926, 20, 45),
       (21927, 21, 12),
       (21928, 22, 39),
       (21929, 23, 44),
       (21930, 24, 53),
       (21931, 25, 23),
       (21932, 26, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21933, 27, 26),
       (21934, 28, 18),
       (21935, 1, 34),
       (21936, 2, 25),
       (21937, 3, 14),
       (21938, 4, 47),
       (21939, 5, 39),
       (21940, 6, 33),
       (21941, 7, 56),
       (22110, 4, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21942, 8, 49),
       (21943, 9, 42),
       (21944, 10, 35),
       (21945, 11, 39),
       (21946, 12, 25),
       (21947, 13, 39),
       (21948, 14, 42),
       (21949, 15, 23),
       (21950, 16, 32),
       (21951, 17, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21952, 18, 23),
       (21953, 19, 43),
       (21954, 20, 44),
       (21955, 21, 16),
       (25968, 32, 16),
       (21956, 22, 28),
       (21957, 23, 38),
       (21958, 24, 36),
       (21959, 25, 48),
       (21960, 26, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21961, 27, 44),
       (21962, 28, 32),
       (21963, 1, 29),
       (21964, 2, 41),
       (21965, 3, 41),
       (21966, 4, 39),
       (21967, 5, 36),
       (21968, 6, 29),
       (21969, 7, 64),
       (21970, 8, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21971, 9, 28),
       (21972, 10, 30),
       (21973, 11, 31),
       (21974, 12, 32),
       (25244, 48, 10),
       (21975, 13, 49),
       (21976, 14, 21),
       (21977, 15, 33),
       (21978, 16, 26),
       (21979, 17, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21980, 18, 28),
       (21981, 19, 30),
       (21982, 20, 19),
       (21983, 21, 24),
       (21984, 22, 29),
       (21985, 23, 29),
       (21986, 24, 36),
       (21987, 25, 47),
       (21988, 26, 29),
       (21989, 27, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21990, 1, 27),
       (22336, 24, 19),
       (21991, 2, 40),
       (21992, 3, 22),
       (21993, 4, 34),
       (21994, 5, 25),
       (21995, 6, 31),
       (21996, 7, 59),
       (21997, 8, 25),
       (21998, 9, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (21999, 10, 26),
       (22000, 11, 48),
       (22001, 12, 41),
       (22002, 13, 41),
       (22003, 14, 33),
       (22004, 15, 39),
       (22005, 16, 53),
       (22006, 17, 34),
       (22007, 18, 43),
       (22008, 19, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22009, 20, 34),
       (22010, 21, 35),
       (22011, 22, 24),
       (22012, 23, 31),
       (22013, 24, 48),
       (22014, 25, 47),
       (22015, 26, 55),
       (22016, 27, 59),
       (22017, 1, 41),
       (22018, 2, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22019, 3, 27),
       (22020, 4, 25),
       (22021, 5, 24),
       (22022, 6, 44),
       (22023, 7, 32),
       (22024, 8, 32),
       (22025, 9, 35),
       (22026, 10, 20),
       (22027, 11, 42),
       (22028, 12, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22029, 13, 36),
       (22030, 14, 26),
       (22031, 15, 22),
       (22032, 16, 49),
       (22033, 17, 33),
       (22034, 18, 17),
       (22035, 19, 39),
       (22036, 20, 36),
       (22037, 21, 29),
       (22038, 1, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22039, 2, 48),
       (22040, 3, 20),
       (22041, 4, 47),
       (22042, 5, 32),
       (22043, 6, 74),
       (22044, 7, 42),
       (22045, 8, 37),
       (22046, 9, 22),
       (22047, 10, 33),
       (22048, 11, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22049, 12, 27),
       (22050, 13, 41),
       (22051, 14, 37),
       (22052, 15, 41),
       (22053, 16, 35),
       (22054, 17, 47),
       (22055, 18, 38),
       (22056, 19, 25),
       (22057, 20, 36),
       (22456, 5, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22058, 21, 37),
       (22059, 22, 22),
       (22060, 23, 25),
       (22061, 24, 54),
       (22062, 25, 50),
       (22063, 26, 22),
       (22064, 27, 37),
       (22065, 28, 32),
       (22066, 29, 28),
       (22067, 30, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22068, 31, 35),
       (22069, 32, 27),
       (22070, 33, 29),
       (22071, 34, 23),
       (22072, 35, 36),
       (22073, 36, 48),
       (22074, 37, 26),
       (22075, 38, 34),
       (22076, 39, 41),
       (22077, 40, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22078, 41, 35),
       (22079, 42, 19),
       (22080, 43, 33),
       (22081, 44, 31),
       (22082, 45, 30),
       (22083, 1, 61),
       (22084, 2, 26),
       (22085, 3, 28),
       (22086, 4, 31),
       (22087, 5, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22088, 6, 29),
       (22089, 7, 72),
       (22090, 8, 22),
       (22091, 9, 22),
       (22572, 3, 24),
       (22092, 10, 32),
       (22093, 11, 33),
       (22094, 12, 18),
       (22095, 13, 26),
       (22096, 1, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22097, 2, 35),
       (22098, 3, 19),
       (22099, 4, 40),
       (22100, 5, 23),
       (22101, 6, 39),
       (22102, 7, 37),
       (22103, 8, 14),
       (22104, 9, 22),
       (22105, 10, 58),
       (22106, 11, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22107, 1, 12),
       (22108, 2, 34),
       (22109, 3, 35),
       (22111, 5, 42),
       (22112, 6, 26),
       (22113, 7, 46),
       (22114, 8, 31),
       (22115, 9, 35),
       (22116, 10, 23),
       (22117, 11, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22118, 12, 42),
       (22119, 13, 38),
       (22120, 14, 18),
       (22121, 15, 48),
       (22122, 16, 23),
       (22123, 17, 25),
       (22124, 18, 57),
       (22125, 19, 28),
       (22126, 20, 15),
       (22127, 21, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22128, 22, 20),
       (22129, 23, 46),
       (22573, 4, 10),
       (22130, 1, 37),
       (22131, 2, 23),
       (22132, 3, 35),
       (22133, 4, 26),
       (22134, 5, 32),
       (22135, 1, 35),
       (22136, 2, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22137, 3, 37),
       (22138, 4, 22),
       (22139, 5, 25),
       (22140, 6, 42),
       (22141, 7, 17),
       (22142, 8, 16),
       (22143, 9, 23),
       (22144, 10, 27),
       (22145, 11, 11),
       (22146, 12, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22147, 13, 38),
       (26373, 44, 16),
       (22148, 14, 43),
       (22149, 15, 30),
       (22150, 16, 23),
       (22151, 17, 9),
       (22152, 18, 16),
       (22153, 19, 21),
       (22154, 1, 40),
       (22155, 2, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22156, 3, 23),
       (22157, 4, 25),
       (22158, 5, 26),
       (22159, 6, 26),
       (22160, 7, 23),
       (22161, 8, 22),
       (22162, 9, 25),
       (22163, 10, 22),
       (22164, 11, 19),
       (22165, 12, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22166, 13, 37),
       (22167, 14, 39),
       (22168, 15, 26),
       (22169, 1, 26),
       (22170, 2, 23),
       (22881, 2, 8),
       (22171, 3, 37),
       (22172, 4, 33),
       (22173, 5, 29),
       (22174, 6, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22175, 7, 16),
       (22176, 8, 15),
       (22177, 9, 26),
       (22178, 10, 21),
       (22179, 11, 20),
       (22180, 1, 34),
       (22181, 2, 27),
       (22182, 3, 15),
       (22183, 4, 30),
       (22184, 5, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22185, 6, 31),
       (22186, 7, 26),
       (22187, 8, 14),
       (22188, 9, 25),
       (22189, 10, 26),
       (22190, 11, 18),
       (22191, 12, 32),
       (22192, 13, 31),
       (22193, 14, 29),
       (22194, 15, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22195, 16, 40),
       (22196, 1, 29),
       (22197, 2, 12),
       (22198, 3, 14),
       (22199, 4, 36),
       (22200, 5, 25),
       (22201, 6, 26),
       (22202, 7, 33),
       (22203, 8, 17),
       (22204, 9, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22205, 10, 29),
       (22206, 11, 15),
       (22207, 12, 20),
       (22208, 13, 34),
       (22209, 14, 32),
       (22210, 1, 28),
       (22211, 2, 18),
       (22212, 3, 23),
       (22213, 4, 52),
       (22215, 6, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22216, 7, 42),
       (22217, 8, 29),
       (22218, 9, 22),
       (22219, 10, 46),
       (22220, 11, 24),
       (22221, 12, 30),
       (22222, 13, 24),
       (22223, 14, 17),
       (22224, 15, 38),
       (22225, 16, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22226, 17, 22),
       (22227, 1, 35),
       (22228, 2, 21),
       (22229, 3, 24),
       (22230, 4, 22),
       (22271, 4, 27),
       (22231, 5, 41),
       (22232, 6, 27),
       (22233, 7, 15),
       (22234, 8, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22235, 9, 27),
       (22236, 10, 26),
       (22237, 11, 40),
       (22238, 12, 30),
       (22239, 13, 30),
       (22240, 14, 35),
       (22241, 15, 24),
       (22242, 1, 17),
       (22243, 2, 24),
       (22244, 3, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22245, 4, 34),
       (22246, 5, 24),
       (22247, 6, 22),
       (22248, 7, 26),
       (22249, 8, 40),
       (22250, 9, 39),
       (22251, 10, 25),
       (22252, 11, 33),
       (22253, 12, 27),
       (22254, 1, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22255, 2, 24),
       (22256, 3, 20),
       (22257, 4, 29),
       (22258, 5, 12),
       (22259, 6, 17),
       (22260, 7, 18),
       (22261, 8, 28),
       (22262, 9, 30),
       (22263, 10, 24),
       (22264, 11, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22265, 12, 22),
       (22266, 13, 19),
       (22267, 14, 25),
       (22268, 1, 20),
       (22269, 2, 44),
       (22270, 3, 39),
       (22275, 8, 37),
       (22276, 9, 15),
       (22277, 10, 28),
       (22278, 11, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22279, 12, 15),
       (22280, 13, 33),
       (22281, 14, 35),
       (22282, 15, 46),
       (22283, 16, 35),
       (22284, 1, 15),
       (22285, 2, 33),
       (22286, 3, 35),
       (22287, 4, 19),
       (22288, 5, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22289, 6, 19),
       (22290, 7, 30),
       (22291, 8, 33),
       (22292, 9, 35),
       (22293, 1, 13),
       (22294, 2, 28),
       (22295, 3, 19),
       (22296, 4, 36),
       (22297, 5, 26),
       (22298, 6, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22299, 7, 28),
       (22300, 8, 14),
       (22301, 9, 22),
       (22302, 10, 23),
       (22303, 11, 25),
       (22304, 12, 40),
       (22305, 13, 42),
       (22306, 14, 30),
       (22307, 15, 22),
       (22308, 16, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22309, 17, 22),
       (22310, 18, 25),
       (22311, 19, 29),
       (22312, 20, 27),
       (22313, 1, 35),
       (22314, 2, 48),
       (22315, 3, 34),
       (22316, 4, 18),
       (22317, 5, 35),
       (22318, 6, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22319, 7, 28),
       (22320, 8, 25),
       (22321, 9, 26),
       (22322, 10, 22),
       (22323, 11, 38),
       (22324, 12, 23),
       (22325, 13, 34),
       (22326, 14, 28),
       (22327, 15, 13),
       (22328, 16, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22329, 17, 49),
       (22330, 18, 14),
       (22331, 19, 38),
       (22332, 20, 55),
       (22333, 21, 15),
       (22334, 22, 33),
       (22335, 23, 45),
       (22337, 25, 32),
       (22338, 26, 34),
       (22339, 27, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22340, 28, 38),
       (22341, 29, 19),
       (22342, 30, 20),
       (22343, 31, 22),
       (22344, 32, 45),
       (22345, 1, 21),
       (22346, 2, 45),
       (22347, 3, 26),
       (22348, 4, 41),
       (22349, 5, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22350, 6, 28),
       (22351, 7, 25),
       (22352, 8, 38),
       (22353, 9, 26),
       (22355, 11, 24),
       (22356, 12, 26),
       (22357, 13, 27),
       (22358, 14, 20),
       (22359, 15, 14),
       (22360, 16, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22361, 17, 32),
       (22362, 18, 53),
       (22363, 19, 31),
       (22364, 20, 13),
       (22365, 21, 17),
       (22366, 1, 43),
       (22367, 2, 30),
       (22368, 3, 30),
       (22369, 4, 21),
       (22370, 5, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22371, 6, 34),
       (22372, 7, 19),
       (22373, 8, 38),
       (22374, 9, 35),
       (22375, 10, 19),
       (22376, 11, 48),
       (22377, 12, 17),
       (22378, 13, 40),
       (22379, 14, 35),
       (22380, 15, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22381, 1, 32),
       (22382, 2, 32),
       (22383, 3, 23),
       (22384, 4, 48),
       (22385, 5, 17),
       (22386, 6, 36),
       (22387, 7, 40),
       (22388, 8, 31),
       (22389, 9, 36),
       (22390, 10, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22391, 11, 29),
       (22394, 14, 22),
       (22395, 15, 29),
       (22396, 16, 18),
       (22397, 1, 29),
       (22398, 2, 22),
       (22399, 3, 9),
       (22400, 4, 27),
       (22401, 5, 32),
       (22402, 6, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22403, 7, 18),
       (22404, 8, 18),
       (22405, 9, 40),
       (22406, 10, 19),
       (22407, 11, 32),
       (22408, 12, 49),
       (22409, 13, 18),
       (22410, 14, 39),
       (22411, 15, 29),
       (22412, 1, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22413, 2, 31),
       (22414, 3, 23),
       (22415, 4, 24),
       (22416, 5, 32),
       (22417, 6, 31),
       (22418, 7, 50),
       (22419, 8, 26),
       (22420, 9, 39),
       (22421, 10, 53),
       (22422, 11, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22423, 12, 25),
       (22424, 13, 42),
       (22425, 1, 18),
       (22426, 2, 26),
       (22427, 3, 35),
       (22428, 4, 17),
       (22429, 5, 30),
       (22430, 6, 31),
       (22431, 7, 14),
       (22508, 12, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22432, 8, 48),
       (22433, 9, 15),
       (22434, 10, 16),
       (22435, 11, 43),
       (22436, 12, 36),
       (22437, 13, 19),
       (22438, 14, 24),
       (22439, 15, 31),
       (22440, 16, 46),
       (22441, 17, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22442, 18, 24),
       (22443, 19, 32),
       (22444, 20, 20),
       (22445, 21, 17),
       (22446, 22, 28),
       (22447, 23, 21),
       (22448, 24, 14),
       (22449, 25, 18),
       (22450, 26, 26),
       (22451, 27, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22452, 1, 37),
       (22453, 2, 38),
       (22454, 3, 19),
       (22455, 4, 31),
       (22457, 6, 23),
       (22458, 7, 24),
       (22459, 8, 36),
       (22460, 9, 19),
       (22461, 10, 68),
       (22462, 11, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22463, 12, 27),
       (22464, 13, 22),
       (22465, 14, 37),
       (22466, 1, 35),
       (22467, 2, 37),
       (22468, 3, 11),
       (22469, 4, 30),
       (22470, 5, 19),
       (22471, 6, 14),
       (22472, 7, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22544, 12, 37),
       (22473, 8, 43),
       (22474, 9, 31),
       (22475, 10, 38),
       (22476, 11, 23),
       (22477, 12, 25),
       (22478, 13, 23),
       (22479, 14, 30),
       (22480, 15, 20),
       (22481, 16, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22482, 17, 56),
       (22483, 1, 14),
       (22484, 2, 38),
       (22485, 3, 33),
       (22486, 4, 20),
       (22487, 5, 38),
       (22488, 6, 24),
       (22489, 7, 18),
       (22490, 8, 37),
       (22491, 9, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22492, 10, 48),
       (22493, 11, 35),
       (22494, 12, 34),
       (22495, 13, 15),
       (23278, 43, 17),
       (22496, 14, 33),
       (22497, 1, 59),
       (22498, 2, 25),
       (22499, 3, 44),
       (22500, 4, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22501, 5, 41),
       (22502, 6, 43),
       (22503, 7, 40),
       (22504, 8, 38),
       (22505, 9, 36),
       (22506, 10, 22),
       (22507, 11, 39),
       (23150, 5, 17),
       (22509, 13, 36),
       (22510, 14, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22511, 15, 30),
       (22512, 1, 38),
       (22513, 2, 14),
       (22514, 3, 36),
       (22515, 4, 27),
       (22516, 5, 37),
       (22517, 6, 15),
       (22518, 7, 48),
       (22519, 8, 24),
       (22520, 9, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22521, 10, 21),
       (22522, 11, 38),
       (22523, 12, 39),
       (22524, 13, 41),
       (22525, 14, 30),
       (22526, 15, 30),
       (22527, 16, 33),
       (22528, 17, 25),
       (22529, 18, 50),
       (22530, 19, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22531, 20, 38),
       (22532, 21, 22),
       (22533, 1, 14),
       (22534, 2, 20),
       (22535, 3, 49),
       (22536, 4, 29),
       (22537, 5, 51),
       (22538, 6, 34),
       (22539, 7, 37),
       (22540, 8, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22541, 9, 27),
       (22542, 10, 36),
       (22543, 11, 28),
       (23041, 12, 28),
       (22545, 13, 27),
       (22546, 14, 42),
       (22547, 15, 20),
       (22548, 16, 17),
       (22549, 17, 25),
       (22550, 1, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22551, 2, 30),
       (22552, 3, 31),
       (22553, 4, 21),
       (22554, 5, 23),
       (22555, 6, 34),
       (22556, 7, 21),
       (22558, 9, 24),
       (22559, 10, 16),
       (22560, 1, 13),
       (22561, 2, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22562, 3, 25),
       (22563, 4, 26),
       (22564, 5, 28),
       (22565, 6, 30),
       (22566, 7, 36),
       (22567, 8, 38),
       (22568, 9, 21),
       (22569, 10, 32),
       (22570, 1, 10),
       (22571, 2, 56)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22574, 5, 40),
       (22575, 6, 40),
       (22576, 7, 21),
       (22577, 8, 49),
       (22578, 9, 27),
       (22579, 10, 32),
       (22580, 11, 34),
       (22581, 1, 29),
       (22582, 2, 30),
       (22583, 3, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22584, 4, 29),
       (22585, 5, 40),
       (22586, 6, 36),
       (23109, 5, 31),
       (22587, 7, 49),
       (22588, 8, 28),
       (22589, 9, 24),
       (22590, 10, 21),
       (22591, 11, 31),
       (22592, 12, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22593, 13, 32),
       (22594, 14, 25),
       (22595, 15, 25),
       (22596, 16, 29),
       (22597, 1, 30),
       (22598, 2, 28),
       (22599, 3, 33),
       (22600, 4, 45),
       (22601, 5, 18),
       (22602, 6, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22603, 7, 30),
       (22604, 8, 31),
       (22605, 9, 24),
       (22606, 10, 22),
       (22607, 11, 33),
       (22608, 12, 49),
       (22609, 13, 38),
       (22610, 1, 27),
       (22611, 2, 25),
       (22612, 3, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22613, 4, 33),
       (22614, 5, 34),
       (22615, 6, 43),
       (22616, 7, 27),
       (22617, 8, 32),
       (22618, 9, 27),
       (22619, 10, 11),
       (22620, 11, 42),
       (22621, 12, 30),
       (22622, 1, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22623, 2, 60),
       (22624, 3, 45),
       (22625, 4, 31),
       (22626, 5, 29),
       (22627, 6, 28),
       (22628, 7, 35),
       (22629, 8, 33),
       (22630, 9, 31),
       (22631, 10, 56),
       (22632, 11, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22633, 12, 26),
       (22634, 13, 48),
       (22635, 1, 31),
       (22636, 2, 41),
       (22637, 3, 30),
       (22638, 4, 41),
       (22639, 5, 36),
       (22640, 6, 42),
       (22641, 7, 35),
       (22642, 8, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22643, 9, 18),
       (22644, 10, 30),
       (22645, 11, 18),
       (22646, 12, 18),
       (22647, 13, 29),
       (22648, 14, 20),
       (22649, 15, 16),
       (22650, 1, 20),
       (22651, 2, 29),
       (22652, 3, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22653, 4, 30),
       (22654, 5, 35),
       (22655, 6, 27),
       (22656, 7, 37),
       (22657, 8, 32),
       (22658, 9, 27),
       (22659, 10, 20),
       (22660, 11, 15),
       (23195, 2, 11),
       (22661, 12, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22662, 13, 20),
       (22663, 14, 39),
       (22664, 15, 29),
       (22665, 16, 45),
       (22666, 1, 35),
       (22667, 2, 33),
       (22668, 3, 41),
       (22669, 4, 33),
       (22670, 5, 27),
       (22671, 6, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22672, 7, 24),
       (22673, 8, 26),
       (22674, 9, 38),
       (22675, 10, 41),
       (22676, 11, 16),
       (22677, 12, 33),
       (22678, 13, 19),
       (22679, 14, 36),
       (22680, 15, 22),
       (22681, 16, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22682, 17, 40),
       (22683, 18, 34),
       (22684, 19, 28),
       (22685, 20, 25),
       (22686, 1, 14),
       (22687, 2, 28),
       (22688, 3, 38),
       (22689, 4, 25),
       (22690, 5, 26),
       (22691, 6, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22692, 7, 20),
       (22693, 8, 23),
       (22694, 9, 21),
       (22695, 10, 18),
       (22696, 11, 17),
       (22697, 12, 36),
       (22698, 13, 18),
       (22699, 14, 43),
       (22700, 15, 39),
       (22701, 1, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22702, 2, 25),
       (22703, 3, 33),
       (22704, 4, 28),
       (22705, 5, 22),
       (22707, 7, 26),
       (22708, 8, 25),
       (22709, 9, 26),
       (22710, 10, 32),
       (22711, 11, 32),
       (22712, 12, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22713, 13, 48),
       (22714, 1, 18),
       (22715, 2, 20),
       (22716, 3, 36),
       (22717, 4, 28),
       (22718, 5, 32),
       (22719, 6, 21),
       (22720, 7, 35),
       (22721, 8, 32),
       (22722, 9, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22723, 10, 42),
       (22724, 11, 20),
       (22725, 12, 26),
       (22726, 13, 29),
       (22727, 14, 22),
       (22728, 15, 34),
       (22729, 16, 18),
       (22730, 17, 41),
       (22731, 18, 27),
       (22732, 19, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22733, 1, 9),
       (22734, 2, 25),
       (22735, 3, 26),
       (22736, 4, 25),
       (22737, 5, 30),
       (22738, 6, 29),
       (22739, 7, 14),
       (22740, 8, 37),
       (22741, 9, 22),
       (22742, 10, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22743, 11, 23),
       (22744, 12, 34),
       (22745, 13, 43),
       (22746, 14, 20),
       (22747, 15, 28),
       (22748, 16, 24),
       (22749, 17, 15),
       (22750, 1, 33),
       (22751, 2, 23),
       (22752, 3, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22753, 4, 21),
       (22754, 5, 41),
       (22755, 6, 37),
       (22756, 7, 25),
       (22757, 8, 38),
       (22758, 9, 30),
       (22759, 10, 19),
       (22760, 11, 20),
       (22761, 12, 16),
       (22762, 13, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22763, 14, 21),
       (22764, 15, 27),
       (22765, 16, 37),
       (22766, 17, 42),
       (22767, 18, 33),
       (22768, 19, 38),
       (22769, 20, 16),
       (22770, 1, 10),
       (22771, 2, 37),
       (22772, 3, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22773, 4, 24),
       (22774, 5, 14),
       (22775, 6, 31),
       (22776, 7, 18),
       (22777, 8, 31),
       (22778, 9, 24),
       (23242, 7, 10),
       (22779, 10, 26),
       (22780, 11, 26),
       (22781, 12, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22782, 13, 37),
       (22783, 14, 30),
       (22784, 15, 14),
       (22785, 16, 44),
       (22786, 17, 48),
       (22787, 18, 16),
       (22788, 19, 25),
       (22789, 1, 37),
       (22790, 2, 16),
       (22791, 3, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22792, 4, 38),
       (22793, 5, 24),
       (22794, 6, 21),
       (22795, 7, 30),
       (22796, 8, 34),
       (22797, 9, 25),
       (22798, 10, 33),
       (22799, 11, 24),
       (22800, 12, 44),
       (22801, 13, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22802, 14, 28),
       (22803, 15, 33),
       (22804, 16, 17),
       (22805, 17, 35),
       (22806, 18, 51),
       (22807, 1, 13),
       (22808, 2, 32),
       (22809, 3, 33),
       (22810, 4, 23),
       (22811, 5, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22812, 6, 16),
       (22813, 7, 44),
       (22814, 8, 28),
       (22889, 10, 28),
       (22815, 9, 56),
       (22816, 10, 22),
       (22817, 11, 34),
       (22818, 12, 11),
       (22819, 13, 25),
       (22820, 14, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22821, 15, 48),
       (22822, 1, 13),
       (22823, 2, 22),
       (22824, 3, 22),
       (22825, 4, 21),
       (22826, 5, 32),
       (22827, 6, 37),
       (22828, 7, 35),
       (22829, 8, 56),
       (22830, 9, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22831, 10, 19),
       (22832, 11, 48),
       (22833, 12, 25),
       (22834, 13, 35),
       (22835, 14, 21),
       (22836, 15, 32),
       (22837, 16, 21),
       (22838, 17, 36),
       (22839, 18, 24),
       (22840, 19, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22841, 20, 45),
       (22842, 1, 49),
       (22843, 2, 28),
       (22844, 3, 12),
       (22845, 4, 19),
       (22846, 5, 11),
       (22847, 6, 48),
       (22848, 7, 9),
       (22849, 8, 27),
       (22850, 9, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22851, 10, 16),
       (22852, 11, 49),
       (22853, 12, 51),
       (22854, 13, 21),
       (22855, 14, 53),
       (22856, 15, 22),
       (22857, 1, 24),
       (22858, 2, 30),
       (22859, 3, 29),
       (22860, 4, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22861, 5, 26),
       (22862, 6, 30),
       (22863, 7, 28),
       (22864, 8, 14),
       (22865, 9, 29),
       (22866, 10, 27),
       (22867, 11, 14),
       (22868, 12, 39),
       (22869, 13, 33),
       (22870, 14, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22871, 15, 25),
       (22872, 16, 33),
       (22873, 17, 27),
       (22874, 18, 34),
       (22875, 19, 33),
       (22876, 20, 22),
       (22877, 21, 16),
       (22878, 22, 50),
       (22879, 23, 38),
       (22880, 1, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22882, 3, 28),
       (22883, 4, 42),
       (22884, 5, 14),
       (22885, 6, 50),
       (22886, 7, 40),
       (22887, 8, 37),
       (22888, 9, 27),
       (22890, 11, 36),
       (22891, 12, 39),
       (22892, 13, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22893, 14, 31),
       (22894, 15, 27),
       (22895, 16, 32),
       (22896, 17, 28),
       (22897, 18, 13),
       (22898, 19, 29),
       (22899, 20, 7),
       (22900, 21, 57),
       (22901, 1, 20),
       (22902, 2, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22903, 3, 19),
       (22904, 4, 30),
       (22905, 5, 26),
       (22906, 6, 27),
       (22907, 7, 12),
       (22908, 8, 30),
       (22909, 9, 32),
       (22910, 10, 23),
       (22911, 11, 39),
       (22912, 12, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22913, 13, 17),
       (22914, 1, 26),
       (22915, 2, 29),
       (22916, 3, 14),
       (22917, 4, 43),
       (22918, 5, 35),
       (22919, 6, 10),
       (22920, 7, 47),
       (22921, 8, 34),
       (22922, 9, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22923, 10, 23),
       (22924, 1, 23),
       (22925, 2, 50),
       (22926, 3, 23),
       (22927, 4, 19),
       (22928, 5, 25),
       (23146, 1, 17),
       (22929, 6, 32),
       (22930, 7, 29),
       (22931, 8, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22932, 9, 31),
       (22933, 10, 40),
       (22934, 11, 27),
       (22935, 12, 32),
       (22936, 13, 19),
       (22937, 14, 19),
       (22938, 1, 15),
       (22939, 2, 29),
       (22940, 3, 52),
       (22941, 4, 56)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22942, 5, 27),
       (22943, 6, 27),
       (22944, 7, 24),
       (22945, 8, 29),
       (22946, 9, 43),
       (22947, 10, 17),
       (22948, 11, 30),
       (22949, 1, 28),
       (22950, 2, 15),
       (22951, 3, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22952, 4, 18),
       (22953, 5, 28),
       (22954, 6, 31),
       (22955, 7, 42),
       (22956, 8, 27),
       (22957, 9, 10),
       (22958, 10, 38),
       (22959, 11, 26),
       (22960, 12, 37),
       (22961, 13, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22962, 14, 29),
       (22963, 15, 46),
       (22964, 1, 32),
       (22965, 2, 21),
       (22966, 3, 37),
       (22967, 4, 12),
       (22968, 5, 41),
       (22969, 6, 19),
       (22970, 7, 37),
       (22971, 8, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22972, 9, 21),
       (22973, 10, 27),
       (22974, 11, 20),
       (22975, 12, 41),
       (22976, 13, 29),
       (22977, 14, 40),
       (22978, 1, 12),
       (22979, 2, 23),
       (22980, 3, 36),
       (22981, 4, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22982, 5, 19),
       (22983, 6, 34),
       (22984, 7, 21),
       (22985, 8, 32),
       (22986, 9, 50),
       (22987, 10, 43),
       (22988, 11, 22),
       (22989, 12, 43),
       (22990, 13, 43),
       (22991, 14, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (22992, 15, 23),
       (22993, 16, 28),
       (22994, 17, 29),
       (22995, 18, 12),
       (22996, 19, 48),
       (22997, 20, 23),
       (22998, 21, 32),
       (22999, 22, 23),
       (23000, 23, 56),
       (23001, 1, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23002, 2, 15),
       (23003, 3, 24),
       (23004, 4, 23),
       (23040, 11, 28),
       (23005, 5, 37),
       (23006, 6, 18),
       (23007, 7, 43),
       (23008, 8, 34),
       (23009, 9, 39),
       (23010, 10, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23011, 11, 25),
       (23012, 12, 23),
       (23013, 13, 40),
       (23014, 14, 33),
       (23015, 15, 42),
       (23016, 16, 33),
       (23017, 17, 25),
       (23018, 1, 34),
       (23019, 2, 39),
       (23020, 3, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23021, 4, 23),
       (23022, 5, 38),
       (23023, 6, 52),
       (23024, 7, 34),
       (23025, 8, 22),
       (23026, 9, 27),
       (23027, 10, 39),
       (23028, 11, 44),
       (23029, 12, 20),
       (23030, 1, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23031, 2, 29),
       (23032, 3, 31),
       (23033, 4, 11),
       (23034, 5, 30),
       (23102, 12, 24),
       (23035, 6, 51),
       (23036, 7, 37),
       (23037, 8, 24),
       (23038, 9, 41),
       (23039, 10, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23042, 13, 40),
       (23043, 14, 20),
       (23044, 15, 17),
       (23045, 16, 57),
       (23046, 17, 37),
       (23047, 1, 33),
       (23048, 2, 28),
       (23049, 3, 45),
       (23050, 4, 39),
       (23051, 5, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23052, 6, 57),
       (23053, 7, 31),
       (23054, 8, 41),
       (23055, 9, 23),
       (23056, 10, 63),
       (23057, 11, 22),
       (23058, 12, 33),
       (23059, 13, 23),
       (23060, 14, 13),
       (23061, 1, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23062, 2, 52),
       (23063, 3, 55),
       (23064, 4, 33),
       (23065, 5, 26),
       (23066, 6, 30),
       (23067, 7, 38),
       (23068, 8, 30),
       (23184, 14, 18),
       (23069, 9, 53),
       (23070, 1, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23071, 2, 49),
       (23072, 3, 20),
       (23073, 4, 65),
       (23243, 8, 12),
       (23074, 5, 54),
       (23075, 6, 22),
       (23076, 7, 31),
       (23077, 8, 41),
       (23078, 9, 21),
       (23079, 10, 56)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23080, 11, 18),
       (23081, 12, 48),
       (23082, 13, 45),
       (23083, 14, 29),
       (23084, 15, 34),
       (23085, 16, 42),
       (23086, 17, 33),
       (23087, 18, 40),
       (23088, 19, 25),
       (23089, 20, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23090, 21, 48),
       (23092, 2, 27),
       (23093, 3, 21),
       (23094, 4, 49),
       (23095, 5, 18),
       (23096, 6, 52),
       (23097, 7, 26),
       (23098, 8, 47),
       (23099, 9, 35),
       (23100, 10, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23101, 11, 52),
       (23103, 13, 50),
       (23104, 14, 41),
       (23105, 1, 11),
       (23106, 2, 53),
       (23107, 3, 28),
       (23108, 4, 24),
       (23110, 6, 31),
       (23111, 7, 27),
       (23112, 8, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23113, 9, 31),
       (23114, 10, 29),
       (23115, 11, 35),
       (23116, 12, 34),
       (23117, 13, 37),
       (23118, 14, 35),
       (23119, 15, 40),
       (23120, 16, 35),
       (23121, 17, 44),
       (23122, 1, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23123, 2, 30),
       (23124, 3, 36),
       (23125, 4, 24),
       (23126, 5, 61),
       (23127, 6, 15),
       (23128, 7, 39),
       (23129, 8, 22),
       (23130, 9, 15),
       (23131, 10, 53),
       (23132, 11, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23133, 12, 19),
       (23134, 13, 19),
       (23135, 14, 31),
       (23136, 15, 22),
       (23137, 16, 35),
       (23138, 17, 35),
       (23139, 18, 24),
       (23140, 1, 45),
       (23141, 2, 31),
       (23142, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23143, 4, 23),
       (23144, 5, 18),
       (23145, 6, 32),
       (23151, 6, 20),
       (23152, 7, 13),
       (23153, 8, 13),
       (23154, 9, 13),
       (23155, 10, 13),
       (23156, 11, 17),
       (23157, 12, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23158, 13, 13),
       (23159, 14, 13),
       (23160, 15, 13),
       (23161, 16, 18),
       (23162, 17, 35),
       (23163, 18, 33),
       (23164, 19, 25),
       (23165, 20, 47),
       (23166, 21, 27),
       (23167, 22, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23168, 23, 28),
       (23169, 24, 23),
       (23170, 25, 18),
       (23171, 1, 27),
       (23172, 2, 25),
       (23173, 3, 16),
       (23174, 4, 23),
       (23175, 5, 18),
       (23176, 6, 34),
       (23177, 7, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23178, 8, 35),
       (23179, 9, 34),
       (23180, 10, 13),
       (23181, 11, 37),
       (23182, 12, 24),
       (23183, 13, 50),
       (23185, 15, 32),
       (23186, 16, 55),
       (23187, 17, 13),
       (23188, 18, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23189, 19, 21),
       (23190, 20, 28),
       (23191, 21, 19),
       (23192, 22, 39),
       (23193, 23, 28),
       (23194, 1, 16),
       (23196, 3, 34),
       (23197, 4, 26),
       (23198, 5, 18),
       (23199, 6, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23200, 7, 33),
       (23201, 8, 8),
       (23202, 9, 32),
       (23203, 10, 30),
       (23204, 11, 38),
       (23205, 12, 34),
       (23206, 13, 16),
       (23207, 14, 21),
       (23208, 15, 23),
       (23209, 16, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23210, 17, 21),
       (23211, 1, 18),
       (23212, 2, 14),
       (23213, 3, 22),
       (23214, 4, 28),
       (23215, 5, 20),
       (23216, 6, 45),
       (23217, 7, 19),
       (23218, 8, 25),
       (23219, 9, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23220, 10, 27),
       (23221, 11, 14),
       (23222, 12, 14),
       (23223, 13, 22),
       (23224, 14, 14),
       (23225, 15, 20),
       (23226, 16, 29),
       (23227, 17, 21),
       (23228, 18, 31),
       (23229, 19, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23230, 20, 10),
       (23231, 21, 34),
       (23232, 22, 13),
       (23233, 23, 33),
       (23234, 24, 37),
       (23235, 25, 20),
       (23236, 1, 22),
       (23237, 2, 10),
       (23238, 3, 14),
       (23239, 4, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23240, 5, 11),
       (23241, 6, 15),
       (23245, 10, 18),
       (23246, 11, 24),
       (23247, 12, 23),
       (23248, 13, 38),
       (23249, 14, 17),
       (23250, 15, 27),
       (23251, 16, 24),
       (23252, 17, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23253, 18, 32),
       (23254, 19, 41),
       (23255, 20, 30),
       (23256, 21, 28),
       (23257, 22, 52),
       (23258, 23, 21),
       (23259, 24, 25),
       (23260, 25, 37),
       (23261, 26, 21),
       (23262, 27, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23263, 28, 27),
       (23264, 29, 40),
       (23265, 30, 39),
       (23266, 31, 19),
       (23267, 32, 36),
       (23268, 33, 27),
       (23269, 34, 21),
       (23270, 35, 25),
       (23271, 36, 18),
       (23272, 37, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23273, 38, 19),
       (23274, 39, 26),
       (23275, 40, 22),
       (23276, 41, 14),
       (23280, 45, 35),
       (23281, 46, 20),
       (23282, 47, 21),
       (23284, 1, 28),
       (23285, 2, 40),
       (23286, 3, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23287, 4, 18),
       (23288, 5, 46),
       (23289, 6, 34),
       (23290, 7, 24),
       (23291, 8, 21),
       (23292, 9, 17),
       (23293, 10, 14),
       (23294, 11, 8),
       (23295, 12, 13),
       (23296, 13, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23297, 14, 15),
       (23298, 15, 16),
       (23299, 16, 38),
       (23300, 17, 13),
       (23301, 18, 28),
       (23302, 19, 22),
       (23303, 20, 25),
       (23304, 21, 12),
       (23305, 22, 23),
       (23306, 23, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23307, 24, 35),
       (23308, 25, 45),
       (23309, 26, 34),
       (23310, 27, 18),
       (23311, 28, 24),
       (23312, 29, 20),
       (23313, 30, 36),
       (23314, 31, 21),
       (23315, 32, 23),
       (23316, 33, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23317, 34, 24),
       (23318, 1, 8),
       (23319, 2, 23),
       (23320, 3, 25),
       (23321, 4, 28),
       (23322, 5, 30),
       (23323, 6, 30),
       (23324, 7, 21),
       (23325, 8, 21),
       (23326, 9, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23327, 10, 14),
       (23328, 11, 33),
       (23329, 12, 28),
       (23330, 13, 30),
       (23331, 14, 21),
       (23332, 15, 18),
       (23333, 16, 18),
       (23334, 17, 18),
       (23335, 18, 18),
       (23336, 19, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23337, 20, 9),
       (23383, 3, 13),
       (23338, 21, 30),
       (23339, 22, 33),
       (23340, 23, 19),
       (23341, 24, 27),
       (23342, 25, 29),
       (23343, 26, 28),
       (23344, 27, 27),
       (23345, 28, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23346, 29, 14),
       (23347, 1, 14),
       (23348, 2, 22),
       (23349, 3, 23),
       (23350, 4, 30),
       (23351, 5, 16),
       (23352, 6, 16),
       (23353, 7, 12),
       (23354, 8, 30),
       (23355, 9, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23356, 10, 30),
       (23357, 11, 31),
       (23358, 12, 25),
       (23359, 13, 28),
       (23360, 14, 21),
       (23361, 15, 18),
       (23362, 16, 29),
       (23363, 17, 22),
       (23364, 18, 18),
       (23365, 19, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23366, 20, 30),
       (23367, 21, 19),
       (23368, 22, 17),
       (23369, 23, 13),
       (23370, 24, 24),
       (23371, 25, 14),
       (23372, 26, 31),
       (23373, 27, 21),
       (23374, 28, 40),
       (23375, 29, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23376, 30, 14),
       (23377, 31, 20),
       (23378, 32, 33),
       (23379, 33, 27),
       (23380, 34, 26),
       (23381, 1, 16),
       (23382, 2, 38),
       (23384, 4, 14),
       (23385, 5, 17),
       (23386, 6, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23387, 7, 9),
       (23388, 8, 20),
       (23389, 9, 33),
       (23390, 10, 28),
       (23391, 11, 21),
       (23392, 12, 23),
       (23393, 13, 25),
       (23394, 14, 23),
       (23395, 15, 40),
       (23396, 16, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23397, 17, 37),
       (23398, 18, 35),
       (23399, 19, 12),
       (23400, 20, 23),
       (23401, 21, 18),
       (23402, 22, 28),
       (23403, 23, 21),
       (23404, 24, 19),
       (23405, 25, 21),
       (23406, 26, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23407, 27, 25),
       (23408, 28, 35),
       (23409, 29, 16),
       (23410, 30, 18),
       (23411, 31, 14),
       (23412, 32, 19),
       (23413, 33, 24),
       (23414, 34, 15),
       (23415, 35, 33),
       (23416, 36, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23417, 37, 17),
       (23418, 38, 17),
       (23419, 1, 32),
       (23420, 2, 30),
       (23421, 3, 16),
       (23422, 4, 11),
       (23423, 5, 27),
       (23424, 6, 13),
       (23425, 7, 14),
       (23426, 8, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23427, 9, 12),
       (23428, 10, 21),
       (23429, 11, 24),
       (23430, 12, 10),
       (23431, 13, 25),
       (23432, 14, 29),
       (23433, 15, 27),
       (23434, 16, 23),
       (23435, 17, 21),
       (23436, 18, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23437, 19, 29),
       (23438, 20, 18),
       (23439, 21, 29),
       (23440, 22, 26),
       (23441, 23, 36),
       (23442, 24, 14),
       (23443, 25, 36),
       (23444, 26, 22),
       (23445, 27, 25),
       (23446, 28, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23447, 29, 22),
       (23448, 30, 11),
       (23449, 31, 12),
       (23450, 32, 22),
       (23451, 33, 20),
       (23452, 34, 21),
       (23453, 35, 29),
       (23454, 36, 13),
       (23455, 37, 30),
       (23456, 38, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23457, 39, 21),
       (23458, 40, 17),
       (23459, 41, 39),
       (23460, 42, 38),
       (23461, 1, 24),
       (23462, 2, 17),
       (23463, 3, 15),
       (23464, 4, 19),
       (23465, 5, 33),
       (23466, 6, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23467, 7, 31),
       (23468, 8, 24),
       (23469, 9, 21),
       (23470, 10, 24),
       (23471, 11, 38),
       (23472, 12, 25),
       (23474, 14, 16),
       (23475, 15, 10),
       (23476, 16, 21),
       (23477, 17, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23478, 18, 15),
       (23479, 19, 32),
       (23480, 20, 20),
       (23481, 21, 36),
       (23482, 22, 23),
       (23483, 23, 38),
       (23484, 24, 25),
       (23485, 25, 35),
       (23486, 26, 12),
       (23487, 27, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23488, 28, 18),
       (23489, 29, 26),
       (23490, 30, 11),
       (23491, 1, 26),
       (23492, 2, 26),
       (23493, 3, 23),
       (23494, 4, 34),
       (23495, 5, 25),
       (23496, 6, 14),
       (23497, 7, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23498, 8, 11),
       (23499, 9, 10),
       (23500, 10, 28),
       (23501, 11, 40),
       (23502, 12, 24),
       (23503, 13, 24),
       (23504, 14, 16),
       (23505, 15, 17),
       (23506, 16, 11),
       (23507, 17, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23508, 18, 32),
       (23509, 19, 18),
       (23510, 20, 22),
       (23511, 21, 9),
       (23512, 22, 26),
       (23513, 23, 16),
       (23514, 24, 24),
       (23515, 25, 29),
       (23516, 26, 18),
       (23517, 27, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23518, 28, 21),
       (23519, 29, 31),
       (23520, 30, 18),
       (23521, 31, 25),
       (23522, 32, 42),
       (23523, 33, 27),
       (23707, 6, 16),
       (23524, 34, 24),
       (23525, 35, 26),
       (23526, 36, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23527, 37, 17),
       (23528, 38, 19),
       (23529, 39, 32),
       (23530, 40, 34),
       (23531, 41, 34),
       (23532, 42, 42),
       (23533, 43, 23),
       (23534, 44, 26),
       (23535, 45, 44),
       (23536, 46, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23537, 47, 19),
       (23538, 48, 20),
       (23539, 49, 18),
       (23540, 50, 22),
       (23541, 1, 16),
       (23542, 2, 26),
       (23543, 3, 18),
       (23544, 4, 19),
       (23545, 5, 26),
       (23546, 6, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23547, 7, 15),
       (23548, 8, 18),
       (23549, 9, 8),
       (23550, 10, 16),
       (23551, 11, 29),
       (23552, 12, 29),
       (23553, 13, 22),
       (23554, 14, 34),
       (23555, 15, 49),
       (23556, 16, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23557, 17, 37),
       (23558, 18, 9),
       (23559, 19, 40),
       (23560, 20, 23),
       (23561, 21, 26),
       (23562, 22, 34),
       (23563, 23, 34),
       (23564, 24, 24),
       (23565, 25, 18),
       (23566, 26, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23567, 27, 27),
       (23568, 28, 27),
       (23569, 29, 20),
       (23570, 30, 41),
       (23571, 31, 29),
       (23572, 32, 37),
       (23573, 33, 31),
       (23574, 34, 20),
       (23575, 35, 31),
       (23576, 36, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23577, 37, 17),
       (23578, 38, 28),
       (23579, 39, 24),
       (23580, 40, 22),
       (23581, 41, 28),
       (23582, 42, 20),
       (23583, 43, 23),
       (23584, 44, 36),
       (23585, 45, 18),
       (23586, 46, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23587, 47, 22),
       (23588, 48, 28),
       (23589, 49, 24),
       (23590, 50, 20),
       (23591, 51, 12),
       (23592, 52, 40),
       (23593, 53, 15),
       (23594, 54, 30),
       (23595, 55, 24),
       (23596, 56, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23597, 57, 28),
       (23598, 58, 13),
       (23599, 1, 12),
       (23600, 2, 25),
       (23601, 3, 26),
       (23602, 4, 15),
       (23603, 5, 21),
       (23604, 6, 18),
       (23605, 7, 14),
       (23606, 8, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23607, 9, 28),
       (23608, 10, 10),
       (23609, 11, 21),
       (23610, 12, 19),
       (23611, 13, 32),
       (23612, 14, 20),
       (23613, 15, 37),
       (23614, 16, 18),
       (23615, 17, 15),
       (23616, 18, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23617, 19, 44),
       (23618, 20, 23),
       (23619, 21, 15),
       (23620, 22, 28),
       (23621, 23, 27),
       (23622, 24, 21),
       (23623, 25, 17),
       (23624, 26, 25),
       (23625, 27, 18),
       (23626, 28, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23627, 29, 21),
       (23628, 30, 21),
       (23629, 31, 26),
       (23630, 32, 13),
       (23631, 33, 20),
       (23632, 34, 14),
       (23633, 35, 26),
       (23634, 36, 23),
       (23635, 1, 12),
       (23636, 2, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23637, 3, 21),
       (23638, 4, 24),
       (23639, 5, 26),
       (23640, 6, 20),
       (23641, 7, 10),
       (23642, 8, 15),
       (23643, 9, 16),
       (23644, 10, 15),
       (23645, 11, 23),
       (23646, 12, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23647, 13, 18),
       (23648, 14, 21),
       (23649, 15, 13),
       (23650, 16, 11),
       (23651, 17, 21),
       (23652, 18, 21),
       (23653, 19, 17),
       (23654, 20, 19),
       (23655, 21, 15),
       (23656, 22, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23657, 23, 24),
       (23658, 24, 20),
       (23659, 25, 11),
       (23660, 26, 22),
       (23661, 27, 20),
       (23662, 28, 31),
       (23663, 29, 23),
       (23664, 30, 31),
       (23665, 31, 29),
       (23666, 32, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23667, 33, 25),
       (23668, 34, 20),
       (23669, 35, 12),
       (23670, 36, 27),
       (23671, 37, 23),
       (23672, 38, 14),
       (23673, 39, 19),
       (23674, 1, 19),
       (23675, 2, 24),
       (23676, 3, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23677, 4, 30),
       (23678, 5, 14),
       (23679, 6, 18),
       (23680, 7, 11),
       (23681, 8, 21),
       (23682, 9, 22),
       (23683, 10, 16),
       (23684, 11, 27),
       (23685, 12, 24),
       (23686, 13, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23687, 14, 19),
       (23688, 15, 12),
       (23689, 16, 17),
       (23690, 17, 31),
       (23691, 18, 30),
       (23692, 19, 37),
       (23693, 20, 17),
       (23694, 21, 39),
       (23695, 22, 23),
       (23696, 23, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23697, 24, 26),
       (23698, 25, 22),
       (23699, 26, 30),
       (23700, 27, 29),
       (23701, 28, 33),
       (23702, 1, 25),
       (23703, 2, 23),
       (23704, 3, 13),
       (23705, 4, 37),
       (23706, 5, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23710, 9, 30),
       (23711, 10, 17),
       (23712, 11, 14),
       (23713, 12, 34),
       (23714, 13, 14),
       (23715, 14, 19),
       (23716, 15, 28),
       (23717, 16, 14),
       (23718, 17, 30),
       (23719, 18, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23720, 19, 17),
       (23721, 20, 49),
       (23722, 21, NULL),
       (23723, 22, 24),
       (23724, 23, 20),
       (23725, 24, 27),
       (23726, 25, 40),
       (23727, 26, 16),
       (23728, 27, 48),
       (23729, 1, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23730, 2, 17),
       (23731, 3, 27),
       (23732, 4, 20),
       (23733, 5, 14),
       (23734, 6, 43),
       (23735, 7, 29),
       (23736, 8, 47),
       (23737, 9, 42),
       (23738, 10, 33),
       (23739, 11, 3)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23740, 12, 37),
       (23741, 13, 30),
       (23742, 14, 23),
       (23743, 15, 27),
       (23744, 16, 28),
       (23745, 17, 33),
       (23746, 18, 33),
       (26120, 24, 15),
       (23747, 19, 35),
       (23748, 20, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23749, 21, 24),
       (23750, 22, 18),
       (23751, 23, 20),
       (23752, 24, 19),
       (23753, 25, 32),
       (23754, 26, 21),
       (23755, 27, 18),
       (23756, 28, 36),
       (23757, 29, 20),
       (23758, 30, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23759, 31, 25),
       (23760, 32, 25),
       (23761, 33, 19),
       (23762, 34, 20),
       (23763, 35, 21),
       (23764, 1, 26),
       (23765, 2, 11),
       (23766, 3, 25),
       (23767, 4, 23),
       (23768, 5, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23769, 6, 22),
       (23770, 7, 21),
       (23771, 8, 27),
       (23772, 9, 33),
       (23773, 10, 23),
       (23774, 11, 20),
       (23775, 12, 50),
       (23776, 13, 24),
       (23777, 14, 24),
       (23778, 15, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23779, 16, 22),
       (23780, 17, 31),
       (23781, 18, 28),
       (23782, 19, 14),
       (23783, 20, 17),
       (23784, 21, 32),
       (23785, 22, 21),
       (23786, 23, 26),
       (23787, 24, 32),
       (23788, 25, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23789, 26, 21),
       (23790, 27, 21),
       (23791, 28, 46),
       (26982, 32, 12),
       (23792, 29, 34),
       (23793, 30, 14),
       (23794, 1, 28),
       (23795, 2, 20),
       (23796, 3, 17),
       (23797, 4, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23798, 5, 15),
       (23799, 6, 26),
       (23800, 7, 21),
       (23801, 8, 30),
       (23802, 9, 18),
       (23803, 10, 21),
       (23804, 11, 11),
       (23805, 12, 29),
       (23806, 13, 25),
       (23807, 14, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23808, 15, 24),
       (23809, 16, 11),
       (23810, 17, 23),
       (23811, 18, 28),
       (23812, 19, 25),
       (23813, 20, 24),
       (23814, 21, 35),
       (23815, 22, 32),
       (23816, 23, 42),
       (23817, 24, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23818, 25, 29),
       (23819, 26, 19),
       (23820, 27, 12),
       (23821, 28, 25),
       (23822, 29, 13),
       (23823, 30, 31),
       (23824, 31, 28),
       (23825, 32, 19),
       (23826, 33, 12),
       (23827, 34, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23828, 1, 22),
       (23829, 2, 33),
       (23830, 3, 24),
       (23831, 4, 19),
       (23832, 5, 28),
       (23833, 6, 12),
       (23834, 7, 18),
       (23835, 8, 27),
       (23836, 9, 34),
       (23837, 10, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23838, 11, 14),
       (23882, 9, 22),
       (23839, 12, 38),
       (23840, 13, 26),
       (23841, 14, 17),
       (27061, 1, 14),
       (23842, 15, 38),
       (23843, 16, 33),
       (23844, 17, 17),
       (23845, 18, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23846, 19, 43),
       (23847, 20, 18),
       (23848, 21, 54),
       (23849, 22, 14),
       (23850, 23, 40),
       (23851, 24, 32),
       (23852, 25, 37),
       (23853, 26, 19),
       (23854, 27, 26),
       (23855, 28, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23856, 29, 16),
       (23857, 30, 21),
       (23858, 31, 38),
       (23859, 32, 41),
       (23860, 33, 43),
       (23861, 34, 21),
       (23862, 35, 16),
       (23863, 36, 18),
       (23864, 37, 15),
       (23865, 38, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23866, 39, 16),
       (23867, 40, 17),
       (23868, 41, 30),
       (23869, 42, 39),
       (23870, 43, 28),
       (23871, 44, 25),
       (23872, 45, 19),
       (23873, 46, 21),
       (23874, 1, 12),
       (23875, 2, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23876, 3, 21),
       (23877, 4, 37),
       (23878, 5, 20),
       (23879, 6, 16),
       (23880, 7, 19),
       (23881, 8, 19),
       (28775, 56, 15),
       (23883, 10, 29),
       (23884, 11, 23),
       (23885, 12, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23886, 13, 31),
       (23887, 14, 8),
       (23888, 15, 16),
       (23889, 16, 41),
       (23890, 17, 17),
       (23891, 18, 16),
       (23892, 19, 13),
       (23893, 20, 12),
       (23894, 21, 31),
       (23895, 22, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23896, 23, 21),
       (23897, 24, 25),
       (23898, 25, 24),
       (23899, 26, 13),
       (23900, 27, 8),
       (23901, 28, 18),
       (23902, 29, 20),
       (23903, 30, 19),
       (23904, 31, 22),
       (23905, 32, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23906, 33, 13),
       (23907, 34, 18),
       (23908, 35, 13),
       (23909, 36, 10),
       (23910, 37, 27),
       (23911, 38, 8),
       (23912, 39, 16),
       (23913, 40, 12),
       (23914, 41, 13),
       (23915, 42, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23916, 43, 16),
       (23917, 44, 21),
       (23918, 45, 12),
       (23919, 46, 24),
       (23920, 1, 11),
       (23921, 2, 11),
       (23922, 3, 25),
       (23923, 4, 28),
       (23924, 5, 25),
       (23925, 6, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23926, 7, 14),
       (23927, 8, 17),
       (23928, 9, 21),
       (23929, 10, 14),
       (23930, 11, 12),
       (23931, 12, 17),
       (23932, 13, 34),
       (23934, 15, 35),
       (23935, 16, 32),
       (23936, 17, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24173, 43, 23),
       (23937, 18, 26),
       (23938, 19, 16),
       (23939, 20, 16),
       (23940, 21, 17),
       (23941, 22, 20),
       (23942, 23, 46),
       (23943, 24, 13),
       (23944, 25, 29),
       (23945, 26, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23946, 27, 32),
       (23947, 28, 19),
       (23948, 29, 23),
       (23949, 30, 27),
       (23950, 31, 16),
       (23951, 32, 10),
       (23952, 33, 15),
       (23953, 34, 37),
       (23954, 35, 38),
       (23955, 36, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23956, 37, 39),
       (23957, 38, 9),
       (23958, 39, 27),
       (23959, 1, 28),
       (23960, 2, 35),
       (23961, 3, 40),
       (23962, 4, 16),
       (23963, 5, 18),
       (23964, 6, 31),
       (23965, 7, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23966, 8, 10),
       (23967, 9, 27),
       (23968, 10, 17),
       (23969, 11, 12),
       (23970, 12, 15),
       (23971, 13, 13),
       (23972, 14, 27),
       (23973, 15, 27),
       (23974, 16, 12),
       (23975, 17, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23976, 18, 16),
       (23977, 19, 18),
       (23978, 20, 16),
       (23979, 21, 25),
       (23980, 22, 25),
       (23981, 23, 19),
       (23982, 24, 27),
       (23983, 25, 7),
       (23984, 26, 27),
       (23985, 27, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23986, 28, 12),
       (23987, 29, 38),
       (23988, 30, 43),
       (23989, 31, 34),
       (23990, 32, 28),
       (23991, 33, 21),
       (23992, 34, 18),
       (23993, 35, 14),
       (23994, 36, 23),
       (23995, 37, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (23996, 38, 30),
       (23997, 39, 24),
       (23998, 40, 16),
       (23999, 41, 16),
       (24000, 42, 13),
       (24001, 43, 35),
       (24002, 44, 19),
       (24003, 45, 25),
       (24004, 46, 15),
       (24005, 47, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24006, 48, 14),
       (24007, 49, 17),
       (24008, 50, 23),
       (24009, 51, 23),
       (24010, 1, 23),
       (24011, 2, 11),
       (24012, 3, 14),
       (24013, 4, 12),
       (24014, 5, 11),
       (24015, 6, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24016, 7, 10),
       (24017, 8, 19),
       (24018, 9, 27),
       (24019, 10, 29),
       (24020, 11, 13),
       (24021, 12, 15),
       (24022, 13, 12),
       (24023, 14, 22),
       (24024, 15, 27),
       (24025, 16, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24026, 17, 13),
       (24027, 18, 20),
       (24028, 19, 18),
       (24029, 20, 29),
       (24030, 21, 35),
       (24031, 22, 26),
       (24032, 23, 35),
       (24081, 26, 28),
       (24033, 24, 36),
       (24034, 25, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24035, 26, 30),
       (24036, 27, 25),
       (24037, 28, 19),
       (24038, 29, 30),
       (24039, 30, 22),
       (24040, 31, 28),
       (24041, 32, 27),
       (24042, 33, 17),
       (24043, 34, 30),
       (24044, 35, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24045, 36, 22),
       (24046, 37, 23),
       (24047, 38, 17),
       (24048, 39, 14),
       (24049, 40, 34),
       (24050, 41, 30),
       (24051, 42, 22),
       (24052, 43, 26),
       (24053, 44, 31),
       (24054, 45, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24055, 46, 15),
       (24056, 1, 18),
       (24057, 2, 21),
       (24058, 3, 25),
       (24059, 4, 16),
       (24060, 5, 14),
       (24061, 6, 14),
       (24062, 7, 27),
       (24063, 8, 17),
       (24064, 9, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24065, 10, 22),
       (24066, 11, 15),
       (24067, 12, 19),
       (24068, 13, 32),
       (24069, 14, 16),
       (24070, 15, 26),
       (24071, 16, 13),
       (24072, 17, 28),
       (24073, 18, 34),
       (24074, 19, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24075, 20, 15),
       (24076, 21, 20),
       (24077, 22, 18),
       (24078, 23, 21),
       (24079, 24, 38),
       (24080, 25, 20),
       (24082, 27, 19),
       (24083, 28, 19),
       (24084, 29, 32),
       (24085, 30, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24086, 31, 34),
       (24087, 32, 14),
       (24088, 33, 20),
       (24089, 34, 22),
       (24090, 35, 24),
       (24091, 36, 25),
       (24092, 37, 21),
       (24093, 38, 21),
       (24094, 39, 37),
       (24095, 40, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24096, 41, 20),
       (24097, 42, 26),
       (24098, 43, 14),
       (24099, 44, 19),
       (24100, 45, 36),
       (24101, 46, 14),
       (24102, 47, 32),
       (24103, 48, 20),
       (24104, 49, 14),
       (24105, 50, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24106, 51, 31),
       (24107, 52, 26),
       (24108, 53, 23),
       (24109, 54, 13),
       (24110, 55, 36),
       (24111, 56, 25),
       (24112, 57, 27),
       (24113, 58, 26),
       (24114, 59, 21),
       (24115, 60, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24116, 61, 22),
       (24117, 62, 22),
       (24118, 63, 33),
       (24119, 64, 35),
       (24120, 65, 27),
       (24121, 66, 13),
       (24122, 67, 21),
       (24123, 68, 13),
       (24124, 69, 23),
       (24125, 70, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24126, 71, 29),
       (24127, 72, 13),
       (24128, 73, 30),
       (24179, 49, 16),
       (24129, 74, 19),
       (24130, 75, 26),
       (24131, 1, 25),
       (24132, 2, 17),
       (24133, 3, 29),
       (24134, 4, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24135, 5, 21),
       (24136, 6, 29),
       (24137, 7, 17),
       (24138, 8, 13),
       (24139, 9, 37),
       (24140, 10, 15),
       (24141, 11, 27),
       (24142, 12, 15),
       (24143, 13, 16),
       (24144, 14, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24145, 15, 19),
       (24146, 16, 10),
       (24147, 17, 26),
       (24148, 18, 12),
       (24149, 19, 39),
       (24150, 20, 20),
       (24151, 21, 24),
       (24152, 22, 23),
       (24153, 23, 20),
       (24154, 24, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24155, 25, 17),
       (24156, 26, 16),
       (24157, 27, 19),
       (24158, 28, 12),
       (24159, 29, 36),
       (24160, 30, 16),
       (24161, 31, 27),
       (24162, 32, 28),
       (24163, 33, 19),
       (24164, 34, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24165, 35, 15),
       (24166, 36, 8),
       (24167, 37, 19),
       (24168, 38, 19),
       (24169, 39, 12),
       (24170, 40, 28),
       (24171, 41, 16),
       (24172, 42, 28),
       (24174, 44, 16),
       (24175, 45, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24176, 46, 28),
       (24177, 47, 16),
       (24178, 48, 27),
       (24181, 51, 28),
       (24182, 52, 18),
       (24183, 53, 21),
       (24184, 54, 33),
       (24185, 55, 18),
       (24186, 56, 22),
       (24187, 57, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24188, 58, 21),
       (24189, 59, 14),
       (24190, 60, 31),
       (24191, 61, 15),
       (24192, 62, 23),
       (24193, 63, 20),
       (24194, 64, 43),
       (24195, 65, 17),
       (24196, 66, 17),
       (24197, 1, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24198, 2, 28),
       (24199, 3, 12),
       (24200, 4, 15),
       (24201, 5, 24),
       (24202, 6, 21),
       (24203, 7, 32),
       (24204, 8, 20),
       (24205, 9, 21),
       (24206, 10, 23),
       (24207, 11, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24208, 12, 20),
       (24209, 13, 16),
       (24210, 14, 19),
       (24211, 15, 26),
       (24212, 16, 16),
       (24213, 17, 12),
       (24214, 18, 23),
       (24215, 19, 28),
       (24216, 20, 25),
       (24217, 1, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24218, 2, 23),
       (24219, 3, 21),
       (24220, 4, 18),
       (24221, 5, 30),
       (24222, 6, 24),
       (24223, 7, 29),
       (24224, 8, 15),
       (24225, 9, 24),
       (24226, 10, 24),
       (24227, 11, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24228, 12, 11),
       (24229, 13, 25),
       (24230, 14, 16),
       (24231, 15, 22),
       (24232, 16, 28),
       (24233, 17, 20),
       (24234, 18, 10),
       (24235, 19, 27),
       (24236, 20, 23),
       (24237, 21, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24238, 22, 20),
       (24239, 23, 18),
       (24240, 24, 29),
       (24241, 25, 14),
       (24242, 26, 17),
       (24243, 27, 31),
       (24244, 28, 18),
       (24245, 29, 24),
       (24246, 30, 19),
       (24247, 31, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24248, 32, 24),
       (24249, 33, 11),
       (24250, 34, 28),
       (24251, 35, 25),
       (24252, 36, 12),
       (24253, 37, 13),
       (24254, 38, 27),
       (24255, 39, 15),
       (24256, 40, 27),
       (24257, 41, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24258, 42, 13),
       (24259, 43, 11),
       (24260, 44, 34),
       (24261, 45, 42),
       (24262, 1, 20),
       (24263, 2, 28),
       (24264, 3, 16),
       (24265, 4, 39),
       (24266, 5, 18),
       (24267, 6, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24268, 7, 17),
       (24269, 8, 25),
       (24270, 9, 27),
       (24271, 10, 26),
       (24272, 11, 15),
       (24273, 12, 33),
       (24274, 13, 21),
       (24275, 14, 32),
       (24276, 15, 35),
       (24277, 16, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24278, 17, 34),
       (24279, 18, 34),
       (24280, 19, 31),
       (24281, 20, 23),
       (24282, 21, 34),
       (24283, 22, 34),
       (24284, 23, 28),
       (24285, 24, 20),
       (24286, 25, 27),
       (24287, 26, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24288, 27, 18),
       (24289, 28, 13),
       (24290, 1, 19),
       (24291, 2, 19),
       (24292, 3, 14),
       (24293, 4, 32),
       (24294, 5, 39),
       (24295, 6, 20),
       (24296, 7, 20),
       (24297, 8, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24298, 9, 24),
       (24299, 10, 21),
       (24300, 11, 22),
       (24301, 12, 13),
       (24302, 13, 21),
       (24303, 14, 20),
       (24304, 15, 9),
       (24306, 17, 23),
       (24307, 18, 23),
       (24308, 19, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24309, 20, 17),
       (24310, 21, 22),
       (24311, 22, 25),
       (24312, 23, 19),
       (24313, 24, 13),
       (24314, 25, 17),
       (24315, 26, 19),
       (24316, 27, 31),
       (24317, 28, 25),
       (24318, 29, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24319, 30, 9),
       (24320, 31, 18),
       (24321, 32, 23),
       (24322, 33, 14),
       (24323, 34, 19),
       (24324, 35, 18),
       (24325, 1, 44),
       (24326, 2, 16),
       (24327, 3, 9),
       (24328, 4, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24329, 5, 26),
       (24330, 6, 19),
       (24331, 7, 20),
       (24332, 8, 24),
       (24333, 9, 12),
       (24334, 10, 19),
       (24335, 11, 29),
       (24336, 12, 29),
       (24337, 13, 19),
       (24338, 14, 6)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24339, 15, 33),
       (24340, 16, 27),
       (24341, 17, 26),
       (24342, 18, 19),
       (24343, 19, 27),
       (24344, 20, 29),
       (24345, 21, 28),
       (24346, 22, 24),
       (24347, 23, 11),
       (24348, 24, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24349, 25, 26),
       (24350, 26, 20),
       (24351, 27, 21),
       (24352, 28, 20),
       (24353, 29, 18),
       (24354, 30, 21),
       (24355, 31, 30),
       (24356, 32, 33),
       (24357, 33, 19),
       (24358, 34, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24359, 35, 21),
       (24360, 36, 23),
       (24361, 37, 23),
       (24362, 38, 27),
       (24363, 39, 26),
       (24365, 41, 23),
       (24366, 1, 17),
       (24367, 2, 24),
       (24368, 3, 21),
       (24369, 4, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24370, 5, 22),
       (24371, 6, 13),
       (24372, 7, 33),
       (24374, 9, 22),
       (24375, 10, 17),
       (24376, 11, 15),
       (24377, 12, 17),
       (24378, 13, 39),
       (24379, 14, 30),
       (24380, 15, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24381, 16, 22),
       (24382, 17, 12),
       (24383, 18, 24),
       (24384, 19, 36),
       (24385, 20, 24),
       (24386, 21, 28),
       (24387, 22, 22),
       (24388, 23, 35),
       (24389, 24, 16),
       (24390, 25, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24391, 26, 24),
       (24392, 27, 16),
       (24393, 28, 15),
       (24394, 29, 24),
       (24395, 30, 28),
       (24396, 31, 19),
       (24397, 32, 14),
       (24398, 33, 26),
       (24399, 34, 22),
       (24400, 35, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24401, 36, 19),
       (24402, 37, 20),
       (24403, 38, 24),
       (24404, 39, 25),
       (24405, 40, 36),
       (24406, 41, 24),
       (24407, 42, 24),
       (24408, 43, 23),
       (24409, 1, 19),
       (24410, 2, 48)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24411, 3, 34),
       (24412, 4, 27),
       (24413, 5, 23),
       (24414, 6, 16),
       (24415, 7, 27),
       (24416, 8, 26),
       (24417, 9, 15),
       (24418, 10, 18),
       (24419, 11, 32),
       (24421, 13, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24422, 14, 31),
       (24423, 15, 20),
       (24424, 16, 15),
       (24425, 17, 32),
       (24426, 18, 18),
       (24427, 19, 16),
       (24428, 20, 32),
       (24429, 21, 29),
       (24430, 22, 42),
       (24431, 23, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24432, 24, 23),
       (24433, 25, 30),
       (24434, 26, 26),
       (24435, 27, 27),
       (24436, 28, 22),
       (24437, 29, 20),
       (24438, 30, 24),
       (24439, 31, 35),
       (24440, 32, 13),
       (24441, 33, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24442, 34, 33),
       (24443, 35, 27),
       (24444, 36, 21),
       (24445, 37, 34),
       (24446, 38, 24),
       (24447, 39, 16),
       (24448, 40, 12),
       (24449, 41, 41),
       (24451, 43, 14),
       (24452, 44, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24453, 45, 30),
       (24454, 46, 16),
       (24455, 47, 21),
       (24456, 48, 36),
       (24457, 49, 20),
       (24458, 50, 29),
       (24459, 51, 21),
       (24460, 52, 13),
       (24461, 53, 19),
       (24462, 54, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24463, 55, 25),
       (24464, 56, 46),
       (24465, 1, 20),
       (24466, 2, 18),
       (24467, 3, 23),
       (24468, 4, 35),
       (24469, 5, 28),
       (24470, 6, 31),
       (24471, 7, 16),
       (24472, 8, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24473, 9, 21),
       (24474, 10, 24),
       (24475, 11, 33),
       (24477, 13, 21),
       (24478, 14, 20),
       (24479, 15, 30),
       (24480, 16, 3),
       (24481, 17, 19),
       (24482, 18, 27),
       (24483, 19, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24484, 20, 15),
       (24485, 21, 17),
       (24486, 22, 11),
       (24487, 23, 12),
       (24488, 24, 35),
       (24489, 25, 23),
       (24490, 26, 26),
       (24491, 27, 29),
       (24492, 28, 22),
       (24493, 29, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24494, 30, 21),
       (24495, 31, 28),
       (24496, 32, 27),
       (24497, 33, 24),
       (24498, 34, 17),
       (24499, 35, 18),
       (24500, 36, 27),
       (24501, 37, 26),
       (24502, 1, 27),
       (24503, 2, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24504, 3, 25),
       (24505, 4, 22),
       (24506, 5, 14),
       (24507, 6, 40),
       (24508, 7, 20),
       (24509, 8, 19),
       (24510, 9, 12),
       (24511, 10, 18),
       (24512, 11, 21),
       (24513, 12, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24514, 13, 16),
       (24515, 14, 20),
       (24516, 15, 20),
       (24517, 16, 12),
       (24518, 17, 28),
       (24519, 18, 17),
       (24520, 19, 26),
       (24521, 20, 24),
       (24522, 21, 11),
       (24523, 22, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24524, 23, 39),
       (24525, 24, 17),
       (24526, 25, 22),
       (24527, 26, 17),
       (24528, 27, 32),
       (24529, 28, 18),
       (24530, 29, 22),
       (24531, 30, 13),
       (24532, 31, 38),
       (24533, 32, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24534, 33, 31),
       (24535, 34, 34),
       (24536, 35, 26),
       (24537, 36, 17),
       (24538, 37, 12),
       (24539, 38, 41),
       (24540, 1, 38),
       (24541, 2, 31),
       (24542, 3, 17),
       (24543, 4, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24544, 5, 34),
       (24545, 6, 13),
       (24546, 7, 25),
       (24547, 8, 17),
       (24548, 9, 37),
       (24549, 10, 18),
       (24550, 11, 18),
       (24551, 12, 35),
       (24552, 13, 27),
       (24553, 14, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24554, 15, 19),
       (24555, 16, 10),
       (24556, 17, 20),
       (24557, 18, 37),
       (24558, 19, 28),
       (24559, 20, 27),
       (24560, 21, 23),
       (24561, 22, 32),
       (24562, 23, 17),
       (24563, 24, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24564, 25, 37),
       (24565, 26, 28),
       (24566, 27, 15),
       (24567, 28, 24),
       (24568, 29, 16),
       (24569, 30, 21),
       (24570, 31, 39),
       (24571, 32, 13),
       (24572, 33, 23),
       (24573, 34, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24574, 35, 30),
       (24575, 36, 25),
       (24576, 37, 26),
       (24577, 38, 24),
       (24578, 39, 30),
       (24579, 40, 11),
       (24580, 41, 30),
       (24581, 42, 37),
       (24582, 43, 36),
       (24584, 45, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24585, 46, 3),
       (24586, 47, 37),
       (24587, 48, 12),
       (24588, 49, 9),
       (24589, 50, 28),
       (24590, 1, 33),
       (24591, 2, 23),
       (24592, 3, 13),
       (24593, 4, 17),
       (24594, 5, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24595, 6, 14),
       (24596, 7, 18),
       (24597, 8, 18),
       (24598, 9, 12),
       (24600, 11, 19),
       (24601, 12, 16),
       (24602, 13, 19),
       (24603, 14, 34),
       (24604, 15, 25),
       (24605, 16, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24606, 17, 34),
       (24607, 18, 18),
       (24608, 19, 28),
       (24609, 20, 16),
       (24610, 21, 37),
       (24611, 22, 21),
       (24612, 23, 24),
       (24613, 24, 35),
       (24614, 25, 26),
       (24615, 26, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24616, 27, 22),
       (24617, 28, 16),
       (24618, 29, 37),
       (24619, 30, 32),
       (24620, 31, 13),
       (24621, 32, 46),
       (24622, 33, 38),
       (24623, 34, 27),
       (24624, 35, 32),
       (24625, 36, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24626, 37, 27),
       (24627, 38, 34),
       (24628, 39, 35),
       (24629, 40, 29),
       (24630, 41, 18),
       (24631, 42, 35),
       (24632, 43, 19),
       (24633, 44, 13),
       (24634, 45, 25),
       (24635, 46, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24636, 47, 27),
       (24637, 48, 28),
       (24638, 49, 27),
       (24639, 50, 13),
       (24640, 51, 30),
       (24641, 52, 27),
       (24642, 1, 23),
       (24643, 2, 40),
       (24644, 3, 28),
       (24645, 4, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24646, 5, 17),
       (24647, 6, 16),
       (24648, 7, 19),
       (24649, 8, 19),
       (24650, 9, 23),
       (24651, 10, 17),
       (24652, 11, 31),
       (24653, 12, 14),
       (24654, 13, 38),
       (24655, 14, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24656, 15, 44),
       (24657, 16, 16),
       (24658, 17, 34),
       (24659, 18, 30),
       (24661, 20, 19),
       (24662, 21, 20),
       (24663, 22, 11),
       (24664, 23, 42),
       (24665, 24, 24),
       (24666, 25, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24667, 26, 3),
       (24668, 27, 28),
       (24669, 28, 23),
       (24670, 29, 28),
       (24671, 30, 14),
       (24672, 31, 23),
       (24673, 32, 20),
       (24674, 33, 26),
       (24675, 1, 43),
       (24676, 2, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24677, 3, 13),
       (24678, 4, 19),
       (24679, 5, 17),
       (24680, 6, 20),
       (24681, 7, 22),
       (24682, 8, 16),
       (24683, 9, 24),
       (24684, 10, 23),
       (24685, 11, 13),
       (24686, 12, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24687, 13, 21),
       (24688, 14, 50),
       (24689, 15, 32),
       (24690, 16, 23),
       (24691, 17, 30),
       (24692, 18, 19),
       (24693, 19, 36),
       (24694, 20, 16),
       (24695, 21, 17),
       (24696, 22, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24697, 23, 18),
       (24698, 24, 25),
       (24699, 25, 23),
       (24700, 26, 47),
       (24701, 27, 17),
       (24702, 28, 29),
       (24703, 29, 17),
       (24704, 30, 28),
       (24705, 31, 20),
       (24706, 32, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24707, 33, 36),
       (24708, 34, 32),
       (24709, 35, 24),
       (24710, 36, 30),
       (24711, 37, 19),
       (24712, 38, 25),
       (24713, 39, 12),
       (24714, 40, 18),
       (24715, 41, 27),
       (24716, 42, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24717, 43, 32),
       (24718, 44, 26),
       (24719, 1, 28),
       (24720, 2, 27),
       (24721, 3, 24),
       (24722, 4, 23),
       (24723, 5, 16),
       (24724, 6, 16),
       (24725, 7, 28),
       (24726, 8, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24727, 9, 38),
       (24728, 10, 12),
       (24729, 11, 43),
       (24730, 12, 29),
       (24731, 13, 26),
       (28006, 14, 9),
       (24732, 14, 30),
       (24733, 15, 22),
       (24734, 16, 16),
       (24735, 17, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24737, 19, 30),
       (24738, 20, 28),
       (24739, 21, 21),
       (24740, 22, 25),
       (24741, 23, 13),
       (24742, 24, 21),
       (24743, 25, 20),
       (24744, 26, 18),
       (24745, 27, 32),
       (24746, 28, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24747, 29, 23),
       (24748, 30, 18),
       (24749, 31, 14),
       (24750, 32, 23),
       (24751, 33, 15),
       (24752, 34, 33),
       (24753, 35, 27),
       (24754, 36, 8),
       (24755, 37, 12),
       (24756, 1, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24757, 2, 18),
       (24758, 3, 45),
       (24759, 4, 22),
       (24760, 5, 23),
       (24761, 6, 19),
       (24762, 7, 24),
       (24763, 8, 16),
       (24764, 9, 33),
       (24765, 10, 24),
       (24766, 11, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24767, 12, 34),
       (24768, 13, 30),
       (24769, 14, 31),
       (24770, 15, 20),
       (24771, 16, 25),
       (24772, 17, 11),
       (24773, 18, 27),
       (24774, 19, 17),
       (24775, 20, 20),
       (24776, 21, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24777, 22, 29),
       (24778, 23, 22),
       (24779, 24, 19),
       (24780, 25, 30),
       (24781, 26, 16),
       (24782, 27, 27),
       (24783, 28, 14),
       (24784, 29, 15),
       (24785, 30, 27),
       (24786, 31, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24787, 32, 23),
       (24788, 33, 20),
       (24789, 34, 19),
       (24790, 35, 26),
       (24791, 36, 26),
       (24792, 37, 21),
       (24793, 38, 20),
       (24794, 39, 12),
       (24795, 40, 23),
       (24796, 41, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24797, 42, 14),
       (24798, 43, 32),
       (24799, 44, 26),
       (24800, 45, 17),
       (24801, 46, 10),
       (24802, 47, 26),
       (24803, 48, 23),
       (24804, 49, 25),
       (24805, 50, 8),
       (24806, 51, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24807, 52, 10),
       (24808, 53, 26),
       (24809, 54, 33),
       (24810, 55, 22),
       (24811, 56, 14),
       (24812, 57, 13),
       (24813, 58, 26),
       (24814, 59, 10),
       (24815, 60, 25),
       (24816, 61, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24817, 62, 28),
       (24818, 63, 17),
       (24819, 64, 19),
       (24820, 65, 33),
       (24821, 66, 19),
       (24822, 67, 20),
       (24823, 68, 24),
       (24824, 69, 21),
       (24825, 70, 32),
       (24826, 71, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28007, 15, 8),
       (24827, 72, 39),
       (24828, 1, 34),
       (24829, 2, 20),
       (24830, 3, 10),
       (24831, 4, 18),
       (24832, 5, 11),
       (24833, 6, 18),
       (24834, 7, 23),
       (24835, 8, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24836, 9, 18),
       (24837, 10, 14),
       (24838, 11, 17),
       (24839, 12, 24),
       (24840, 13, 8),
       (24841, 14, 19),
       (24842, 15, 23),
       (24843, 16, 21),
       (24844, 17, 18),
       (24845, 18, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24846, 19, 19),
       (24847, 20, 28),
       (24848, 21, 30),
       (24849, 22, 18),
       (24850, 23, 14),
       (24851, 24, 19),
       (24852, 25, 11),
       (24853, 26, 15),
       (24854, 27, 18),
       (24855, 28, 3)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24856, 29, 26),
       (24857, 30, 9),
       (24858, 31, 23),
       (24859, 32, 29),
       (24860, 33, 19),
       (24861, 34, 29),
       (24862, 35, 17),
       (24863, 36, 34),
       (24864, 37, 12),
       (24865, 38, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24866, 39, 29),
       (24867, 40, 28),
       (24868, 41, 24),
       (24869, 42, 19),
       (24870, 43, 35),
       (24871, 44, 25),
       (24872, 45, 15),
       (24873, 46, 42),
       (24874, 47, 15),
       (24920, 26, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24875, 1, 26),
       (24876, 2, 21),
       (24877, 3, 20),
       (24878, 4, 17),
       (24879, 5, 25),
       (24880, 6, 32),
       (24881, 7, 24),
       (24882, 8, 29),
       (24883, 9, 28),
       (24884, 10, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24885, 11, 17),
       (24886, 12, 24),
       (24887, 13, 15),
       (24888, 14, 39),
       (24889, 15, 20),
       (24890, 16, 17),
       (24891, 17, 23),
       (24892, 18, 31),
       (24893, 19, 26),
       (24894, 20, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24895, 1, 22),
       (24896, 2, 19),
       (24897, 3, 27),
       (24898, 4, 14),
       (24899, 5, 36),
       (24900, 6, 19),
       (24901, 7, 20),
       (24902, 8, 21),
       (24903, 9, 24),
       (24904, 10, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24905, 11, 20),
       (24906, 12, 14),
       (24907, 13, 31),
       (24908, 14, 15),
       (24909, 15, 36),
       (24910, 16, 16),
       (24911, 17, 47),
       (24912, 18, 25),
       (24913, 19, 33),
       (24914, 20, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24915, 21, 17),
       (24916, 22, 34),
       (24917, 23, 19),
       (24918, 24, 16),
       (24919, 25, 23),
       (24921, 27, 24),
       (24922, 28, 20),
       (24923, 29, 21),
       (24924, 30, 17),
       (24925, 31, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24926, 32, 29),
       (24927, 33, 21),
       (24928, 34, 17),
       (24929, 35, 41),
       (24930, 36, 28),
       (24931, 37, 11),
       (24932, 38, 24),
       (24933, 39, 20),
       (24934, 40, 11),
       (24935, 41, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24936, 42, 26),
       (24938, 44, 21),
       (24939, 45, 25),
       (24940, 46, 10),
       (24941, 47, 10),
       (24942, 48, 22),
       (24943, 49, 17),
       (24944, 50, 14),
       (24945, 51, 19),
       (24946, 52, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24947, 53, 17),
       (24948, 54, 13),
       (24949, 55, 15),
       (24950, 56, 14),
       (24951, 57, 18),
       (24952, 58, 22),
       (24953, 59, 30),
       (24954, 60, 15),
       (24955, 61, 18),
       (24956, 62, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24957, 63, 19),
       (24958, 64, 16),
       (24959, 65, 25),
       (24960, 66, 28),
       (24961, 67, 14),
       (24962, 68, 19),
       (24963, 69, 17),
       (24964, 70, 18),
       (24965, 71, 14),
       (24966, 72, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24967, 73, 10),
       (24968, 74, 21),
       (24969, 75, 10),
       (24970, 76, 29),
       (24971, 77, 15),
       (24972, 78, 18),
       (24973, 79, 23),
       (24974, 80, 23),
       (24975, 1, 24),
       (24976, 2, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24977, 3, 13),
       (24978, 4, 35),
       (24979, 5, 15),
       (24980, 6, 19),
       (24981, 7, 31),
       (24982, 8, 21),
       (24983, 9, 25),
       (24984, 10, 27),
       (24985, 11, 21),
       (24986, 12, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24987, 13, 18),
       (24988, 14, 19),
       (24989, 15, 45),
       (24990, 16, 19),
       (24991, 17, 20),
       (24992, 18, 18),
       (24994, 20, 26),
       (24995, 21, 29),
       (24996, 22, 27),
       (24997, 23, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (24998, 24, 26),
       (24999, 25, 33),
       (25000, 26, 26),
       (25001, 27, 31),
       (25002, 28, 13),
       (25003, 29, 14),
       (25004, 30, 8),
       (25005, 31, 11),
       (25006, 32, 15),
       (25007, 33, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25008, 34, 34),
       (25009, 35, 20),
       (25010, 36, 33),
       (25011, 37, 27),
       (25012, 38, 28),
       (25013, 39, 26),
       (25014, 40, 19),
       (25015, 41, 15),
       (25016, 42, 17),
       (25017, 43, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25018, 44, 25),
       (25019, 45, 14),
       (25020, 46, 29),
       (25022, 48, 31),
       (25023, 49, 25),
       (25024, 50, 12),
       (25025, 51, 27),
       (25026, 52, 15),
       (25027, 1, 41),
       (25028, 2, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25029, 3, 21),
       (25030, 4, 35),
       (25031, 5, 26),
       (25032, 6, 10),
       (25033, 7, 29),
       (25034, 8, 39),
       (25035, 9, 31),
       (25036, 10, 12),
       (25037, 11, 30),
       (25038, 12, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25039, 13, 15),
       (25040, 14, 35),
       (25041, 15, 23),
       (25042, 16, 44),
       (25043, 17, 31),
       (25044, 18, 13),
       (25045, 19, 25),
       (25046, 20, 14),
       (25047, 21, 24),
       (25048, 22, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25049, 23, 27),
       (25050, 24, 21),
       (25051, 25, 21),
       (25052, 26, 21),
       (25053, 27, 21),
       (25054, 28, 21),
       (25055, 29, 21),
       (25056, 30, 21),
       (25057, 31, 21),
       (25058, 32, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25059, 33, 21),
       (25060, 34, 21),
       (25061, 35, 21),
       (25062, 36, 21),
       (25063, 37, 21),
       (25064, 38, 17),
       (25065, 1, 20),
       (25066, 2, 24),
       (25067, 3, 21),
       (25068, 4, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25069, 5, 20),
       (25070, 6, 35),
       (25071, 7, 13),
       (25072, 8, 24),
       (25073, 9, 32),
       (25074, 10, 16),
       (25075, 11, 19),
       (25076, 12, 20),
       (25077, 13, 16),
       (25078, 14, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25079, 15, 11),
       (25080, 16, 31),
       (25081, 17, 26),
       (25082, 18, 45),
       (25083, 19, 9),
       (25084, 20, 28),
       (25085, 21, 18),
       (25086, 22, 28),
       (25087, 23, 31),
       (25088, 24, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25089, 25, 41),
       (25090, 26, 25),
       (25091, 27, 26),
       (25092, 28, 16),
       (25093, 29, 34),
       (25094, 30, 12),
       (25095, 31, 20),
       (25096, 32, 14),
       (25097, 33, 25),
       (25098, 34, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25099, 35, 35),
       (25100, 36, 32),
       (25101, 37, 17),
       (25102, 38, 33),
       (25103, 39, 23),
       (25104, 40, 33),
       (25105, 41, 35),
       (25106, 42, 37),
       (25107, 43, 27),
       (25108, 44, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25109, 1, 27),
       (25110, 2, 23),
       (25199, 3, 25),
       (25111, 3, 36),
       (25112, 4, 24),
       (25113, 5, 24),
       (25114, 6, 19),
       (25115, 7, 32),
       (25116, 8, 25),
       (25117, 9, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25118, 10, 29),
       (25119, 11, 16),
       (25120, 12, 43),
       (25121, 13, 24),
       (25122, 14, 33),
       (25123, 15, 26),
       (25124, 16, 10),
       (25125, 17, 50),
       (25126, 18, 26),
       (25127, 19, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25129, 21, 24),
       (25130, 22, 17),
       (25131, 23, 17),
       (25132, 24, 40),
       (25133, 25, 22),
       (25134, 26, 25),
       (25135, 27, 26),
       (25136, 28, 11),
       (25137, 29, 29),
       (25138, 30, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25139, 31, 23),
       (25140, 32, 13),
       (25141, 33, 27),
       (25142, 34, 22),
       (25143, 35, 23),
       (25144, 36, 44),
       (25145, 37, 29),
       (25146, 38, 11),
       (25147, 39, 17),
       (25148, 1, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25149, 2, 22),
       (25150, 3, 26),
       (25151, 4, 36),
       (25152, 5, 15),
       (25153, 6, 29),
       (25154, 7, 24),
       (25155, 8, 31),
       (25156, 9, 30),
       (25157, 10, 26),
       (25158, 11, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25159, 12, 27),
       (25160, 13, 21),
       (25161, 14, 19),
       (25162, 15, 18),
       (25163, 16, 14),
       (25164, 17, 52),
       (25165, 18, 11),
       (25166, 19, 19),
       (25167, 20, 23),
       (25168, 21, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25169, 22, 35),
       (25170, 23, 28),
       (25171, 24, 14),
       (25172, 25, 26),
       (25173, 26, 24),
       (25174, 27, 18),
       (25175, 28, 13),
       (25176, 29, 27),
       (25177, 30, 20),
       (25178, 31, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25179, 32, 21),
       (25180, 33, 23),
       (25181, 34, 27),
       (25182, 35, 37),
       (25183, 36, 10),
       (25184, 37, 25),
       (25185, 38, 36),
       (25186, 39, 23),
       (25187, 40, 20),
       (25188, 41, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25189, 42, 64),
       (25190, 43, 22),
       (25191, 44, 26),
       (25192, 45, 44),
       (25193, 46, 16),
       (25194, 47, 23),
       (25195, 48, 43),
       (25196, 49, 40),
       (25197, 1, 18),
       (25198, 2, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25200, 4, 22),
       (25201, 5, 12),
       (25202, 6, 41),
       (25203, 7, 21),
       (25204, 8, 41),
       (25205, 9, 36),
       (25206, 10, 14),
       (25207, 11, 26),
       (25208, 12, 41),
       (25209, 13, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25210, 14, 24),
       (25211, 15, 19),
       (25212, 16, 25),
       (25213, 17, 19),
       (25214, 18, 12),
       (25215, 19, 26),
       (25216, 20, 30),
       (25217, 21, 23),
       (25218, 22, 49),
       (25220, 24, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25221, 25, 27),
       (25222, 26, 21),
       (25223, 27, 24),
       (25224, 28, 33),
       (25225, 29, 20),
       (25226, 30, 19),
       (25227, 31, 17),
       (25228, 32, 34),
       (25229, 33, 20),
       (25230, 34, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25231, 35, 9),
       (25232, 36, 27),
       (25233, 37, 34),
       (25234, 38, 36),
       (25235, 39, 42),
       (25236, 40, 21),
       (25237, 41, 17),
       (25238, 42, 20),
       (25239, 43, 23),
       (25240, 44, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25241, 45, 21),
       (25242, 46, 17),
       (25243, 47, 27),
       (25245, 49, 21),
       (25246, 50, 15),
       (25247, 1, 32),
       (25248, 2, 25),
       (25249, 3, 22),
       (25250, 4, 21),
       (25251, 5, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25252, 6, 21),
       (25253, 7, 16),
       (25254, 8, 32),
       (25255, 9, 11),
       (25256, 10, 36),
       (25257, 11, 13),
       (25258, 12, 32),
       (25259, 13, 35),
       (25260, 14, 39),
       (25261, 15, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25262, 16, 36),
       (25263, 17, 23),
       (25264, 18, 32),
       (25265, 19, 20),
       (25266, 20, 17),
       (25267, 21, 24),
       (25268, 22, 41),
       (25269, 23, 29),
       (25270, 24, 35),
       (25271, 25, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25272, 26, 15),
       (25273, 27, 43),
       (25274, 28, 41),
       (25275, 29, 46),
       (25276, 30, 20),
       (25277, 31, 16),
       (25278, 32, 33),
       (25279, 33, 27),
       (25280, 34, 25),
       (25281, 35, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25282, 36, 18),
       (25283, 37, 34),
       (25284, 38, 25),
       (25376, 12, 19),
       (25285, 39, 33),
       (25286, 40, 16),
       (25287, 41, 32),
       (25288, 42, 24),
       (25289, 43, 26),
       (25290, 44, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25291, 45, 30),
       (25292, 46, 19),
       (25293, 47, 39),
       (25294, 48, 16),
       (25295, 49, 25),
       (25296, 50, 17),
       (25297, 51, 33),
       (25298, 52, 20),
       (25299, 53, 12),
       (25300, 54, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25301, 55, 20),
       (25302, 56, 18),
       (25303, 1, 20),
       (25304, 2, 17),
       (25305, 3, 23),
       (25306, 4, 12),
       (25307, 5, 26),
       (25308, 6, 15),
       (25309, 7, 30),
       (25310, 8, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25311, 9, 23),
       (25312, 10, 28),
       (25313, 11, 30),
       (25314, 12, 44),
       (25315, 13, 35),
       (25316, 14, 23),
       (25317, 15, 11),
       (25318, 16, 31),
       (25319, 17, 24),
       (25320, 18, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25321, 19, 23),
       (25322, 20, 21),
       (25323, 21, 14),
       (25324, 22, 31),
       (25325, 23, 26),
       (25326, 24, 24),
       (25327, 25, 20),
       (25328, 26, 39),
       (25329, 27, 31),
       (25330, 28, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25331, 29, 20),
       (25332, 30, 14),
       (25333, 31, 18),
       (25334, 32, 31),
       (25335, 33, 47),
       (25336, 34, 23),
       (25337, 35, 19),
       (25338, 36, 30),
       (25339, 37, 23),
       (25340, 38, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25341, 39, 28),
       (25342, 40, 14),
       (25343, 41, 26),
       (25344, 42, 34),
       (25345, 43, 28),
       (25346, 44, 22),
       (25347, 45, 29),
       (25348, 46, 14),
       (25349, 47, 21),
       (25350, 48, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25351, 49, 26),
       (25352, 50, 19),
       (25353, 51, 28),
       (25354, 52, 23),
       (25355, 53, 18),
       (25356, 54, 27),
       (25357, 55, 7),
       (25358, 56, 7),
       (25359, 57, 21),
       (25360, 58, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25361, 59, 21),
       (25362, 60, 24),
       (25363, 61, 24),
       (25364, 62, 25),
       (25365, 1, 31),
       (25366, 2, 32),
       (25367, 3, 16),
       (25368, 4, 15),
       (25369, 5, 15),
       (25370, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25371, 7, 29),
       (25372, 8, 19),
       (25373, 9, 21),
       (25374, 10, 21),
       (25375, 11, 28),
       (25377, 13, 37),
       (25378, 14, 17),
       (25379, 15, 17),
       (25380, 16, 24),
       (25381, 17, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25382, 18, 14),
       (25383, 19, 29),
       (25384, 20, 22),
       (25385, 21, 51),
       (25386, 22, 40),
       (25387, 23, 20),
       (25388, 24, 35),
       (25389, 25, 23),
       (25390, 26, 15),
       (25391, 27, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25392, 28, 16),
       (25393, 29, 15),
       (25394, 30, 34),
       (25395, 31, 24),
       (25396, 32, 23),
       (25397, 33, 22),
       (25398, 34, 35),
       (25399, 35, 36),
       (25400, 36, 16),
       (25401, 37, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25402, 38, 25),
       (25403, 39, 20),
       (25404, 40, 37),
       (25405, 41, 19),
       (25406, 42, 21),
       (25407, 1, 37),
       (25408, 2, 18),
       (25410, 4, 24),
       (25411, 5, 29),
       (25412, 6, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25413, 7, 31),
       (25414, 8, 34),
       (25415, 9, 26),
       (25416, 10, 21),
       (25417, 11, 34),
       (25418, 12, 14),
       (25419, 13, 31),
       (25420, 14, 30),
       (25421, 15, 17),
       (25422, 16, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25423, 17, 26),
       (25424, 18, 24),
       (25425, 19, 23),
       (25426, 20, 21),
       (25427, 21, 16),
       (25428, 22, 28),
       (25429, 23, 18),
       (25430, 24, 34),
       (25431, 25, 12),
       (25432, 26, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25433, 27, 40),
       (25434, 28, 18),
       (25435, 29, 39),
       (25436, 30, 22),
       (25437, 31, 45),
       (25438, 32, 34),
       (25439, 33, 31),
       (25440, 34, 34),
       (25441, 35, 13),
       (25442, 36, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25443, 37, 22),
       (25444, 38, 18),
       (25445, 39, 31),
       (25446, 40, 15),
       (25447, 41, 18),
       (25448, 42, 38),
       (25449, 43, 20),
       (25450, 44, 23),
       (25451, 45, 18),
       (25452, 46, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25453, 47, 17),
       (25454, 48, 22),
       (25455, 49, 25),
       (25456, 50, 23),
       (25457, 51, 31),
       (25458, 52, 26),
       (25459, 53, 29),
       (25460, 54, 12),
       (25461, 1, 43),
       (25462, 2, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25463, 3, 33),
       (25464, 4, 27),
       (25465, 5, 30),
       (25466, 6, 21),
       (25467, 7, 21),
       (25468, 8, 27),
       (25469, 9, 22),
       (25470, 10, 33),
       (25471, 11, 29),
       (25472, 12, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25473, 13, 19),
       (25474, 14, 17),
       (25475, 15, 30),
       (25476, 16, 19),
       (25477, 17, 20),
       (25478, 18, 28),
       (25479, 19, 25),
       (25480, 20, 28),
       (25481, 21, 16),
       (25482, 22, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25483, 23, 15),
       (25484, 24, 31),
       (25485, 25, 18),
       (25486, 26, 21),
       (25487, 27, 32),
       (25621, 32, 27),
       (25488, 28, 36),
       (25489, 29, 20),
       (25490, 30, 24),
       (25491, 31, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25492, 32, 18),
       (25493, 33, 33),
       (25494, 34, 12),
       (25495, 35, 11),
       (25496, 36, 32),
       (25497, 37, 37),
       (25498, 38, 23),
       (25499, 39, 34),
       (25500, 40, 18),
       (25501, 41, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25502, 42, 31),
       (25503, 43, 15),
       (25504, 44, 18),
       (25505, 45, 34),
       (25506, 46, 35),
       (25507, 47, 26),
       (25594, 5, 14),
       (25508, 48, 43),
       (25509, 49, 19),
       (25510, 50, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25511, 51, 20),
       (25512, 52, 19),
       (25513, 53, 37),
       (25514, 54, 30),
       (25515, 55, 22),
       (25516, 56, 29),
       (25517, 57, 12),
       (25518, 58, 47),
       (25519, 59, 21),
       (25520, 1, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25521, 2, 25),
       (25522, 3, 16),
       (25523, 4, 28),
       (25524, 5, 14),
       (25525, 6, 26),
       (25526, 7, 32),
       (25527, 8, 23),
       (25528, 9, 16),
       (25529, 10, 14),
       (25530, 11, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25531, 12, 20),
       (25532, 13, 17),
       (25767, 35, 19),
       (25533, 14, 49),
       (25534, 15, 34),
       (25535, 16, 32),
       (25536, 17, 29),
       (25537, 18, 18),
       (25538, 19, 38),
       (25539, 20, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25540, 21, 22),
       (25541, 22, 17),
       (25542, 23, 18),
       (25543, 24, 25),
       (25544, 25, 49),
       (25545, 26, 22),
       (25546, 27, 22),
       (25547, 28, 34),
       (25548, 29, 25),
       (25549, 30, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25930, 65, 11),
       (25550, 31, 24),
       (25551, 32, 32),
       (25552, 33, 28),
       (25553, 34, 40),
       (25554, 35, 34),
       (25555, 1, 31),
       (25556, 2, 14),
       (25557, 3, 21),
       (25558, 4, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25559, 5, 31),
       (25560, 6, 10),
       (25561, 7, 24),
       (25562, 8, 31),
       (25563, 9, 30),
       (25564, 10, 47),
       (25565, 11, 18),
       (25566, 12, 45),
       (25567, 13, 16),
       (25568, 14, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25569, 15, 31),
       (25570, 16, 17),
       (25571, 17, 24),
       (25572, 18, 36),
       (25573, 19, 23),
       (25574, 20, 14),
       (25622, 1, 31),
       (25575, 21, 46),
       (25576, 22, 17),
       (25577, 23, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25578, 24, 19),
       (25579, 25, 15),
       (25580, 26, 34),
       (25581, 27, 16),
       (25582, 28, 26),
       (25583, 29, 22),
       (25585, 31, 38),
       (25586, 32, 21),
       (25587, 33, 20),
       (25588, 34, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25589, 35, 25),
       (25590, 1, 15),
       (25591, 2, 18),
       (25592, 3, 9),
       (25593, 4, 36),
       (25595, 6, 29),
       (25596, 7, 31),
       (25597, 8, 30),
       (25598, 9, 28),
       (25599, 10, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25600, 11, 10),
       (25601, 12, 29),
       (25602, 13, 29),
       (25603, 14, 22),
       (25604, 15, 25),
       (25605, 16, 23),
       (25606, 17, 29),
       (25607, 18, 24),
       (25608, 19, 19),
       (25609, 20, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25610, 21, 27),
       (25611, 22, 31),
       (25612, 23, 16),
       (25613, 24, 23),
       (25614, 25, 24),
       (25615, 26, 17),
       (25616, 27, 26),
       (25617, 28, 18),
       (25618, 29, 41),
       (25619, 30, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25620, 31, 19),
       (25623, 2, 30),
       (25624, 3, 32),
       (25625, 4, 23),
       (25626, 5, 24),
       (25627, 6, 24),
       (25628, 7, 29),
       (25629, 8, 31),
       (25630, 9, 30),
       (25631, 10, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25632, 11, 21),
       (25633, 12, 23),
       (25634, 13, 35),
       (25635, 14, 18),
       (25636, 15, 37),
       (25637, 16, 28),
       (25638, 17, 21),
       (25639, 18, 27),
       (28008, 16, 8),
       (25640, 19, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25641, 20, 15),
       (25642, 21, 26),
       (25643, 22, 32),
       (25644, 23, 22),
       (25645, 24, 38),
       (25646, 25, 33),
       (25647, 26, 38),
       (25648, 27, 19),
       (25649, 28, 21),
       (25650, 29, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25651, 30, 19),
       (25652, 31, 25),
       (25653, 1, 25),
       (25654, 2, 34),
       (25655, 3, 17),
       (25656, 4, 26),
       (25657, 5, 11),
       (25658, 6, 38),
       (25659, 7, 34),
       (25660, 8, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25661, 9, 14),
       (25662, 10, 33),
       (25663, 11, 25),
       (25664, 12, 21),
       (25665, 13, 14),
       (25716, 27, 15),
       (25666, 14, 28),
       (25667, 15, 20),
       (25668, 16, 18),
       (25669, 17, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25670, 18, 15),
       (25671, 19, 17),
       (25672, 20, 26),
       (25673, 21, 18),
       (25674, 22, 32),
       (25675, 23, 18),
       (25676, 24, 33),
       (25677, 25, 14),
       (25678, 26, 26),
       (25679, 27, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25680, 28, 25),
       (25681, 29, 22),
       (25682, 30, 18),
       (25683, 31, 38),
       (25684, 32, 5),
       (25685, 33, 20),
       (25686, 34, 27),
       (25687, 35, 19),
       (25688, 36, 3),
       (25689, 37, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25690, 1, 21),
       (25691, 2, 17),
       (25692, 3, 21),
       (25693, 4, 22),
       (25694, 5, 20),
       (25695, 6, 11),
       (25696, 7, 22),
       (25697, 8, 25),
       (25698, 9, 23),
       (25699, 10, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25700, 11, 30),
       (25701, 12, 15),
       (25702, 13, 31),
       (25703, 14, 34),
       (25704, 15, 24),
       (25705, 16, 28),
       (25706, 17, 25),
       (25707, 18, 18),
       (25708, 19, 18),
       (25709, 20, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25710, 21, 14),
       (25711, 22, 36),
       (25712, 23, 16),
       (25713, 24, 19),
       (25714, 25, 28),
       (25715, 26, 12),
       (25718, 29, 34),
       (25719, 30, 18),
       (25720, 31, 36),
       (25721, 32, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25722, 33, 16),
       (25723, 34, 24),
       (25724, 35, 22),
       (25726, 37, 11),
       (25727, 38, 14),
       (25728, 39, 31),
       (25729, 40, 21),
       (25730, 41, 20),
       (25731, 42, 15),
       (25732, 43, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25733, 1, 9),
       (25734, 2, 19),
       (25735, 3, 22),
       (25736, 4, 23),
       (25737, 5, 30),
       (25738, 6, 12),
       (25739, 7, 23),
       (25740, 8, 34),
       (25741, 9, 23),
       (25742, 10, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25743, 11, 32),
       (25744, 12, 21),
       (25745, 13, 23),
       (25746, 14, 22),
       (25747, 15, 43),
       (25748, 16, 16),
       (25749, 17, 26),
       (25750, 18, 13),
       (25751, 19, 13),
       (25752, 20, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25753, 21, 28),
       (25754, 22, 41),
       (25755, 23, 22),
       (25756, 24, 25),
       (25757, 25, 11),
       (25758, 26, 31),
       (25759, 27, 21),
       (25760, 28, 15),
       (25761, 29, 27),
       (25762, 30, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25763, 31, 22),
       (25764, 32, 17),
       (25765, 33, 19),
       (25766, 34, 10),
       (25769, 37, 42),
       (25770, 38, 22),
       (25771, 39, 16),
       (25772, 40, 21),
       (25773, 41, 14),
       (25774, 42, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25775, 43, 29),
       (25776, 44, 33),
       (25777, 45, 15),
       (25778, 46, 25),
       (25779, 47, 27),
       (25780, 48, 18),
       (25781, 1, 37),
       (25782, 2, 25),
       (25783, 3, 18),
       (25784, 4, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26130, 9, 12),
       (25785, 5, 22),
       (25786, 6, 23),
       (25787, 7, 11),
       (25788, 8, 17),
       (25789, 9, 31),
       (25790, 10, 33),
       (25791, 11, 21),
       (25792, 12, 16),
       (25793, 13, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25794, 14, 27),
       (25795, 15, 24),
       (25796, 16, 24),
       (25797, 17, 30),
       (25798, 18, 25),
       (25799, 19, 33),
       (25800, 20, 39),
       (25801, 21, 31),
       (25802, 22, 13),
       (25803, 23, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25804, 24, 16),
       (25805, 25, 25),
       (25806, 26, 25),
       (25807, 27, 18),
       (25808, 28, 38),
       (25809, 29, 15),
       (25810, 30, 4),
       (25811, 31, 16),
       (25812, 32, 6),
       (25813, 33, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25814, 34, 17),
       (25815, 35, 25),
       (25816, 36, 25),
       (25817, 37, 35),
       (25818, 38, 19),
       (25819, 39, 13),
       (25820, 40, 11),
       (25821, 41, 16),
       (25822, 42, 22),
       (25823, 43, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25824, 44, 12),
       (25825, 45, 14),
       (25826, 46, 29),
       (25827, 47, 17),
       (25828, 1, 18),
       (25829, 2, 13),
       (25830, 3, 20),
       (25831, 4, 27),
       (25832, 5, 19),
       (25833, 6, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25834, 7, 28),
       (25835, 8, 34),
       (25836, 9, 28),
       (25837, 10, 15),
       (25838, 11, 24),
       (25839, 12, 36),
       (25840, 13, 10),
       (25841, 14, 14),
       (25842, 15, 23),
       (25843, 16, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25844, 17, 14),
       (25845, 18, 10),
       (25846, 19, 9),
       (25847, 20, 17),
       (25848, 21, 35),
       (25849, 22, 16),
       (25850, 23, 31),
       (25851, 24, 37),
       (25852, 25, 30),
       (25853, 26, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25854, 27, 19),
       (25855, 28, 22),
       (25856, 29, 16),
       (25857, 30, 21),
       (25858, 31, 22),
       (25859, 32, 17),
       (25860, 33, 14),
       (25861, 34, 31),
       (25862, 35, 18),
       (25863, 36, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25864, 37, 25),
       (25865, 38, 18),
       (25866, 1, 14),
       (25867, 2, 21),
       (25868, 3, 17),
       (25869, 4, 20),
       (25870, 5, 11),
       (25871, 6, 18),
       (25872, 7, 15),
       (25873, 8, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25874, 9, 13),
       (25875, 10, 33),
       (25876, 11, 29),
       (25877, 12, 14),
       (25878, 13, 18),
       (25879, 14, 15),
       (25880, 15, 20),
       (25881, 16, 20),
       (25882, 17, 21),
       (25883, 18, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25884, 19, 34),
       (25885, 20, 27),
       (25886, 21, 16),
       (25887, 22, 23),
       (25888, 23, 18),
       (25889, 24, 17),
       (25890, 25, 25),
       (25891, 26, 31),
       (25892, 27, 33),
       (25893, 28, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25894, 29, 15),
       (25895, 30, 25),
       (25896, 31, 16),
       (25897, 32, 24),
       (25898, 33, 20),
       (25899, 34, 24),
       (25900, 35, 24),
       (25901, 36, 35),
       (25902, 37, 29),
       (25903, 38, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25904, 39, 22),
       (25905, 40, 19),
       (25906, 41, 18),
       (25907, 42, 20),
       (25908, 43, 12),
       (25909, 44, 26),
       (25910, 45, 20),
       (25911, 46, 17),
       (25912, 47, 30),
       (25913, 48, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25914, 49, 21),
       (25915, 50, 20),
       (25916, 51, 19),
       (29168, 5, 14),
       (25917, 52, 32),
       (25918, 53, 28),
       (25919, 54, 23),
       (25920, 55, 26),
       (25921, 56, 28),
       (25922, 57, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25923, 58, 24),
       (25924, 59, 27),
       (25925, 60, 20),
       (25926, 61, 34),
       (25927, 62, 8),
       (25928, 63, 12),
       (25929, 64, 16),
       (25931, 66, 33),
       (25932, 67, 21),
       (25933, 68, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25934, 69, 20),
       (25935, 70, 22),
       (25936, 71, 20),
       (25937, 1, 14),
       (25938, 2, 31),
       (25939, 3, 21),
       (25940, 4, 18),
       (25941, 5, 25),
       (25942, 6, 14),
       (25943, 7, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25944, 8, 37),
       (25945, 9, 13),
       (25946, 10, 12),
       (25947, 11, 24),
       (25948, 12, 21),
       (25949, 13, 14),
       (25950, 14, 38),
       (25951, 15, 23),
       (25952, 16, 9),
       (25953, 17, 3)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25954, 18, 17),
       (25955, 19, 18),
       (25956, 20, 11),
       (25957, 21, 8),
       (25958, 22, 33),
       (25959, 23, 18),
       (25960, 24, 13),
       (25961, 25, 27),
       (25962, 26, 30),
       (25963, 27, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25964, 28, 22),
       (25965, 29, 29),
       (25966, 30, 19),
       (25967, 31, 18),
       (25969, 33, 31),
       (25970, 34, 23),
       (25971, 35, 30),
       (25972, 36, 13),
       (25973, 37, 13),
       (25974, 38, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25975, 39, 22),
       (25976, 40, 22),
       (25977, 41, 21),
       (25978, 42, 13),
       (25979, 43, 20),
       (25980, 44, 21),
       (25981, 45, 17),
       (25982, 46, 26),
       (25983, 47, 19),
       (25984, 48, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25985, 49, 20),
       (25986, 50, 15),
       (25987, 51, 28),
       (25988, 52, 13),
       (25989, 53, 30),
       (25990, 54, 14),
       (25991, 55, 24),
       (25992, 56, 19),
       (25993, 1, 24),
       (25994, 2, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (25995, 3, 14),
       (25996, 4, 20),
       (25997, 5, 26),
       (25998, 6, 20),
       (25999, 7, 26),
       (26000, 8, 6),
       (26001, 9, 19),
       (26002, 10, 26),
       (26003, 11, 15),
       (26004, 12, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26005, 13, 22),
       (26006, 14, 14),
       (26007, 15, 21),
       (26008, 16, 12),
       (26009, 17, 25),
       (26010, 18, 31),
       (26011, 19, 34),
       (26012, 20, 20),
       (26013, 21, 29),
       (26014, 22, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26015, 23, 26),
       (26016, 24, 28),
       (26017, 25, 22),
       (26018, 26, 16),
       (26019, 27, 22),
       (26020, 28, 21),
       (26021, 29, 29),
       (26022, 30, 28),
       (26023, 31, 17),
       (26024, 32, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26025, 33, 24),
       (26026, 34, 12),
       (26027, 35, 24),
       (26028, 36, 23),
       (26029, 37, 14),
       (26030, 38, 18),
       (26031, 39, 29),
       (26032, 40, 15),
       (26033, 41, 20),
       (26034, 42, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26035, 43, 9),
       (26036, 44, 44),
       (26037, 45, 12),
       (26038, 46, 24),
       (26039, 47, 21),
       (26040, 48, 7),
       (26041, 49, 28),
       (26042, 50, 21),
       (26043, 51, 20),
       (26044, 52, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26045, 53, 9),
       (26046, 1, 18),
       (26047, 2, 9),
       (26048, 3, 18),
       (26049, 4, 13),
       (26050, 5, 14),
       (26051, 6, 12),
       (26052, 7, 20),
       (26053, 8, 16),
       (26054, 9, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26055, 10, 19),
       (26056, 11, 15),
       (26057, 12, 26),
       (26058, 13, 23),
       (26059, 14, 29),
       (26060, 15, 30),
       (26061, 16, 12),
       (26062, 17, 15),
       (26063, 18, 25),
       (26064, 19, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26065, 20, 15),
       (26066, 21, 24),
       (26067, 22, 25),
       (26068, 23, 25),
       (26069, 24, 9),
       (26070, 25, 24),
       (26071, 26, 20),
       (26072, 27, 19),
       (26073, 28, 14),
       (26074, 29, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26075, 30, 23),
       (26076, 31, 23),
       (26077, 32, 23),
       (26078, 33, 41),
       (26079, 34, 16),
       (26080, 35, 13),
       (26081, 36, 16),
       (26082, 37, 12),
       (26083, 38, 31),
       (26084, 39, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26085, 40, 18),
       (26086, 41, 22),
       (26087, 42, 29),
       (26088, 43, 23),
       (26089, 44, 13),
       (26090, 45, 29),
       (26091, 46, 21),
       (26092, 47, 20),
       (26093, 48, 29),
       (26094, 49, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26095, 50, 28),
       (26096, 51, 31),
       (26097, 1, 20),
       (26098, 2, 12),
       (26099, 3, 17),
       (26100, 4, 20),
       (26101, 5, 14),
       (26102, 6, 22),
       (26103, 7, 18),
       (26104, 8, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26105, 9, 37),
       (26106, 10, 32),
       (26107, 11, 22),
       (26108, 12, 25),
       (26109, 13, 16),
       (26110, 14, 21),
       (26111, 15, 32),
       (26112, 16, 24),
       (26113, 17, 16),
       (26114, 18, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26115, 19, 19),
       (26116, 20, 23),
       (26117, 21, 10),
       (26118, 22, 28),
       (26119, 23, 24),
       (26121, 25, 22),
       (26122, 1, 16),
       (26123, 2, 38),
       (26124, 3, 25),
       (26125, 4, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26126, 5, 26),
       (26127, 6, 20),
       (26128, 7, 13),
       (26129, 8, 33),
       (26131, 10, 18),
       (26132, 11, 28),
       (26133, 12, 21),
       (26134, 13, 24),
       (26135, 14, 21),
       (26136, 15, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26137, 16, 26),
       (26138, 17, 23),
       (26139, 18, 32),
       (26140, 19, 28),
       (26141, 20, 22),
       (26142, 21, 25),
       (26143, 22, 22),
       (26144, 23, 23),
       (26145, 24, 9),
       (26146, 25, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26147, 26, 35),
       (26148, 27, 18),
       (26149, 28, 21),
       (26150, 29, 35),
       (26151, 30, 8),
       (26152, 31, 33),
       (26153, 32, 18),
       (26154, 33, 17),
       (26155, 34, 20),
       (26156, 35, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26157, 36, 29),
       (26158, 1, 20),
       (26159, 2, 10),
       (26160, 3, 9),
       (26161, 4, 8),
       (26162, 5, 24),
       (26163, 6, 25),
       (26164, 7, 18),
       (26165, 8, 13),
       (26166, 9, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26167, 10, 40),
       (26168, 11, 25),
       (26169, 12, 23),
       (26170, 13, 17),
       (26171, 14, 36),
       (26172, 15, 23),
       (26173, 16, 12),
       (26174, 17, 23),
       (26175, 18, 22),
       (26176, 19, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26177, 20, 21),
       (26178, 21, 24),
       (26179, 22, 20),
       (26180, 23, 30),
       (26181, 24, 16),
       (26182, 25, 27),
       (26183, 26, 12),
       (26184, 27, 30),
       (26185, 28, 18),
       (26186, 29, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26187, 30, 12),
       (26188, 31, 12),
       (26189, 32, 15),
       (26190, 33, 16),
       (26191, 34, 22),
       (26192, 35, 35),
       (26193, 36, 23),
       (26194, 37, 12),
       (26195, 38, 22),
       (26196, 39, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26197, 40, 21),
       (26198, 41, 9),
       (26199, 42, 32),
       (26200, 43, 13),
       (26201, 44, 15),
       (26202, 45, 31),
       (26203, 46, 27),
       (26204, 47, 37),
       (26205, 48, 18),
       (26206, 49, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26207, 50, 26),
       (26208, 51, 17),
       (26209, 52, 27),
       (26210, 53, 27),
       (26211, 54, 17),
       (26212, 1, 17),
       (26213, 2, 21),
       (26214, 3, 14),
       (26215, 4, 3),
       (26216, 5, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26217, 6, 28),
       (26218, 7, 32),
       (26219, 8, 12),
       (26220, 9, 23),
       (26221, 10, 26),
       (26222, 11, 21),
       (26223, 12, 18),
       (26224, 13, 23),
       (26225, 14, 26),
       (26226, 15, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26227, 16, 17),
       (26228, 17, 14),
       (26229, 18, 32),
       (26230, 19, 42),
       (26231, 20, 28),
       (26232, 21, 23),
       (26233, 22, 18),
       (26234, 23, 26),
       (26235, 24, 34),
       (26236, 25, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26237, 26, 22),
       (26238, 27, 16),
       (26239, 28, 21),
       (26240, 29, 26),
       (26241, 30, 32),
       (26242, 31, 12),
       (26243, 32, 22),
       (26244, 33, 14),
       (26245, 34, 21),
       (26246, 35, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26247, 36, 40),
       (26248, 37, 26),
       (26249, 38, 18),
       (26250, 39, 24),
       (26251, 40, 13),
       (26252, 41, 7),
       (26253, 42, 15),
       (26254, 43, 26),
       (26255, 44, 23),
       (26256, 45, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26257, 46, 15),
       (26258, 47, 14),
       (26259, 1, 22),
       (26260, 2, 20),
       (26261, 3, 15),
       (26262, 4, 12),
       (26263, 5, 29),
       (26264, 6, 16),
       (26265, 7, 22),
       (26266, 8, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26267, 9, 21),
       (26268, 10, 26),
       (26269, 11, 28),
       (26318, 60, 20),
       (26270, 12, 23),
       (26271, 13, 26),
       (26272, 14, 25),
       (26273, 15, 26),
       (26274, 16, 12),
       (26372, 43, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26275, 17, 28),
       (26276, 18, 14),
       (26277, 19, 30),
       (26278, 20, 12),
       (26279, 21, 23),
       (26280, 22, 42),
       (26281, 23, 23),
       (26282, 24, 26),
       (26283, 25, 22),
       (26284, 26, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26285, 27, 34),
       (26286, 28, 18),
       (26287, 29, 22),
       (26288, 30, 23),
       (26289, 31, 22),
       (26290, 32, 35),
       (26291, 33, 20),
       (26292, 34, 12),
       (26293, 35, 28),
       (26294, 36, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26295, 37, 25),
       (26296, 38, 22),
       (26297, 39, 33),
       (26298, 40, 34),
       (26299, 41, 20),
       (26300, 42, 30),
       (26301, 43, 11),
       (26302, 44, 25),
       (26303, 45, 29),
       (26304, 46, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26305, 47, 13),
       (26306, 48, 7),
       (26307, 49, 12),
       (26308, 50, 20),
       (26309, 51, 41),
       (26310, 52, 19),
       (26311, 53, 32),
       (26312, 54, 23),
       (26313, 55, 13),
       (26314, 56, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26315, 57, 26),
       (26316, 58, 27),
       (26317, 59, 13),
       (26319, 61, 21),
       (26320, 62, 17),
       (26321, 63, 25),
       (26322, 64, 30),
       (26323, 65, 28),
       (26324, 66, 15),
       (26325, 67, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26326, 68, 18),
       (26327, 69, 15),
       (26328, 70, 18),
       (26329, 71, 24),
       (26330, 1, 23),
       (26331, 2, 14),
       (26332, 3, 24),
       (26333, 4, 25),
       (26334, 5, 10),
       (26335, 6, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26336, 7, 20),
       (26337, 8, 21),
       (26338, 9, 13),
       (26339, 10, 24),
       (26340, 11, 14),
       (26341, 12, 28),
       (26342, 13, 13),
       (26343, 14, 19),
       (26344, 15, 14),
       (26345, 16, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26346, 17, 26),
       (26347, 18, 31),
       (26348, 19, 22),
       (26349, 20, 13),
       (26350, 21, 17),
       (26351, 22, 24),
       (26352, 23, 34),
       (26353, 24, 10),
       (26354, 25, 17),
       (26355, 26, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26356, 27, 20),
       (26357, 28, 37),
       (26358, 29, 13),
       (26359, 30, 22),
       (26360, 31, 29),
       (26361, 32, 23),
       (26362, 33, 20),
       (26363, 34, 17),
       (26364, 35, 31),
       (26365, 36, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26366, 37, 28),
       (26367, 38, 20),
       (26368, 39, 30),
       (26717, 17, 12),
       (26369, 40, 20),
       (26370, 41, 18),
       (26371, 42, 23),
       (26374, 45, 22),
       (26375, 46, 8),
       (26376, 47, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26377, 48, 13),
       (26378, 49, 11),
       (26379, 50, 15),
       (26380, 51, 18),
       (26381, 52, 22),
       (26382, 53, 11),
       (26383, 1, 9),
       (26384, 2, 26),
       (26385, 3, 20),
       (26386, 4, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26387, 5, 17),
       (26388, 6, 27),
       (26389, 7, 30),
       (26390, 8, 14),
       (26391, 9, 34),
       (26392, 10, 19),
       (26393, 11, 23),
       (26394, 12, 32),
       (26395, 13, 17),
       (26396, 14, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26397, 15, 10),
       (26398, 16, 23),
       (26399, 17, 17),
       (26400, 18, 19),
       (26401, 19, 29),
       (26402, 20, 26),
       (26403, 21, 27),
       (26404, 22, 18),
       (26405, 23, 25),
       (26406, 24, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26407, 25, 25),
       (26408, 26, 33),
       (26409, 27, 12),
       (26410, 28, 38),
       (26411, 29, 26),
       (26412, 30, 10),
       (26413, 31, 23),
       (26414, 32, 14),
       (26415, 33, 28),
       (26416, 34, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26417, 35, 16),
       (26418, 36, 14),
       (26419, 37, 24),
       (26420, 38, 24),
       (26421, 39, 28),
       (26422, 40, 25),
       (26423, 41, 24),
       (26424, 42, 34),
       (26425, 43, 15),
       (26426, 44, 59)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26427, 45, 11),
       (26428, 46, 18),
       (26429, 47, 24),
       (26430, 48, 21),
       (26431, 49, 17),
       (26432, 50, 15),
       (26433, 51, 18),
       (26434, 52, 34),
       (26435, 53, 18),
       (26436, 54, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26437, 55, 36),
       (26438, 56, 16),
       (26439, 57, 19),
       (26440, 58, 17),
       (26441, 59, 20),
       (26442, 1, 14),
       (26443, 2, 21),
       (26444, 3, 23),
       (26445, 4, 23),
       (26446, 5, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26447, 6, 24),
       (26448, 7, 26),
       (26449, 8, 24),
       (26450, 9, 19),
       (26451, 10, 12),
       (26452, 11, 34),
       (26453, 12, 14),
       (26454, 13, 11),
       (26455, 14, 18),
       (26456, 15, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26457, 16, 40),
       (26458, 17, 27),
       (26459, 18, 31),
       (26460, 19, 21),
       (26461, 20, 19),
       (26462, 21, 28),
       (26463, 22, 35),
       (26464, 23, 11),
       (26465, 24, 28),
       (26466, 25, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26467, 26, 16),
       (26468, 27, 26),
       (26469, 28, 17),
       (26470, 29, 20),
       (26471, 30, 26),
       (26472, 31, 24),
       (26473, 32, 20),
       (26474, 33, 12),
       (26475, 34, 23),
       (26476, 35, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26477, 36, 16),
       (26478, 37, 18),
       (26479, 38, 11),
       (26480, 39, 26),
       (26481, 40, 20),
       (26482, 41, 23),
       (26483, 1, 34),
       (26484, 2, 15),
       (26485, 3, 24),
       (26486, 4, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26487, 5, 21),
       (26488, 6, 20),
       (26489, 7, 20),
       (26490, 8, 17),
       (26491, 9, 27),
       (26492, 10, 26),
       (26493, 11, 16),
       (26494, 12, 34),
       (26495, 13, 15),
       (26496, 14, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26497, 15, 21),
       (26498, 16, 31),
       (26499, 17, 19),
       (26500, 18, 37),
       (26501, 19, 13),
       (26502, 20, 17),
       (26503, 21, 23),
       (26504, 22, 11),
       (26505, 23, 15),
       (26506, 24, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26507, 25, 26),
       (26508, 26, 12),
       (26509, 27, 14),
       (26510, 28, 23),
       (26511, 29, 27),
       (26512, 30, 7),
       (26513, 31, 10),
       (26514, 32, 23),
       (26515, 33, 26),
       (26516, 34, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26517, 35, 19),
       (26518, 36, 25),
       (26519, 37, 13),
       (26520, 38, 31),
       (26521, 39, 15),
       (26522, 40, 23),
       (28009, 17, 10),
       (26523, 41, 25),
       (26524, 42, 7),
       (26525, 1, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26526, 2, 24),
       (26527, 3, 16),
       (26528, 4, 29),
       (26529, 5, 10),
       (26530, 6, 22),
       (26531, 7, 15),
       (26532, 8, 21),
       (26533, 9, 29),
       (26534, 10, 18),
       (26535, 11, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26536, 12, 16),
       (26537, 13, 19),
       (26538, 14, 11),
       (26539, 15, 25),
       (26540, 16, 22),
       (26541, 17, 17),
       (26542, 18, 11),
       (26543, 19, 18),
       (26544, 20, 21),
       (26545, 21, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26546, 22, 17),
       (26547, 23, 10),
       (26548, 24, 19),
       (26549, 25, 24),
       (26550, 26, 14),
       (26551, 27, 26),
       (26552, 28, 24),
       (26553, 29, 13),
       (26554, 30, 21),
       (26555, 31, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26556, 32, 31),
       (26557, 33, 24),
       (26558, 34, 16),
       (26559, 35, 3),
       (26560, 36, 10),
       (26561, 37, 28),
       (26562, 38, 22),
       (26563, 39, 33),
       (26564, 40, 21),
       (26565, 41, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26566, 42, 29),
       (26567, 43, 16),
       (26568, 44, 33),
       (26569, 45, 19),
       (26570, 46, 19),
       (26571, 47, 22),
       (26572, 48, 27),
       (26573, 49, 21),
       (26718, 18, 17),
       (26574, 50, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26575, 51, 23),
       (26576, 52, 24),
       (26577, 53, 16),
       (26578, 54, 32),
       (26579, 55, 26),
       (26580, 56, 28),
       (26581, 57, 28),
       (26582, 1, 20),
       (26583, 2, 23),
       (26584, 3, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26585, 4, 13),
       (26586, 5, 16),
       (26587, 6, 28),
       (26588, 7, 15),
       (26589, 8, 15),
       (26590, 9, 35),
       (26591, 10, 15),
       (26592, 11, 17),
       (26593, 12, 22),
       (26594, 13, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26595, 14, 14),
       (26596, 15, 16),
       (26597, 16, 34),
       (26598, 17, 24),
       (26599, 18, 21),
       (26600, 19, 19),
       (26601, 20, 16),
       (26602, 21, 21),
       (26603, 22, 14),
       (26604, 23, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26605, 24, 31),
       (26606, 25, 23),
       (26607, 26, 30),
       (26608, 27, 26),
       (26609, 28, 24),
       (26610, 29, 23),
       (26611, 30, 17),
       (26612, 31, 18),
       (26613, 32, 17),
       (26614, 33, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26615, 34, 37),
       (26616, 35, 38),
       (26617, 36, 29),
       (26618, 37, 17),
       (26619, 38, 31),
       (26620, 39, 13),
       (26621, 40, 31),
       (26622, 41, 15),
       (26623, 42, 29),
       (26624, 43, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26625, 44, 21),
       (26627, 46, 20),
       (26628, 47, 29),
       (26629, 48, 29),
       (26630, 49, 28),
       (26631, 50, 27),
       (26632, 1, 41),
       (26633, 2, 21),
       (26634, 3, 26),
       (26635, 4, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26636, 5, 26),
       (26637, 6, 17),
       (26638, 7, 19),
       (26639, 8, 25),
       (26640, 9, 18),
       (26641, 10, 28),
       (26642, 11, 17),
       (26643, 12, 28),
       (26644, 13, 15),
       (26645, 14, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26646, 15, 19),
       (26647, 16, 26),
       (26648, 17, 13),
       (26649, 18, 31),
       (26650, 19, 25),
       (26651, 20, 25),
       (26652, 21, 29),
       (26653, 22, 12),
       (26654, 23, 17),
       (26655, 24, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26656, 25, 17),
       (26657, 26, 37),
       (26658, 27, 20),
       (26659, 28, 16),
       (26660, 29, 33),
       (26661, 30, 14),
       (26662, 31, 22),
       (26663, 32, 14),
       (26664, 33, 34),
       (26665, 34, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26666, 35, 19),
       (26667, 36, 25),
       (26668, 37, 21),
       (26669, 38, 28),
       (26670, 1, 14),
       (26671, 2, 28),
       (26672, 3, 29),
       (26673, 4, 9),
       (26674, 5, 17),
       (26675, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26676, 7, 22),
       (26677, 8, 14),
       (26678, 9, 36),
       (26679, 10, 36),
       (26680, 11, 23),
       (26681, 12, 35),
       (26682, 13, 22),
       (26683, 14, 13),
       (26684, 15, 10),
       (26685, 16, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26686, 17, 33),
       (26687, 18, 11),
       (26688, 19, 23),
       (26689, 20, 21),
       (26690, 21, 37),
       (26691, 22, 25),
       (26692, 23, 35),
       (26693, 24, 26),
       (26694, 25, 13),
       (26695, 26, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26696, 27, 32),
       (26697, 28, 37),
       (26698, 29, 22),
       (26699, 30, 22),
       (26700, 31, 28),
       (26701, 1, 12),
       (26702, 2, 28),
       (26703, 3, 15),
       (26704, 4, 31),
       (26705, 5, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26706, 6, 32),
       (26707, 7, 23),
       (26708, 8, 18),
       (26709, 9, 18),
       (26710, 10, 26),
       (26711, 11, 23),
       (26712, 12, 16),
       (26713, 13, 18),
       (26714, 14, 14),
       (26715, 15, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26716, 16, 42),
       (26719, 19, 34),
       (26720, 20, 36),
       (26721, 21, 23),
       (26722, 22, 24),
       (26724, 24, 32),
       (26725, 25, 24),
       (26726, 26, 32),
       (26727, 27, 15),
       (26728, 1, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26729, 2, 25),
       (26730, 3, 16),
       (26731, 4, 40),
       (26732, 5, 19),
       (26733, 6, 15),
       (26734, 7, 39),
       (26735, 8, 21),
       (26736, 9, 9),
       (26737, 10, 15),
       (26738, 11, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26739, 12, 16),
       (26740, 13, 48),
       (26741, 14, 17),
       (26742, 15, 23),
       (26743, 16, 20),
       (26744, 17, 44),
       (26745, 18, 19),
       (26746, 19, 43),
       (26747, 20, 30),
       (26748, 21, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26749, 22, 27),
       (26750, 23, 33),
       (26751, 24, 21),
       (26752, 25, 33),
       (26753, 26, 24),
       (26754, 27, 22),
       (26755, 28, 23),
       (26756, 29, 14),
       (26757, 30, 28),
       (26758, 31, 8)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26759, 32, 35),
       (26760, 33, 31),
       (26761, 1, 28),
       (26762, 2, 23),
       (26763, 3, 24),
       (26764, 4, 18),
       (26765, 5, 23),
       (26766, 6, 31),
       (26767, 7, 15),
       (26768, 8, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26769, 9, 23),
       (26770, 10, 19),
       (26771, 11, 41),
       (26772, 12, 38),
       (26773, 13, 25),
       (26774, 14, 27),
       (26775, 15, 22),
       (26776, 16, 15),
       (26777, 17, 10),
       (26778, 18, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26779, 19, 17),
       (26780, 20, 19),
       (26781, 21, 35),
       (26782, 22, 24),
       (26783, 23, 33),
       (26784, 24, 39),
       (26785, 25, 21),
       (26786, 26, 29),
       (26787, 1, 29),
       (26788, 2, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26789, 3, 26),
       (26790, 4, 21),
       (26791, 5, 24),
       (26792, 6, 18),
       (26793, 7, 15),
       (26794, 8, 20),
       (26795, 9, 21),
       (26796, 10, 29),
       (26797, 11, 26),
       (26798, 12, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26799, 13, 21),
       (26800, 14, 23),
       (26801, 15, 32),
       (26802, 16, 34),
       (26803, 17, 25),
       (27017, 20, 16),
       (26804, 18, 35),
       (26805, 19, 14),
       (26806, 20, 32),
       (26807, 21, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26808, 22, 25),
       (26896, 28, 12),
       (26809, 23, 21),
       (26810, 24, 11),
       (26811, 25, 28),
       (26812, 26, 30),
       (26813, 27, 10),
       (26814, 28, 33),
       (26815, 29, 16),
       (26816, 30, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26817, 31, 33),
       (26818, 32, 21),
       (26819, 33, 22),
       (26820, 34, 16),
       (26821, 35, 22),
       (26822, 36, 39),
       (26823, 37, 55),
       (26824, 38, 31),
       (26825, 39, 29),
       (26826, 40, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26827, 1, 9),
       (26828, 2, 22),
       (26829, 3, 20),
       (26830, 4, 28),
       (26831, 5, 22),
       (26832, 6, 36),
       (26833, 7, 25),
       (26834, 8, 12),
       (26835, 9, 21),
       (26836, 10, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26837, 11, 28),
       (26838, 12, 35),
       (26839, 13, 28),
       (26840, 14, 24),
       (26841, 15, 32),
       (26842, 16, 11),
       (26843, 17, 29),
       (26844, 18, 19),
       (26845, 19, 25),
       (26846, 20, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26847, 21, 28),
       (26848, 22, 10),
       (26849, 23, 36),
       (26850, 24, 43),
       (26851, 25, 31),
       (26852, 26, 24),
       (26853, 27, 22),
       (26854, 28, 20),
       (26855, 29, 27),
       (26856, 30, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26857, 31, 47),
       (26858, 32, 21),
       (26859, 33, 19),
       (26860, 34, 20),
       (26861, 35, 26),
       (26862, 36, 21),
       (26863, 37, 14),
       (26864, 38, 45),
       (26865, 39, 27),
       (26866, 40, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26867, 41, 26),
       (26868, 42, 18),
       (26869, 1, 30),
       (26870, 2, 40),
       (26871, 3, 15),
       (26872, 4, 18),
       (26873, 5, 17),
       (26874, 6, 20),
       (26875, 7, 23),
       (26876, 8, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26877, 9, 16),
       (26878, 10, 11),
       (26879, 11, 21),
       (26880, 12, 25),
       (26881, 13, 30),
       (26882, 14, 21),
       (26883, 15, 42),
       (26884, 16, 21),
       (26885, 17, 40),
       (26886, 18, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26887, 19, 45),
       (26888, 20, 26),
       (26889, 21, 22),
       (26890, 22, 20),
       (26891, 23, 19),
       (26892, 24, 16),
       (26893, 25, 41),
       (26894, 26, 31),
       (26895, 27, 31),
       (26897, 29, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26898, 30, 20),
       (26899, 31, 28),
       (26900, 1, 23),
       (26901, 2, 27),
       (26902, 3, 33),
       (26903, 4, 21),
       (26904, 5, 16),
       (26905, 6, 37),
       (26906, 7, 40),
       (26907, 8, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26908, 9, 22),
       (26909, 10, 14),
       (26910, 11, 34),
       (26911, 12, 28),
       (26912, 13, 14),
       (26913, 14, 22),
       (26914, 15, 42),
       (26915, 16, 35),
       (26916, 17, 52),
       (26917, 18, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26918, 19, 27),
       (26919, 20, 30),
       (26920, 21, 15),
       (26921, 22, 22),
       (26922, 23, 41),
       (26923, 24, 23),
       (26924, 25, 36),
       (26925, 1, 19),
       (26926, 2, 27),
       (26927, 3, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27060, 37, 17),
       (26928, 4, 31),
       (26929, 5, 20),
       (26930, 6, 22),
       (26931, 7, 25),
       (26932, 8, 37),
       (26933, 9, 25),
       (26934, 10, 21),
       (26935, 11, 37),
       (26936, 12, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26937, 13, 47),
       (26938, 14, 23),
       (26939, 15, 30),
       (26940, 16, 32),
       (26941, 17, 14),
       (26942, 18, 29),
       (26943, 19, 27),
       (26944, 20, 28),
       (26945, 21, 24),
       (26946, 22, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26947, 23, 15),
       (26948, 24, 25),
       (26949, 25, 23),
       (26950, 26, 21),
       (26951, 1, 17),
       (26952, 2, 27),
       (26953, 3, 21),
       (26954, 4, 23),
       (26955, 5, 15),
       (26956, 6, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26957, 7, 17),
       (26958, 8, 15),
       (26959, 9, 19),
       (26960, 10, 22),
       (26961, 11, 16),
       (26962, 12, 16),
       (26963, 13, 11),
       (26964, 14, 40),
       (26965, 15, 19),
       (26966, 16, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26967, 17, 43),
       (26968, 18, 24),
       (26969, 19, 23),
       (26970, 20, 25),
       (26971, 21, 18),
       (26972, 22, 40),
       (26973, 23, 24),
       (26974, 24, 23),
       (26975, 25, 27),
       (26976, 26, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26977, 27, 20),
       (26978, 28, 20),
       (26979, 29, 28),
       (26980, 30, 30),
       (26981, 31, 24),
       (26983, 33, 32),
       (26984, 34, 24),
       (26985, 35, 11),
       (26986, 36, 24),
       (26987, 37, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26988, 38, 37),
       (26989, 39, 30),
       (26990, 40, 18),
       (26991, 41, 22),
       (26992, 42, 19),
       (26993, 43, 17),
       (26994, 44, 12),
       (26995, 45, 19),
       (26996, 46, 28),
       (26997, 47, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (26998, 1, 20),
       (26999, 2, 39),
       (27000, 3, 17),
       (27001, 4, 14),
       (27002, 5, 13),
       (27003, 6, 27),
       (27004, 7, 23),
       (27005, 8, 24),
       (27006, 9, 11),
       (27007, 10, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27008, 11, 25),
       (27009, 12, 43),
       (27010, 13, 39),
       (27011, 14, 19),
       (27012, 15, 17),
       (27013, 16, 38),
       (27014, 17, 17),
       (27015, 18, 22),
       (27016, 19, 28),
       (27018, 21, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27019, 22, 35),
       (27020, 23, 23),
       (27021, 24, 24),
       (27022, 25, 34),
       (27023, 26, 25),
       (27024, 1, 22),
       (27025, 2, 18),
       (27026, 3, 20),
       (27027, 4, 22),
       (27028, 5, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27029, 6, 26),
       (27030, 7, 23),
       (27031, 8, 18),
       (27032, 9, 24),
       (27033, 10, 43),
       (27034, 11, 22),
       (27035, 12, 27),
       (27036, 13, 35),
       (27037, 14, 17),
       (27038, 15, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27039, 16, 33),
       (27040, 17, 24),
       (27041, 18, 20),
       (27042, 19, 29),
       (27043, 20, 13),
       (27044, 21, 33),
       (27045, 22, 18),
       (27046, 23, 25),
       (27047, 24, 38),
       (27048, 25, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27049, 26, 23),
       (27050, 27, 33),
       (27051, 28, 14),
       (27052, 29, 20),
       (27053, 30, 25),
       (27054, 31, 33),
       (27055, 32, 37),
       (27056, 33, 24),
       (27057, 34, 32),
       (27058, 35, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27059, 36, 25),
       (27062, 2, 27),
       (27063, 3, 28),
       (27064, 4, 42),
       (27065, 5, 22),
       (27066, 6, 18),
       (27067, 7, 21),
       (27068, 8, 23),
       (27069, 9, 41),
       (27070, 10, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27071, 11, 16),
       (27072, 12, 28),
       (27073, 13, 17),
       (27074, 14, 16),
       (27075, 15, 35),
       (27076, 16, 31),
       (27077, 17, 27),
       (27079, 19, 19),
       (27080, 20, 19),
       (27081, 21, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27082, 22, 17),
       (27083, 23, 28),
       (27084, 24, 25),
       (27085, 25, 26),
       (27086, 26, 24),
       (27087, 27, 19),
       (27088, 28, 31),
       (27089, 29, 16),
       (27090, 30, 17),
       (27091, 31, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27092, 32, 23),
       (27093, 33, 17),
       (27094, 34, 35),
       (27095, 35, 24),
       (27096, 36, 41),
       (27097, 37, 37),
       (27098, 38, 29),
       (27099, 39, 26),
       (27100, 40, 33),
       (27101, 41, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27102, 42, 22),
       (27103, 1, 33),
       (27148, 31, 25),
       (27104, 2, 29),
       (27105, 3, 28),
       (27106, 4, 15),
       (27107, 5, 38),
       (27108, 6, 18),
       (27109, 7, 29),
       (27110, 8, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27111, 9, 36),
       (27112, 10, 17),
       (27113, 11, 19),
       (27114, 12, 26),
       (27115, 13, 22),
       (27116, 14, 26),
       (27117, 15, 25),
       (27118, 1, 10),
       (27119, 2, 27),
       (27120, 3, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27121, 4, 33),
       (27122, 5, 44),
       (27123, 6, 31),
       (27124, 7, 29),
       (27125, 8, 29),
       (27126, 9, 18),
       (27127, 10, 31),
       (27128, 11, 20),
       (27129, 12, 19),
       (27130, 13, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27131, 14, 19),
       (27132, 15, 14),
       (27133, 16, 28),
       (27134, 17, 22),
       (27135, 18, 12),
       (27136, 19, 27),
       (27137, 20, 22),
       (27138, 21, 20),
       (27139, 22, 21),
       (27140, 23, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27141, 24, 20),
       (27142, 25, 21),
       (27143, 26, 32),
       (27144, 27, 22),
       (27145, 28, 11),
       (27146, 29, 21),
       (27147, 30, 26),
       (27149, 32, 25),
       (27150, 33, 22),
       (27151, 34, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27152, 35, 40),
       (27153, 36, 24),
       (27154, 37, 27),
       (27155, 38, 35),
       (27156, 39, 22),
       (27157, 40, 35),
       (27158, 41, 24),
       (27159, 42, 42),
       (27160, 43, 32),
       (27161, 44, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27162, 45, 36),
       (27163, 46, 20),
       (27164, 47, 7),
       (27165, 48, 16),
       (27166, 49, 33),
       (27167, 50, 9),
       (27168, 51, 23),
       (27169, 52, 33),
       (27170, 53, 16),
       (27171, 54, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27172, 55, 29),
       (27173, 56, 21),
       (27174, 57, 20),
       (27175, 58, 28),
       (27176, 59, 16),
       (27177, 60, 28),
       (27178, 1, 40),
       (27179, 2, 12),
       (27180, 3, 20),
       (27181, 4, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27182, 5, 16),
       (27183, 6, 27),
       (27184, 7, 29),
       (27185, 8, 9),
       (27186, 9, 31),
       (27187, 10, 25),
       (27188, 11, 19),
       (27189, 12, 27),
       (27190, 13, 23),
       (27191, 14, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28010, 18, 10),
       (27192, 15, 17),
       (27193, 16, 23),
       (27194, 17, 14),
       (27195, 18, 23),
       (27196, 19, 20),
       (27197, 20, 23),
       (27198, 21, 18),
       (27199, 22, 22),
       (27200, 23, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27201, 24, 25),
       (27202, 25, 27),
       (27203, 26, 31),
       (27204, 27, 36),
       (27205, 28, 16),
       (27206, 29, 15),
       (27207, 30, 20),
       (27208, 31, 24),
       (27209, 32, 37),
       (27210, 33, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27211, 34, 23),
       (27212, 35, 15),
       (27213, 36, 29),
       (27214, 37, 3),
       (27215, 38, 26),
       (27216, 39, 32),
       (27217, 40, 23),
       (27218, 1, 19),
       (27219, 2, 32),
       (27220, 3, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27221, 4, 20),
       (27222, 5, 17),
       (27223, 6, 18),
       (27224, 7, 17),
       (27225, 8, 28),
       (27226, 9, 14),
       (27227, 10, 29),
       (27228, 11, 36),
       (27229, 12, 23),
       (27230, 13, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27231, 14, 18),
       (27232, 15, 32),
       (27233, 16, 17),
       (27234, 17, 48),
       (27235, 18, 23),
       (27236, 19, 20),
       (27237, 20, 16),
       (27238, 21, 44),
       (27239, 22, 22),
       (27240, 23, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27241, 24, 22),
       (27242, 25, 20),
       (27243, 26, 30),
       (27244, 27, 44),
       (27245, 28, 13),
       (27246, 29, 25),
       (27247, 30, 19),
       (27248, 31, 33),
       (27249, 32, 23),
       (27250, 33, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27251, 34, 20),
       (27252, 35, 18),
       (27253, 36, 29),
       (27254, 37, 28),
       (27255, 38, 29),
       (27256, 39, 42),
       (27257, 40, 34),
       (27258, 41, 21),
       (27259, 42, 14),
       (27260, 43, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27261, 1, 21),
       (27262, 2, 25),
       (27263, 3, 30),
       (27264, 4, 34),
       (27265, 5, 15),
       (27266, 6, 15),
       (27267, 7, 29),
       (27268, 8, 13),
       (27269, 9, 29),
       (27270, 10, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27271, 11, 26),
       (27272, 12, 19),
       (27273, 13, 13),
       (27274, 14, 18),
       (27275, 15, 19),
       (27276, 16, 15),
       (27277, 17, 37),
       (27278, 18, 14),
       (27279, 19, 18),
       (27280, 20, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27281, 21, 25),
       (27326, 18, 26),
       (27282, 22, 47),
       (27283, 23, 29),
       (27284, 24, 24),
       (27285, 25, 22),
       (27286, 26, 15),
       (27287, 27, 15),
       (27288, 28, 49),
       (27289, 29, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27290, 30, 31),
       (27291, 31, 20),
       (27292, 32, 27),
       (27293, 33, 40),
       (27294, 34, 20),
       (27295, 35, 16),
       (27296, 36, 24),
       (27297, 37, 21),
       (27298, 38, 36),
       (27299, 39, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27300, 40, 15),
       (27301, 41, 30),
       (27302, 42, 32),
       (27303, 43, 23),
       (27304, 44, 18),
       (27305, 45, 31),
       (27306, 46, 14),
       (27307, 47, 23),
       (27308, 48, 22),
       (27309, 1, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27310, 2, 18),
       (27311, 3, 13),
       (27312, 4, 13),
       (27313, 5, 40),
       (27314, 6, 30),
       (27315, 7, 15),
       (27316, 8, 18),
       (27317, 9, 19),
       (27318, 10, 14),
       (27319, 11, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27320, 12, 27),
       (27321, 13, 27),
       (27322, 14, 17),
       (27323, 15, 20),
       (27324, 16, 26),
       (27325, 17, 32),
       (27327, 19, 32),
       (27328, 20, 28),
       (27329, 21, 20),
       (27330, 22, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27331, 23, 31),
       (27332, 24, 24),
       (27333, 25, 11),
       (27334, 26, 44),
       (27335, 27, 13),
       (27336, 28, 35),
       (27337, 29, 21),
       (27338, 30, 17),
       (27339, 1, 18),
       (27340, 2, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27341, 3, 24),
       (27342, 4, 34),
       (27343, 5, 20),
       (27344, 6, 31),
       (27345, 7, 40),
       (27346, 8, 31),
       (27347, 9, 27),
       (27348, 10, 48),
       (27349, 11, 44),
       (27350, 12, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27351, 13, 18),
       (27352, 14, 26),
       (27353, 15, 25),
       (27354, 16, 16),
       (27355, 17, 47),
       (27356, 18, 21),
       (27357, 19, 36),
       (27358, 20, 44),
       (27359, 21, 23),
       (27360, 22, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27361, 23, 28),
       (27362, 24, 9),
       (27363, 25, 22),
       (27364, 1, 37),
       (27365, 2, 27),
       (27366, 3, 18),
       (27367, 4, 21),
       (27368, 5, 27),
       (27369, 6, 27),
       (27370, 7, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27371, 8, 23),
       (27372, 9, 18),
       (27373, 10, 33),
       (27374, 11, 47),
       (27375, 12, 19),
       (27376, 13, 25),
       (27377, 14, 25),
       (27378, 15, 33),
       (27379, 16, 20),
       (27380, 17, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27381, 18, 19),
       (27382, 19, 28),
       (27383, 20, 13),
       (27384, 21, 31),
       (27385, 22, 42),
       (27386, 23, 17),
       (27387, 24, 19),
       (27388, 25, 38),
       (27389, 26, 25),
       (27390, 27, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27391, 28, 21),
       (27392, 29, 26),
       (27394, 31, 27),
       (27395, 32, 14),
       (27396, 33, 35),
       (27397, 34, 36),
       (27398, 35, 18),
       (27399, 36, 26),
       (27400, 37, 10),
       (27401, 38, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27402, 39, 25),
       (27403, 40, 14),
       (27404, 41, 31),
       (27405, 42, 19),
       (27406, 43, 33),
       (27407, 44, 18),
       (27408, 45, 24),
       (27409, 46, 43),
       (27410, 47, 32),
       (27411, 48, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27412, 49, 14),
       (27413, 50, 35),
       (27414, 51, 16),
       (27415, 52, 12),
       (27416, 1, 32),
       (27417, 2, 22),
       (27418, 3, 31),
       (27419, 4, 20),
       (27420, 5, 27),
       (27421, 6, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27422, 7, 7),
       (27423, 8, 24),
       (27424, 9, 21),
       (27425, 10, 17),
       (27426, 11, 33),
       (27427, 12, 15),
       (27428, 13, 27),
       (27429, 14, 22),
       (27430, 15, 51),
       (27431, 16, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27432, 17, 30),
       (27433, 18, 15),
       (27434, 19, 30),
       (27435, 20, 28),
       (27436, 21, 26),
       (27437, 22, 27),
       (27438, 23, 28),
       (27439, 24, 10),
       (27440, 25, 15),
       (27441, 26, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27442, 27, 34),
       (27443, 28, 10),
       (27444, 1, 26),
       (27445, 2, 39),
       (27446, 3, 32),
       (27447, 4, 31),
       (27448, 5, 31),
       (27449, 6, 15),
       (27450, 7, 43),
       (27451, 8, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27452, 9, 15),
       (27622, 36, 19),
       (27453, 10, 31),
       (27454, 11, 21),
       (27455, 12, 27),
       (27456, 13, 15),
       (27457, 14, 20),
       (27458, 15, 14),
       (27459, 16, 33),
       (27460, 17, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27461, 18, 12),
       (27462, 19, 18),
       (27463, 20, 26),
       (27464, 21, 22),
       (27465, 22, 42),
       (27466, 23, 28),
       (27467, 24, 27),
       (27468, 25, 26),
       (27469, 26, 15),
       (27470, 27, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27471, 28, 23),
       (27472, 29, 34),
       (27473, 30, 21),
       (27474, 31, 12),
       (27475, 32, 18),
       (27476, 33, 24),
       (27477, 34, 3),
       (27478, 35, 20),
       (27479, 36, 33),
       (27480, 37, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27481, 38, 25),
       (27482, 39, 27),
       (27483, 40, 19),
       (27484, 41, 11),
       (27485, 1, 32),
       (27486, 2, 16),
       (27487, 3, 35),
       (27488, 4, 31),
       (27489, 5, 14),
       (27490, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27491, 7, 23),
       (27492, 8, 10),
       (27493, 9, 28),
       (27494, 10, 28),
       (27495, 11, 19),
       (27496, 12, 29),
       (27497, 13, 38),
       (27498, 14, 38),
       (27499, 15, 35),
       (27500, 16, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27501, 17, 28),
       (27502, 18, 40),
       (27503, 19, 30),
       (27504, 20, 21),
       (27505, 21, 19),
       (27506, 22, 24),
       (27507, 23, 22),
       (27508, 24, 21),
       (27509, 25, 21),
       (27510, 26, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27511, 27, 30),
       (27512, 28, 18),
       (27513, 29, 19),
       (27514, 30, 15),
       (27515, 31, 18),
       (27516, 32, 18),
       (27517, 33, 23),
       (27518, 34, 25),
       (27519, 35, 16),
       (27520, 36, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27521, 37, 41),
       (27522, 38, 20),
       (27523, 39, 23),
       (27524, 40, 27),
       (27525, 1, 21),
       (27526, 2, 22),
       (27527, 3, 32),
       (27528, 4, 29),
       (27529, 5, 42),
       (27530, 6, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27531, 7, 23),
       (27532, 8, 17),
       (27533, 9, 16),
       (27534, 10, 27),
       (27535, 11, 31),
       (27536, 12, 20),
       (27537, 13, 31),
       (27538, 14, 24),
       (27623, 37, 19),
       (27539, 15, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27540, 16, 23),
       (27541, 17, 24),
       (27542, 18, 38),
       (27543, 19, 27),
       (27544, 20, 18),
       (27545, 21, 27),
       (27546, 22, 26),
       (27547, 23, 37),
       (27548, 24, 25),
       (27549, 25, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27550, 26, 30),
       (27551, 27, 26),
       (27552, 28, 27),
       (27553, 29, 30),
       (27554, 30, 19),
       (27555, 31, 41),
       (27556, 32, 24),
       (27557, 33, 8),
       (27644, 17, 17),
       (27558, 34, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27559, 1, 12),
       (27560, 2, 39),
       (27561, 3, 23),
       (27562, 4, 14),
       (27563, 5, 25),
       (27564, 6, 35),
       (27565, 7, 28),
       (27566, 8, 26),
       (27567, 9, 23),
       (27568, 10, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27569, 11, 17),
       (27570, 12, 24),
       (27571, 13, 13),
       (27572, 14, 38),
       (27573, 15, 29),
       (27575, 17, 28),
       (27576, 18, 38),
       (27577, 19, 23),
       (27578, 20, 14),
       (27579, 21, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27580, 22, 20),
       (28326, 22, 13),
       (27581, 23, 24),
       (27582, 24, 24),
       (27583, 25, 32),
       (27584, 26, 32),
       (27585, 27, 37),
       (27586, 28, 19),
       (27587, 1, 26),
       (27588, 2, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27589, 3, 17),
       (27590, 4, 30),
       (27591, 5, 16),
       (27592, 6, 23),
       (27593, 7, 9),
       (27594, 8, 28),
       (27595, 9, 31),
       (27596, 10, 28),
       (27597, 11, 11),
       (27598, 12, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27599, 13, 36),
       (27600, 14, 17),
       (27601, 15, 21),
       (27602, 16, 33),
       (27603, 17, 30),
       (27604, 18, 14),
       (27605, 19, 38),
       (27606, 20, 11),
       (27607, 21, 35),
       (27608, 22, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27609, 23, 13),
       (27610, 24, 22),
       (27611, 25, 24),
       (27612, 26, 36),
       (27613, 27, 46),
       (27614, 28, 21),
       (27615, 29, 31),
       (27616, 30, 17),
       (27617, 31, 23),
       (27618, 32, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27619, 33, 29),
       (27620, 34, 28),
       (27621, 35, 44),
       (27624, 38, 30),
       (27625, 39, 17),
       (27626, 40, 36),
       (27627, 41, 11),
       (27628, 1, 25),
       (27629, 2, 19),
       (27630, 3, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27631, 4, 35),
       (27632, 5, 13),
       (27633, 6, 27),
       (27634, 7, 33),
       (27635, 8, 15),
       (27636, 9, 42),
       (27637, 10, 23),
       (27638, 11, 30),
       (27639, 12, 13),
       (27640, 13, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27641, 14, 16),
       (27642, 15, 29),
       (27643, 16, 37),
       (27645, 18, 35),
       (27646, 19, 24),
       (27647, 20, 22),
       (27648, 21, 18),
       (27649, 22, 21),
       (27650, 23, 19),
       (27651, 24, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27652, 25, 23),
       (27653, 26, 18),
       (27654, 27, 14),
       (27655, 28, 33),
       (27656, 29, 18),
       (27657, 30, 20),
       (27658, 31, 24),
       (27659, 32, 34),
       (27660, 33, 11),
       (27661, 34, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27662, 35, 40),
       (27663, 36, 15),
       (27664, 37, 15),
       (27665, 38, 30),
       (27666, 1, 35),
       (27667, 2, 16),
       (27707, 2, 22),
       (27668, 3, 33),
       (27669, 4, 27),
       (27670, 5, 52)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27671, 6, 13),
       (27672, 7, 25),
       (27673, 8, 30),
       (27674, 9, 10),
       (27675, 10, 18),
       (27676, 11, 47),
       (27677, 12, 22),
       (27678, 13, 34),
       (27679, 14, 18),
       (27680, 15, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27681, 16, 28),
       (27682, 17, 13),
       (27683, 18, 18),
       (27684, 19, 24),
       (27685, 20, 38),
       (27686, 21, 35),
       (27687, 22, 13),
       (27688, 23, 19),
       (27730, 25, 34),
       (27689, 24, 49)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27690, 25, 34),
       (27691, 26, 36),
       (27692, 27, 30),
       (27693, 28, 40),
       (27694, 29, 24),
       (27695, 30, 31),
       (27696, 31, 25),
       (27697, 32, 28),
       (27698, 33, 31),
       (27699, 34, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27700, 35, 24),
       (27701, 36, 14),
       (27702, 37, 31),
       (27703, 38, 28),
       (27704, 39, 30),
       (27705, 40, 37),
       (27706, 1, 14),
       (27708, 3, 44),
       (27709, 4, 18),
       (27710, 5, 44)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27711, 6, 30),
       (27712, 7, 20),
       (27713, 8, 21),
       (27714, 9, 23),
       (27715, 10, 37),
       (27716, 11, 28),
       (27717, 12, 21),
       (27718, 13, 26),
       (27719, 14, 30),
       (27720, 15, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27721, 16, 19),
       (27722, 17, 25),
       (27723, 18, 26),
       (27724, 19, 21),
       (27725, 20, 27),
       (27726, 21, 18),
       (27727, 22, 34),
       (27728, 23, 17),
       (27729, 24, 31),
       (27731, 26, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27732, 27, 20),
       (27733, 28, 23),
       (27734, 29, 34),
       (27735, 30, 41),
       (27736, 1, 22),
       (27737, 2, 18),
       (27738, 3, 33),
       (27739, 4, 13),
       (27740, 5, 28),
       (27741, 6, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27742, 7, 21),
       (27743, 8, 19),
       (27744, 9, 40),
       (27745, 10, 41),
       (27746, 11, 33),
       (27747, 12, 29),
       (27748, 13, 11),
       (27749, 14, 29),
       (27750, 15, 41),
       (27751, 16, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27752, 17, 27),
       (27753, 18, 38),
       (27754, 19, 25),
       (27755, 20, 30),
       (27756, 21, 50),
       (27757, 22, 23),
       (27758, 23, 39),
       (27759, 24, 21),
       (27760, 25, 9),
       (27761, 26, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27762, 27, 34),
       (27763, 28, 18),
       (27764, 29, 26),
       (27765, 30, 33),
       (27766, 31, 18),
       (27767, 32, 18),
       (27768, 33, 20),
       (27769, 34, 23),
       (27770, 35, 25),
       (27771, 1, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27815, 18, 19),
       (27772, 2, 31),
       (27773, 3, 17),
       (27774, 4, 22),
       (27775, 5, 31),
       (27776, 6, 14),
       (27778, 8, 22),
       (27779, 9, 15),
       (27780, 10, 34),
       (27781, 11, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27782, 12, 27),
       (27783, 13, 14),
       (27784, 14, 40),
       (27785, 15, 23),
       (27786, 16, 18),
       (27787, 17, 15),
       (27788, 18, 24),
       (27789, 19, 19),
       (27790, 20, 19),
       (27791, 21, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27792, 22, 26),
       (27793, 23, 31),
       (27794, 24, 28),
       (27795, 25, 39),
       (27796, 26, 24),
       (27797, 27, 26),
       (27798, 1, 17),
       (27799, 2, 20),
       (27800, 3, 23),
       (27801, 4, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27802, 5, 29),
       (27803, 6, 36),
       (27804, 7, 30),
       (27805, 8, 26),
       (27806, 9, 29),
       (27807, 10, 32),
       (27808, 11, 44),
       (27809, 12, 21),
       (27810, 13, 18),
       (27811, 14, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27812, 15, 24),
       (27813, 16, 43),
       (27814, 17, 29),
       (27816, 19, 24),
       (27817, 20, 25),
       (27818, 21, 28),
       (27819, 22, 23),
       (27820, 23, 42),
       (27821, 24, 45),
       (27822, 25, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27823, 26, 37),
       (27824, 27, 19),
       (27825, 1, 23),
       (27826, 2, 29),
       (27827, 3, 24),
       (27828, 4, 26),
       (27829, 5, 26),
       (27830, 6, 21),
       (27831, 7, 28),
       (27832, 8, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27833, 9, 21),
       (27834, 10, 39),
       (27835, 11, 28),
       (27836, 12, 16),
       (27837, 13, 30),
       (27838, 14, 37),
       (27839, 15, 18),
       (27840, 16, 44),
       (27841, 17, 15),
       (27842, 18, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27843, 19, 13),
       (27844, 20, 37),
       (27845, 21, 16),
       (27846, 22, 33),
       (27847, 23, 29),
       (27848, 24, 25),
       (27849, 25, 19),
       (27850, 26, 36),
       (27851, 27, 12),
       (27852, 28, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27853, 29, 35),
       (27854, 30, 17),
       (27855, 31, 22),
       (27856, 32, 21),
       (27857, 1, 28),
       (27858, 2, 33),
       (27859, 3, 26),
       (27860, 4, 19),
       (27861, 5, 23),
       (27862, 6, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27863, 7, 33),
       (27864, 8, 23),
       (27865, 9, 24),
       (27866, 10, 31),
       (27867, 11, 26),
       (27868, 12, 44),
       (27869, 13, 25),
       (27870, 14, 18),
       (27871, 15, 21),
       (27872, 16, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27873, 17, 33),
       (27874, 18, 20),
       (28417, 6, 10),
       (27875, 19, 17),
       (27876, 20, 31),
       (27877, 21, 41),
       (27878, 22, 26),
       (27879, 23, 20),
       (27880, 24, 22),
       (27881, 25, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27882, 26, 10),
       (27883, 27, 33),
       (27884, 28, 20),
       (27885, 29, 26),
       (27886, 30, 33),
       (27887, 31, 20),
       (27888, 32, 16),
       (27889, 33, 32),
       (27890, 34, 29),
       (27891, 35, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27892, 36, 13),
       (27893, 37, 15),
       (27894, 38, 18),
       (27895, 39, 32),
       (27896, 40, 35),
       (27897, 41, 35),
       (27898, 42, 19),
       (27899, 43, 30),
       (27900, 44, 29),
       (27901, 1, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27902, 2, 28),
       (27903, 3, 30),
       (27904, 4, 40),
       (27905, 5, 14),
       (27906, 6, 39),
       (27907, 7, 29),
       (27908, 8, 31),
       (27909, 9, 19),
       (27910, 10, 21),
       (27911, 11, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27912, 12, 10),
       (27913, 13, 30),
       (27914, 14, 20),
       (27915, 15, 36),
       (27916, 16, 20),
       (27959, 28, 28),
       (27917, 17, 59),
       (27918, 18, 22),
       (27919, 19, 25),
       (27920, 20, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27921, 21, 30),
       (27922, 22, 27),
       (27923, 23, 49),
       (27924, 24, 12),
       (27925, 25, 29),
       (27926, 26, 31),
       (27927, 27, 49),
       (27928, 28, 21),
       (27929, 29, 3),
       (27930, 30, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27931, 31, 21),
       (27932, 1, 18),
       (27933, 2, 12),
       (27934, 3, 16),
       (27935, 4, 29),
       (27936, 5, 21),
       (27937, 6, 12),
       (27938, 7, 28),
       (27939, 8, 21),
       (27940, 9, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27941, 10, 23),
       (27942, 11, 23),
       (27943, 12, 24),
       (27944, 13, 38),
       (27945, 14, 18),
       (27946, 15, 22),
       (27947, 16, 32),
       (27948, 17, 24),
       (27949, 18, 23),
       (27950, 19, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27951, 20, 36),
       (27952, 21, 26),
       (27953, 22, 9),
       (27954, 23, 28),
       (27955, 24, 22),
       (27956, 25, 28),
       (27957, 26, 24),
       (27958, 27, 37),
       (27960, 29, 17),
       (27961, 30, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27962, 31, 9),
       (27963, 32, 30),
       (27964, 1, 30),
       (27965, 2, 19),
       (27966, 3, 26),
       (27967, 4, 24),
       (27968, 5, 26),
       (27969, 6, 11),
       (27970, 7, 18),
       (27971, 8, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27972, 9, 21),
       (27973, 10, 22),
       (27974, 11, 10),
       (27975, 12, 30),
       (27976, 13, 21),
       (27977, 14, 28),
       (27978, 15, 30),
       (27979, 16, 19),
       (27980, 17, 19),
       (27981, 18, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27982, 19, 21),
       (27983, 20, 22),
       (27984, 21, 21),
       (27985, 22, 22),
       (27986, 23, 16),
       (27987, 24, 19),
       (27988, 25, 27),
       (27989, 26, 19),
       (29264, 12, 15),
       (27990, 27, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (27991, 28, 21),
       (27992, 29, 33),
       (27993, 1, 14),
       (27994, 2, 16),
       (27995, 3, 21),
       (27996, 4, 34),
       (27997, 5, 28),
       (27999, 7, 23),
       (28000, 8, 28),
       (28001, 9, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28002, 10, 12),
       (28003, 11, 13),
       (28004, 12, 23),
       (28005, 13, 22),
       (28011, 19, 38),
       (28012, 20, 25),
       (28013, 21, 22),
       (28014, 22, 21),
       (28015, 23, 13),
       (28016, 24, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28017, 25, 33),
       (28018, 26, 29),
       (28019, 27, 23),
       (28020, 28, 18),
       (28021, 29, 21),
       (28022, 30, 21),
       (28023, 31, 19),
       (28024, 1, 16),
       (28025, 2, 17),
       (28026, 3, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28027, 4, 18),
       (28028, 5, 21),
       (28029, 6, 18),
       (28030, 7, 15),
       (28031, 8, 13),
       (28032, 9, 25),
       (28033, 10, 20),
       (28034, 11, 47),
       (28035, 12, 34),
       (28036, 13, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28037, 14, 23),
       (28038, 15, 16),
       (28039, 16, 54),
       (28040, 17, 39),
       (28041, 18, 31),
       (28042, 19, 31),
       (28043, 20, 22),
       (28044, 21, 16),
       (28046, 23, 16),
       (28047, 24, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28048, 25, 14),
       (28049, 1, 16),
       (28050, 2, 27),
       (28051, 3, 17),
       (28052, 4, 7),
       (28053, 5, 28),
       (28054, 6, 15),
       (28055, 7, 23),
       (28056, 8, 20),
       (28057, 9, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28058, 10, 29),
       (28059, 11, 24),
       (28060, 12, 26),
       (28061, 13, 20),
       (28062, 14, 32),
       (28063, 15, 46),
       (28064, 16, 30),
       (28065, 17, 39),
       (28066, 18, 33),
       (28067, 19, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28068, 20, 21),
       (28069, 21, 22),
       (28070, 1, 15),
       (28071, 2, 15),
       (28072, 3, 19),
       (28073, 4, 35),
       (28074, 5, 25),
       (28075, 6, 31),
       (28076, 7, 10),
       (28077, 8, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28078, 9, 19),
       (28079, 10, 22),
       (28080, 11, 19),
       (28081, 12, 17),
       (28082, 13, 30),
       (28083, 14, 18),
       (28084, 15, 17),
       (28085, 16, 31),
       (28086, 17, 28),
       (28087, 18, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28088, 19, 42),
       (28089, 20, 15),
       (28090, 21, 25),
       (28091, 22, 24),
       (28092, 23, 22),
       (28093, 1, 30),
       (28094, 2, 32),
       (28095, 3, 44),
       (28096, 4, 41),
       (28097, 5, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28098, 6, 34),
       (28099, 7, 37),
       (28100, 8, 23),
       (28101, 9, 20),
       (28102, 10, 15),
       (28103, 11, 15),
       (28104, 12, 15),
       (28105, 13, 42),
       (28106, 14, 16),
       (28107, 15, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28108, 16, 19),
       (28109, 17, 17),
       (28110, 18, 32),
       (28111, 19, 20),
       (28112, 20, 24),
       (28113, 21, 16),
       (28114, 22, 13),
       (28115, 23, 32),
       (28116, 24, 17),
       (28117, 25, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28118, 1, 14),
       (28119, 2, 23),
       (28120, 3, 35),
       (28121, 4, 22),
       (28122, 5, 26),
       (28123, 6, 19),
       (28124, 7, 26),
       (28125, 8, 11),
       (28126, 9, 38),
       (28127, 10, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28128, 11, 41),
       (28129, 12, 16),
       (28130, 13, 28),
       (28131, 14, 17),
       (28132, 15, 24),
       (28133, 16, 15),
       (28134, 17, 30),
       (28135, 18, 27),
       (28136, 19, 17),
       (28137, 20, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28138, 21, 25),
       (28139, 22, 16),
       (28140, 23, 33),
       (28141, 24, 23),
       (28142, 25, 19),
       (28143, 26, 35),
       (28144, 27, 28),
       (28145, 28, 26),
       (28146, 29, 26),
       (28147, 30, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28148, 31, 18),
       (28149, 32, 27),
       (28150, 33, 17),
       (28151, 34, 34),
       (28152, 35, 24),
       (28153, 36, 24),
       (28154, 37, 16),
       (28155, 38, 23),
       (28156, 39, 27),
       (28157, 1, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28158, 2, 12),
       (28159, 3, 23),
       (28160, 4, 28),
       (28161, 5, 23),
       (28162, 6, 25),
       (28163, 7, 20),
       (28164, 8, 27),
       (28165, 9, 21),
       (28166, 10, 17),
       (28167, 11, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28168, 12, 12),
       (28169, 13, 13),
       (28170, 14, 13),
       (28171, 15, 25),
       (28172, 16, 21),
       (28173, 17, 36),
       (28174, 18, 16),
       (28175, 19, 18),
       (28176, 20, 28),
       (28177, 21, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28178, 22, 25),
       (28179, 23, 22),
       (28180, 24, 18),
       (28181, 25, 25),
       (28182, 26, 30),
       (28183, 27, 29),
       (28184, 28, 17),
       (28185, 29, 29),
       (28186, 30, 24),
       (28187, 31, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28188, 32, 22),
       (28189, 33, 32),
       (28190, 1, 19),
       (28191, 2, 18),
       (28592, 24, 13),
       (28192, 3, 24),
       (28193, 4, 16),
       (28194, 5, 19),
       (28195, 6, 26),
       (28196, 7, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28197, 8, 26),
       (28198, 9, 29),
       (28199, 10, 18),
       (28200, 11, 15),
       (28201, 12, 27),
       (28202, 13, 14),
       (28203, 14, 34),
       (28204, 15, 29),
       (28205, 16, 20),
       (28206, 17, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28207, 18, 27),
       (28208, 19, 33),
       (28209, 20, 27),
       (28210, 21, 23),
       (28211, 1, 28),
       (28212, 2, 28),
       (28213, 3, 23),
       (28214, 4, 26),
       (28215, 5, 19),
       (28216, 6, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28217, 7, 22),
       (28218, 8, 30),
       (28219, 9, 22),
       (28220, 10, 18),
       (28221, 11, 28),
       (28222, 12, 24),
       (29315, 10, 9),
       (28223, 13, 22),
       (28224, 14, 21),
       (28225, 15, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28226, 16, 21),
       (28227, 17, 37),
       (28228, 18, 22),
       (28229, 19, 15),
       (28230, 20, 20),
       (28231, 21, 14),
       (28232, 22, 33),
       (28233, 23, 24),
       (28234, 24, 45),
       (28235, 25, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28236, 26, 28),
       (28237, 27, 15),
       (28238, 28, 23),
       (28239, 29, 13),
       (28240, 30, 19),
       (28241, 31, 22),
       (28242, 32, 16),
       (28243, 33, 27),
       (28244, 34, 16),
       (28245, 35, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28246, 36, 21),
       (28247, 1, 27),
       (28248, 2, 34),
       (28249, 3, 50),
       (28250, 4, 20),
       (28251, 5, 17),
       (28252, 6, 26),
       (28253, 7, 17),
       (28254, 8, 28),
       (28255, 9, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28256, 10, 17),
       (28257, 11, 11),
       (28258, 12, 11),
       (28259, 13, 11),
       (28260, 14, 10),
       (28261, 15, 11),
       (28262, 16, 30),
       (28263, 17, 19),
       (28264, 18, 17),
       (28265, 19, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28266, 20, 28),
       (28267, 21, 11),
       (28268, 1, 28),
       (28269, 2, 21),
       (28497, 9, 19),
       (28270, 3, 37),
       (28271, 4, 46),
       (28272, 5, 19),
       (28273, 6, 22),
       (28274, 7, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28275, 8, 20),
       (28276, 9, 42),
       (28277, 10, 16),
       (28278, 11, 30),
       (28279, 12, 30),
       (28280, 13, 24),
       (28281, 14, 21),
       (28282, 1, 16),
       (28283, 2, 16),
       (28284, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28285, 4, 34),
       (28286, 5, 23),
       (28287, 6, 39),
       (28288, 7, 13),
       (28289, 8, 30),
       (28290, 9, 22),
       (28291, 10, 31),
       (28292, 11, 24),
       (28293, 12, 14),
       (28294, 13, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28295, 14, 31),
       (28296, 15, 26),
       (28297, 16, 10),
       (28298, 17, 21),
       (28299, 18, 16),
       (28300, 19, 20),
       (28301, 20, 27),
       (28302, 21, 20),
       (28303, 22, 24),
       (28304, 23, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28305, 1, 19),
       (28306, 2, 16),
       (28307, 3, 22),
       (28308, 4, 25),
       (28309, 5, 24),
       (28310, 6, 20),
       (28311, 7, 17),
       (28312, 8, 29),
       (28313, 9, 30),
       (28314, 10, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28315, 11, 16),
       (28316, 12, 27),
       (28317, 13, 28),
       (28318, 14, 28),
       (28319, 15, 28),
       (28320, 16, 35),
       (28321, 17, 14),
       (28322, 18, 28),
       (28323, 19, 33),
       (28324, 20, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28325, 21, 24),
       (28327, 23, 22),
       (28328, 24, 38),
       (28329, 25, 13),
       (28330, 26, 27),
       (28331, 27, 38),
       (28332, 28, 22),
       (28333, 29, 21),
       (28334, 30, 31),
       (28335, 31, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28336, 32, 20),
       (28338, 1, 19),
       (28339, 2, 41),
       (28340, 3, 11),
       (28341, 4, 25),
       (28342, 5, 22),
       (28343, 6, 9),
       (28344, 7, 26),
       (28345, 8, 8),
       (28346, 9, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28347, 10, 16),
       (28348, 11, 17),
       (28349, 12, 20),
       (28350, 13, 13),
       (28351, 14, 14),
       (28352, 15, 19),
       (28353, 16, 15),
       (28354, 17, 29),
       (28355, 18, 29),
       (28356, 19, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28357, 20, 23),
       (28358, 21, 15),
       (28359, 22, 12),
       (28360, 23, 23),
       (28361, 24, 3),
       (28362, 25, 36),
       (28363, 26, 31),
       (28364, 27, 17),
       (28365, 1, 19),
       (28366, 2, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28367, 3, 15),
       (28368, 4, 20),
       (28369, 5, 15),
       (28370, 6, 11),
       (28371, 7, 18),
       (28372, 8, 21),
       (28373, 9, 19),
       (28418, 7, 19),
       (28374, 10, 44),
       (28375, 11, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28376, 12, 27),
       (28377, 13, 18),
       (28378, 14, 14),
       (28379, 15, 13),
       (28380, 16, 18),
       (28381, 17, 27),
       (28382, 18, 25),
       (28383, 19, 24),
       (28384, 20, 26),
       (28385, 21, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28386, 22, 12),
       (28387, 23, 14),
       (28388, 24, 21),
       (28389, 25, 19),
       (28390, 26, 21),
       (28391, 27, 40),
       (28392, 28, 34),
       (28393, 29, 8),
       (28394, 30, 23),
       (28395, 31, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28396, 1, 25),
       (28397, 2, 16),
       (28398, 3, 15),
       (28399, 4, 23),
       (28400, 5, 18),
       (28401, 6, 29),
       (28402, 7, 26),
       (28403, 8, 25),
       (28404, 9, 33),
       (28405, 10, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28406, 11, 34),
       (28407, 12, 31),
       (28726, 7, 11),
       (28408, 13, 25),
       (28409, 14, 30),
       (28410, 15, 17),
       (28411, 16, 22),
       (28412, 1, 21),
       (28413, 2, 25),
       (28414, 3, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28415, 4, 19),
       (28416, 5, 22),
       (28419, 8, 23),
       (28420, 9, 16),
       (28421, 10, 34),
       (28422, 11, 17),
       (28423, 12, 16),
       (28424, 13, 36),
       (28425, 14, 17),
       (28426, 15, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28427, 16, 20),
       (28428, 17, 24),
       (28429, 18, 29),
       (28430, 19, 23),
       (28431, 20, 15),
       (28432, 21, 13),
       (28433, 22, 24),
       (28434, 23, 11),
       (28435, 1, 20),
       (28436, 2, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28437, 3, 29),
       (28438, 4, 21),
       (28439, 5, 40),
       (28440, 6, 47),
       (28441, 7, 33),
       (28442, 8, 32),
       (28443, 9, 33),
       (28444, 10, 28),
       (28445, 11, 23),
       (28446, 12, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28447, 13, 22),
       (28448, 14, 17),
       (28449, 15, 26),
       (28450, 16, 10),
       (28451, 17, 41),
       (28452, 18, 14),
       (28453, 19, 28),
       (28454, 20, 13),
       (28455, 21, 20),
       (28456, 1, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28457, 2, 25),
       (28458, 3, 27),
       (28459, 4, 22),
       (28460, 5, 27),
       (28461, 6, 17),
       (28462, 7, 27),
       (28463, 8, 28),
       (28464, 9, 14),
       (28465, 10, 30),
       (28466, 11, 46)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28467, 12, 21),
       (28468, 13, 16),
       (28469, 1, 22),
       (28470, 2, 28),
       (28471, 3, 18),
       (28472, 4, 26),
       (28473, 5, 28),
       (28474, 6, 12),
       (28475, 7, 27),
       (28476, 8, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28477, 9, 32),
       (28478, 10, 17),
       (28479, 11, 34),
       (28480, 12, 30),
       (28481, 13, 37),
       (28482, 14, 15),
       (28483, 15, 29),
       (28484, 16, 25),
       (28485, 17, 12),
       (28486, 18, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28487, 19, 30),
       (28488, 20, 14),
       (28489, 1, 19),
       (28490, 2, 20),
       (28491, 3, 18),
       (28492, 4, 28),
       (28493, 5, 36),
       (28494, 6, 12),
       (28495, 7, 29),
       (28496, 8, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28774, 55, 13),
       (28498, 10, 21),
       (28499, 11, 25),
       (28500, 12, 30),
       (28501, 13, 23),
       (28502, 14, 29),
       (28503, 15, 28),
       (28504, 16, 25),
       (28505, 17, 27),
       (28506, 18, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28507, 19, 16),
       (28508, 20, 12),
       (28509, 21, 21),
       (28510, 22, 28),
       (28511, 23, 12),
       (28512, 24, 13),
       (28513, 25, 28),
       (28514, 26, 30),
       (28515, 27, 22),
       (28516, 28, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28517, 29, 24),
       (28518, 30, 28),
       (28519, 31, 22),
       (28520, 32, 29),
       (28521, 33, 20),
       (28522, 34, 52),
       (28523, 35, 34),
       (28524, 36, 41),
       (28525, 37, 30),
       (28526, 38, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28527, 39, 33),
       (28528, 40, 25),
       (28529, 1, 20),
       (28530, 2, 18),
       (28531, 3, 13),
       (28532, 4, 28),
       (28533, 5, 23),
       (28534, 6, 33),
       (28535, 7, 35),
       (28536, 8, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28537, 9, 18),
       (28538, 10, 34),
       (28539, 11, 17),
       (28540, 12, 19),
       (28541, 13, 24),
       (28542, 1, 25),
       (28543, 2, 27),
       (28544, 3, 10),
       (28545, 4, 10),
       (28546, 5, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28547, 6, 14),
       (28591, 23, 20),
       (28548, 7, 33),
       (28549, 8, 19),
       (28550, 9, 30),
       (28551, 10, 35),
       (28552, 11, 20),
       (28553, 12, 37),
       (28554, 13, 31),
       (28555, 14, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28556, 15, 42),
       (28557, 16, 30),
       (28558, 17, 28),
       (28559, 18, 32),
       (28560, 19, 22),
       (28561, 20, 42),
       (28562, 21, 30),
       (28563, 22, 29),
       (28564, 23, 19),
       (28565, 24, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28566, 25, 28),
       (28567, 26, 16),
       (28568, 27, 27),
       (28569, 1, 23),
       (28570, 2, 14),
       (28571, 3, 9),
       (28572, 4, 24),
       (28573, 5, 18),
       (28574, 6, 21),
       (28575, 7, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28576, 8, 20),
       (28577, 9, 20),
       (28578, 10, 14),
       (28579, 11, 27),
       (28580, 12, 13),
       (28581, 13, 49),
       (28582, 14, 7),
       (28583, 15, 12),
       (28584, 16, 33),
       (28585, 17, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28586, 18, 17),
       (28587, 19, 19),
       (28588, 20, 30),
       (28589, 21, 29),
       (28590, 22, 14),
       (28593, 25, 14),
       (28594, 26, 12),
       (28595, 27, 31),
       (28596, 28, 26),
       (28597, 29, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28598, 30, 19),
       (28599, 31, 18),
       (28600, 32, 18),
       (28601, 33, 27),
       (28603, 2, 24),
       (28604, 3, 31),
       (28605, 4, 13),
       (28606, 5, 27),
       (28607, 6, 31),
       (28608, 7, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28609, 8, 15),
       (28610, 9, 16),
       (28611, 10, 20),
       (28612, 11, 18),
       (28613, 12, 23),
       (28614, 13, 15),
       (28615, 14, 21),
       (28616, 15, 23),
       (28617, 16, 19),
       (28618, 17, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28619, 18, 24),
       (28620, 19, 20),
       (28621, 20, 17),
       (28622, 21, 21),
       (28623, 22, 43),
       (28624, 23, 28),
       (28625, 24, 26),
       (28626, 25, 31),
       (28627, 26, 22),
       (28628, 27, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28629, 28, 20),
       (28630, 29, 19),
       (28631, 30, 16),
       (28632, 31, 11),
       (28633, 32, 21),
       (28634, 33, 14),
       (28635, 34, 30),
       (28636, 1, 12),
       (28637, 2, 20),
       (28638, 3, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28639, 4, 11),
       (28640, 5, 11),
       (28641, 6, 17),
       (28642, 7, 15),
       (28643, 8, 25),
       (28644, 9, 18),
       (28645, 10, 30),
       (28646, 11, 20),
       (28647, 12, 27),
       (28648, 13, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28649, 14, 10),
       (28650, 15, 26),
       (28651, 16, 27),
       (28652, 17, 21),
       (28653, 18, 20),
       (28654, 19, 12),
       (28655, 20, 10),
       (28656, 21, 28),
       (28657, 22, 17),
       (28658, 23, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28659, 24, 23),
       (28660, 25, 22),
       (28661, 26, 23),
       (28662, 27, 12),
       (28663, 28, 27),
       (28664, 29, 15),
       (28665, 30, 14),
       (28666, 31, 17),
       (28667, 1, 25),
       (28668, 2, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28669, 3, 29),
       (28670, 4, 18),
       (28671, 5, 18),
       (28672, 6, 10),
       (28673, 7, 13),
       (28674, 8, 30),
       (28675, 9, 11),
       (28676, 10, 18),
       (28677, 11, 34),
       (28678, 12, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28679, 13, 16),
       (28680, 1, 15),
       (28681, 2, 26),
       (28682, 3, 13),
       (28683, 4, 16),
       (28684, 5, 37),
       (28685, 6, 36),
       (28910, 11, 13),
       (28686, 7, 31),
       (28687, 8, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28688, 9, 30),
       (28689, 10, 20),
       (28690, 11, 30),
       (28691, 12, 22),
       (28692, 13, 14),
       (28693, 14, 16),
       (28694, 15, 33),
       (28695, 16, 33),
       (28696, 17, 13),
       (28697, 18, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28698, 19, 27),
       (28699, 20, 18),
       (28700, 21, 35),
       (28701, 22, 31),
       (28702, 23, 30),
       (28703, 24, 23),
       (28704, 25, 28),
       (28705, 26, 34),
       (28706, 27, 26),
       (28707, 28, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28708, 29, 15),
       (28709, 30, 16),
       (28710, 31, 18),
       (28711, 32, 12),
       (28712, 33, 20),
       (28713, 34, 29),
       (28714, 35, 27),
       (28715, 36, 19),
       (28716, 37, 32),
       (28717, 38, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28718, 39, 15),
       (28719, 40, 11),
       (28720, 1, 23),
       (28721, 2, 23),
       (28722, 3, 24),
       (28723, 4, 20),
       (28724, 5, 11),
       (28725, 6, 24),
       (28727, 8, 16),
       (28728, 9, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28729, 10, 44),
       (28730, 11, 15),
       (28731, 12, 27),
       (28732, 13, 15),
       (28733, 14, 18),
       (28734, 15, 33),
       (28735, 16, 13),
       (28736, 17, 18),
       (28737, 18, 12),
       (28738, 19, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28739, 20, 17),
       (28740, 21, 16),
       (28741, 22, 16),
       (28742, 23, 19),
       (28743, 24, 29),
       (28744, 25, 15),
       (28745, 26, 10),
       (28746, 27, 35),
       (28747, 28, 34),
       (28748, 29, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28749, 30, 10),
       (28750, 31, 20),
       (28751, 32, 34),
       (28752, 33, 9),
       (28753, 34, 23),
       (28754, 35, 20),
       (28755, 36, 15),
       (28756, 37, 28),
       (28757, 38, 21),
       (28758, 39, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28759, 40, 25),
       (28760, 41, 29),
       (28761, 42, 19),
       (28762, 43, 21),
       (28763, 44, 25),
       (28764, 45, 22),
       (28765, 46, 19),
       (28766, 47, 15),
       (28767, 48, 24),
       (28768, 49, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28769, 50, 21),
       (28770, 51, 18),
       (28771, 52, 31),
       (28772, 53, 15),
       (28773, 54, 34),
       (28776, 57, 16),
       (28777, 58, 30),
       (28778, 1, 21),
       (28779, 2, 30),
       (28780, 3, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28782, 5, 19),
       (28783, 6, 26),
       (28784, 7, 26),
       (28785, 8, 9),
       (28786, 9, 16),
       (28787, 10, 25),
       (28788, 11, 29),
       (28789, 12, 37),
       (28790, 13, 14),
       (28791, 14, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28792, 15, 30),
       (28793, 16, 20),
       (28794, 17, 23),
       (28795, 18, 15),
       (28796, 19, 24),
       (28797, 20, 13),
       (28798, 21, 10),
       (28799, 22, 13),
       (28800, 23, 11),
       (28801, 24, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28802, 1, 36),
       (28803, 2, 15),
       (28804, 3, 21),
       (28805, 4, 31),
       (28806, 5, 18),
       (28807, 6, 37),
       (28808, 7, 24),
       (28809, 8, 33),
       (28810, 9, 26),
       (28811, 10, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28812, 11, 32),
       (28813, 12, 40),
       (28814, 13, 25),
       (28815, 14, 27),
       (28816, 15, 20),
       (28817, 16, 28),
       (28818, 17, 37),
       (28819, 18, 15),
       (28820, 19, 32),
       (28821, 20, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28822, 21, 15),
       (28823, 22, 16),
       (28824, 23, 21),
       (28825, 24, 21),
       (28826, 1, 17),
       (28827, 2, 23),
       (28828, 3, 37),
       (28829, 4, 38),
       (28830, 5, 26),
       (28831, 6, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28832, 7, 27),
       (28833, 8, 11),
       (28834, 9, 24),
       (28835, 10, 33),
       (28836, 11, 19),
       (28837, 12, 23),
       (28838, 13, 26),
       (28839, 14, 27),
       (28840, 15, 21),
       (28841, 16, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28842, 17, 30),
       (28843, 1, 22),
       (28844, 2, 15),
       (28845, 3, 39),
       (28846, 4, 11),
       (28847, 5, 20),
       (28848, 6, 29),
       (28849, 7, 41),
       (28850, 8, 13),
       (28851, 9, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28852, 10, 24),
       (28853, 11, 18),
       (28854, 12, 12),
       (28855, 13, 31),
       (28856, 14, 35),
       (28857, 15, 15),
       (28858, 16, 14),
       (28859, 17, 18),
       (28860, 18, 34),
       (28861, 1, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28862, 2, 40),
       (28863, 3, 15),
       (28864, 4, 37),
       (28865, 5, 19),
       (28866, 6, 36),
       (28911, 12, 15),
       (28867, 7, 24),
       (28868, 8, 16),
       (28869, 9, 10),
       (28870, 10, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28871, 11, 26),
       (28872, 12, 11),
       (28873, 13, 29),
       (28874, 14, 23),
       (28875, 15, 27),
       (28876, 16, 21),
       (28877, 17, 22),
       (28878, 18, 36),
       (28879, 1, 30),
       (28880, 2, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28881, 3, 13),
       (28882, 4, 37),
       (28883, 5, 21),
       (28884, 6, 23),
       (28885, 7, 10),
       (28886, 8, 26),
       (28887, 9, 19),
       (28888, 10, 37),
       (28889, 11, 30),
       (28890, 12, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28891, 13, 22),
       (28892, 14, 20),
       (28893, 15, 27),
       (28894, 16, 27),
       (28895, 17, 24),
       (28896, 18, 22),
       (28897, 19, 28),
       (28898, 20, 28),
       (28899, 21, 24),
       (28900, 1, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28901, 2, 36),
       (28902, 3, 14),
       (28903, 4, 19),
       (28904, 5, 13),
       (28905, 6, 17),
       (28906, 7, 24),
       (28907, 8, 16),
       (28908, 9, 18),
       (28909, 10, 20),
       (28912, 13, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28913, 14, 21),
       (28914, 15, 17),
       (28915, 16, 45),
       (28916, 17, 25),
       (28917, 18, 21),
       (28918, 1, 24),
       (28919, 2, 20),
       (28920, 3, 25),
       (28921, 4, 29),
       (28922, 5, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28923, 6, 16),
       (28924, 7, 36),
       (28925, 8, 34),
       (28926, 9, 36),
       (28927, 10, 22),
       (28928, 11, 53),
       (28929, 12, 43),
       (28930, 13, 29),
       (28931, 14, 43),
       (28932, 15, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28933, 16, 13),
       (28934, 1, 21),
       (28935, 2, 24),
       (28936, 3, 20),
       (28937, 4, 20),
       (28938, 5, 26),
       (28939, 6, 23),
       (28940, 7, 31),
       (28941, 8, 22),
       (28942, 9, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28943, 10, 32),
       (28944, 11, 26),
       (28945, 12, 21),
       (28946, 13, 14),
       (28947, 14, 32),
       (28948, 15, 20),
       (28949, 16, 19),
       (28950, 17, 21),
       (28951, 18, 21),
       (28952, 19, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28953, 20, 20),
       (28954, 21, 23),
       (28955, 22, 35),
       (28956, 23, 33),
       (28957, 24, 24),
       (28958, 1, 18),
       (28959, 2, 36),
       (28960, 3, 30),
       (28961, 4, 31),
       (28962, 5, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28963, 6, 22),
       (28964, 7, 25),
       (28965, 8, 26),
       (28966, 9, 20),
       (28967, 10, 28),
       (28968, 11, 16),
       (28969, 12, 27),
       (28970, 13, 37),
       (28971, 14, 23),
       (28972, 15, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28973, 1, 32),
       (28974, 2, 36),
       (28975, 3, 15),
       (28976, 4, 23),
       (28977, 5, 27),
       (28978, 6, 16),
       (28979, 7, 40),
       (28980, 8, 32),
       (28981, 9, 15),
       (28982, 10, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28983, 11, 29),
       (28984, 12, 33),
       (28985, 13, 30),
       (28986, 14, 28),
       (28987, 15, 34),
       (28988, 16, 29),
       (28989, 17, 11),
       (28990, 18, 14),
       (28991, 1, 19),
       (28992, 2, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (28993, 3, 31),
       (28994, 4, 42),
       (28995, 5, 15),
       (28996, 6, 28),
       (28997, 7, 26),
       (28998, 8, 15),
       (28999, 9, 51),
       (29000, 10, 22),
       (29001, 11, 9),
       (29002, 12, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29003, 13, 15),
       (29004, 14, 14),
       (29005, 15, 25),
       (29006, 16, 26),
       (29007, 17, 20),
       (29008, 18, 12),
       (29009, 19, 11),
       (29010, 20, 33),
       (29011, 21, 26),
       (29012, 22, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29013, 23, 29),
       (29014, 24, 12),
       (29015, 25, 26),
       (29016, 26, 43),
       (29017, 27, 20),
       (29018, 28, 20),
       (29019, 29, 18),
       (29020, 30, 16),
       (29021, 31, 20),
       (29022, 32, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29023, 33, 19),
       (29024, 1, 21),
       (29025, 2, 38),
       (29026, 3, 21),
       (29027, 4, 23),
       (29028, 5, 23),
       (29029, 6, 41),
       (29030, 7, 42),
       (29031, 8, 15),
       (29072, 14, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29032, 9, 40),
       (29413, 21, 13),
       (29033, 10, 28),
       (29034, 11, 31),
       (29035, 12, 21),
       (29036, 13, 32),
       (29037, 14, 47),
       (29038, 15, 24),
       (29039, 16, 19),
       (29040, 17, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29041, 18, 32),
       (29042, 19, 30),
       (29043, 20, 47),
       (29044, 21, 38),
       (29045, 1, 24),
       (29046, 2, 42),
       (29047, 3, 25),
       (29048, 4, 35),
       (29049, 5, 35),
       (29050, 6, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29051, 7, 31),
       (29052, 8, 13),
       (29053, 9, 20),
       (29054, 10, 35),
       (29055, 11, 27),
       (29056, 12, 8),
       (29057, 13, 6),
       (29058, 14, 24),
       (29059, 1, 24),
       (29060, 2, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29061, 3, 15),
       (29062, 4, 27),
       (29063, 5, 11),
       (29064, 6, 23),
       (29065, 7, 20),
       (29066, 8, 27),
       (29067, 9, 29),
       (29068, 10, 34),
       (29069, 11, 23),
       (29070, 12, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29071, 13, 32),
       (29213, 6, 19),
       (29073, 15, 25),
       (29074, 16, 23),
       (29504, 9, 12),
       (29075, 17, 26),
       (29076, 18, 19),
       (29077, 19, 15),
       (29078, 20, 16),
       (29079, 21, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29080, 22, 17),
       (29081, 23, 21),
       (29082, 24, 7),
       (29083, 1, 21),
       (29084, 2, 41),
       (29085, 3, 17),
       (29086, 4, 33),
       (29087, 5, 26),
       (29088, 6, 36),
       (29089, 7, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29090, 8, 21),
       (29091, 9, 46),
       (29092, 10, 19),
       (29093, 11, 17),
       (29094, 12, 30),
       (29095, 13, 21),
       (29096, 14, 51),
       (29097, 15, 12),
       (29098, 16, 56),
       (29099, 17, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29100, 18, 17),
       (29101, 19, 16),
       (29102, 20, 52),
       (29103, 21, 22),
       (29104, 1, 18),
       (29105, 2, 24),
       (29106, 3, 17),
       (29107, 4, 15),
       (29108, 5, 29),
       (29109, 6, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29110, 7, 15),
       (29111, 8, 28),
       (29112, 9, 14),
       (29113, 10, 42),
       (29114, 11, 21),
       (29115, 12, 17),
       (29116, 13, 29),
       (29117, 14, 25),
       (29118, 15, 31),
       (29119, 16, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29120, 17, 33),
       (29121, 18, 24),
       (29122, 19, 36),
       (29123, 20, 14),
       (29124, 21, 32),
       (29125, 22, 25),
       (29126, 23, 23),
       (29127, 24, 21),
       (29128, 25, 14),
       (29129, 26, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29130, 27, 15),
       (29131, 28, 31),
       (29132, 29, 17),
       (29133, 1, 25),
       (29134, 2, 14),
       (29135, 3, 18),
       (29136, 4, 22),
       (29137, 5, 19),
       (29138, 6, 20),
       (29139, 7, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29140, 8, 20),
       (29141, 9, 37),
       (29142, 10, 10),
       (29143, 11, 18),
       (29144, 12, 22),
       (29145, 13, 21),
       (29146, 14, 30),
       (29147, 15, 28),
       (29148, 16, 13),
       (29149, 17, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29150, 18, 25),
       (29151, 19, 17),
       (29152, 20, 22),
       (29153, 21, 17),
       (29154, 22, 19),
       (29155, 23, 22),
       (29156, 24, 23),
       (29157, 25, 25),
       (29158, 26, 13),
       (29159, 27, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29160, 28, 11),
       (29161, 29, 24),
       (29212, 5, 21),
       (29162, 30, 28),
       (29163, 31, 14),
       (29164, 1, 21),
       (29165, 2, 17),
       (29166, 3, 21),
       (29167, 4, 20),
       (29169, 6, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29170, 7, 15),
       (29171, 8, 10),
       (29172, 9, 8),
       (29173, 10, 29),
       (29174, 11, 25),
       (29175, 12, 13),
       (29176, 13, 27),
       (29177, 14, 20),
       (29178, 15, 19),
       (29179, 16, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29180, 17, 33),
       (29181, 18, 15),
       (29182, 19, 15),
       (29183, 20, 10),
       (29184, 21, 31),
       (29185, 22, 15),
       (29186, 23, 10),
       (29187, 24, 19),
       (29188, 25, 14),
       (29189, 26, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29190, 1, 32),
       (29191, 2, 14),
       (29192, 3, 17),
       (29193, 4, 26),
       (29194, 5, 9),
       (29195, 6, 19),
       (29196, 7, 18),
       (29197, 8, 29),
       (29198, 9, 21),
       (29199, 10, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29200, 11, 14),
       (29201, 12, 31),
       (29202, 13, 27),
       (29203, 14, 32),
       (29204, 15, 12),
       (29205, 16, 22),
       (29206, 17, 18),
       (29207, 18, 14),
       (29208, 1, 25),
       (29209, 2, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29210, 3, 26),
       (29211, 4, 26),
       (29214, 7, 22),
       (29215, 8, 13),
       (29216, 9, 19),
       (29217, 10, 32),
       (29505, 10, 17),
       (29218, 11, 28),
       (29219, 12, 21),
       (29220, 13, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29221, 14, 22),
       (29222, 15, 29),
       (29223, 16, 15),
       (29224, 17, 28),
       (29225, 18, 31),
       (29226, 19, 23),
       (29227, 20, 26),
       (29228, 21, 30),
       (29229, 22, 23),
       (29230, 23, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29231, 1, 16),
       (29232, 2, 33),
       (29233, 3, 35),
       (29234, 4, 15),
       (29235, 5, 21),
       (29236, 6, 21),
       (29237, 7, 23),
       (29238, 8, 21),
       (29239, 9, 9),
       (29240, 10, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29241, 11, 27),
       (29242, 12, 33),
       (29243, 13, 20),
       (29244, 14, 18),
       (29245, 15, 31),
       (29246, 16, 19),
       (29247, 17, 20),
       (29248, 18, 15),
       (29249, 19, 24),
       (29250, 20, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29251, 21, 17),
       (29252, 22, 16),
       (29253, 1, 16),
       (29254, 2, 23),
       (29255, 3, 19),
       (29256, 4, 15),
       (29257, 5, 29),
       (29258, 6, 28),
       (29259, 7, 27),
       (29260, 8, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29261, 9, 26),
       (29262, 10, 28),
       (29263, 11, 14),
       (29265, 13, 18),
       (29266, 14, 11),
       (29267, 15, 12),
       (29268, 16, 27),
       (29269, 17, 21),
       (29270, 18, 20),
       (29271, 19, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29272, 20, 26),
       (29273, 21, 21),
       (29274, 1, 20),
       (29275, 2, 13),
       (29276, 3, 15),
       (29277, 4, 21),
       (29278, 5, 7),
       (29279, 6, 17),
       (29280, 7, 20),
       (29281, 8, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29282, 9, 21),
       (29283, 10, 21),
       (29284, 11, 19),
       (29285, 12, 21),
       (29286, 13, 35),
       (29287, 14, 32),
       (29288, 15, 21),
       (29289, 16, 42),
       (29290, 17, 26),
       (29291, 18, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29292, 19, 16),
       (29293, 20, 8),
       (29294, 21, 19),
       (29295, 22, 23),
       (29296, 23, 12),
       (29297, 24, 19),
       (29298, 25, 20),
       (29299, 26, 16),
       (29300, 27, 7),
       (29301, 28, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29302, 29, 31),
       (29303, 30, 19),
       (29304, 31, 20),
       (29305, 32, 20),
       (29306, 1, 10),
       (29307, 2, 31),
       (29308, 3, 19),
       (29309, 4, 17),
       (29310, 5, 31),
       (29311, 6, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29312, 7, 8),
       (29313, 8, 17),
       (29314, 9, 16),
       (29316, 11, 16),
       (29317, 12, 19),
       (29318, 13, 22),
       (29319, 14, 19),
       (29320, 15, 13),
       (29321, 16, 9),
       (29322, 17, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29323, 18, 16),
       (29324, 19, 22),
       (29325, 20, 20),
       (29326, 21, 11),
       (29327, 22, 13),
       (29328, 23, 26),
       (29329, 24, 20),
       (29330, 25, 18),
       (29331, 26, 17),
       (29332, 27, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29333, 28, 23),
       (29334, 29, 20),
       (29335, 30, 8),
       (29336, 31, 25),
       (29337, 32, 16),
       (29338, 33, 25),
       (29339, 1, 12),
       (29340, 2, 13),
       (29341, 3, 16),
       (29342, 4, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29343, 5, 26),
       (29344, 6, 23),
       (29345, 7, 14),
       (29346, 8, 24),
       (29347, 9, 35),
       (29348, 10, 14),
       (29349, 11, 21),
       (29350, 12, 34),
       (29351, 13, 26),
       (29352, 14, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29353, 15, 14),
       (29354, 16, 23),
       (29355, 17, 19),
       (29356, 18, 25),
       (29357, 19, 26),
       (29358, 20, 21),
       (29359, 21, 29),
       (29360, 22, 24),
       (29361, 23, 19),
       (29362, 24, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29363, 1, 24),
       (29364, 2, 15),
       (29365, 3, 11),
       (29930, 6, 13),
       (29366, 4, 17),
       (29367, 5, 15),
       (29368, 6, 25),
       (29369, 7, 47),
       (29370, 8, 19),
       (29371, 9, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29372, 10, 25),
       (29373, 11, 20),
       (29374, 12, 25),
       (29375, 13, 19),
       (29376, 14, 27),
       (29377, 15, 16),
       (29378, 16, 18),
       (29379, 17, 20),
       (29380, 18, 25),
       (29381, 19, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29382, 20, 40),
       (29383, 21, 13),
       (29384, 22, 24),
       (29385, 23, 25),
       (29386, 24, 13),
       (29387, 25, 25),
       (29388, 26, 17),
       (29389, 27, 47),
       (29390, 28, 25),
       (29391, 29, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29392, 30, 17),
       (29393, 1, 26),
       (29394, 2, 23),
       (29395, 3, 20),
       (29396, 4, 20),
       (29397, 5, 12),
       (29398, 6, 22),
       (29399, 7, 17),
       (29400, 8, 23),
       (29401, 9, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29402, 10, 24),
       (29403, 11, 19),
       (29404, 12, 33),
       (29405, 13, 19),
       (29406, 14, 8),
       (29407, 15, 32),
       (29408, 16, 30),
       (29409, 17, 22),
       (29410, 18, 14),
       (29411, 19, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29412, 20, 14),
       (29414, 22, 25),
       (29415, 23, 20),
       (29416, 24, 14),
       (29417, 25, 27),
       (29418, 26, 19),
       (29419, 27, 32),
       (29420, 28, 26),
       (29421, 29, 15),
       (29422, 30, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29423, 1, 27),
       (29424, 2, 14),
       (29425, 3, 25),
       (29426, 4, 25),
       (29427, 5, 25),
       (29428, 6, 18),
       (29429, 7, 15),
       (29430, 8, 42),
       (29431, 9, 36),
       (29432, 10, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29433, 11, 14),
       (29434, 12, 37),
       (29435, 13, 31),
       (29436, 14, 19),
       (29437, 15, 27),
       (29438, 16, 13),
       (29439, 17, 22),
       (29440, 18, 26),
       (29441, 19, 21),
       (29442, 20, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29443, 21, 36),
       (29444, 1, 20),
       (29445, 2, 17),
       (29446, 3, 37),
       (29447, 4, 11),
       (29448, 5, 14),
       (29449, 6, 22),
       (29450, 7, 20),
       (29451, 8, 44),
       (29452, 9, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29453, 10, 29),
       (29454, 11, 22),
       (29455, 12, 41),
       (29456, 13, 11),
       (29457, 14, 12),
       (29690, 11, 19),
       (29458, 15, 36),
       (29459, 16, 13),
       (29460, 17, 19),
       (29461, 18, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29462, 19, 19),
       (29463, 20, 15),
       (29464, 21, 15),
       (29465, 22, 14),
       (29466, 23, 12),
       (29467, 1, 16),
       (29468, 2, 22),
       (29469, 3, 17),
       (29470, 4, 20),
       (29471, 5, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29472, 6, 38),
       (29473, 7, 21),
       (29474, 8, 11),
       (29475, 9, 39),
       (29476, 10, 23),
       (29477, 11, 19),
       (29478, 12, 21),
       (29479, 13, 22),
       (29480, 14, 12),
       (29481, 15, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29482, 16, 38),
       (29483, 17, 13),
       (29484, 18, 29),
       (29485, 19, 18),
       (29486, 20, 33),
       (29487, 21, 17),
       (29488, 22, 25),
       (29489, 23, 41),
       (29490, 24, 37),
       (29491, 25, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29492, 26, 22),
       (29493, 27, 31),
       (29494, 28, 23),
       (29495, 29, 15),
       (29496, 1, 31),
       (29497, 2, 33),
       (29498, 3, 12),
       (29499, 4, 14),
       (29500, 5, 30),
       (29501, 6, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29502, 7, 20),
       (29503, 8, 35),
       (29506, 11, 29),
       (29507, 12, 28),
       (29508, 13, 30),
       (29509, 14, 32),
       (29510, 15, 20),
       (29511, 16, 27),
       (29512, 17, 16),
       (29513, 18, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29514, 19, 28),
       (29515, 20, 25),
       (29516, 21, 6),
       (29517, 22, 18),
       (29518, 23, 31),
       (29519, 1, 25),
       (29520, 2, 19),
       (29521, 3, 13),
       (29522, 4, 20),
       (29523, 5, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29524, 6, 15),
       (29525, 7, 12),
       (29526, 8, 20),
       (29527, 9, 18),
       (29528, 10, 22),
       (29529, 11, 22),
       (29530, 12, 19),
       (29531, 13, 26),
       (29532, 14, 15),
       (29533, 15, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29534, 16, 33),
       (29535, 17, 27),
       (29536, 18, 14),
       (29537, 19, 11),
       (29538, 20, 16),
       (29539, 21, 11),
       (29720, 3, 13),
       (29540, 22, 30),
       (29541, 23, 14),
       (29542, 24, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29543, 25, 23),
       (29544, 1, 21),
       (29545, 2, 9),
       (29546, 3, 30),
       (29547, 4, 12),
       (29548, 5, 12),
       (29549, 6, 22),
       (29550, 7, 22),
       (29551, 8, 23),
       (29552, 9, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29787, 23, 22),
       (29553, 10, 25),
       (29554, 11, 31),
       (29555, 12, 35),
       (29556, 13, 23),
       (29557, 14, 9),
       (29558, 15, 18),
       (29559, 16, 31),
       (29560, 17, 21),
       (29561, 18, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29562, 1, 26),
       (29563, 2, 17),
       (29564, 3, 26),
       (29565, 4, 8),
       (29566, 5, 41),
       (29567, 6, 24),
       (29568, 7, 16),
       (29569, 8, 38),
       (29570, 9, 31),
       (29571, 10, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29572, 1, 17),
       (29573, 2, 31),
       (29574, 3, 14),
       (29575, 4, 29),
       (29576, 5, 24),
       (29577, 6, 22),
       (29578, 7, 18),
       (29579, 8, 35),
       (29580, 9, 29),
       (29581, 10, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29582, 11, 26),
       (29583, 12, 20),
       (29584, 13, 53),
       (29585, 14, 36),
       (29586, 15, 24),
       (29587, 16, 29),
       (29588, 17, 28),
       (29589, 18, 18),
       (29590, 19, 23),
       (29591, 20, 9)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29592, 1, 19),
       (29593, 2, 25),
       (29594, 3, 17),
       (29595, 4, 27),
       (29596, 5, 35),
       (29597, 6, 41),
       (29598, 7, 19),
       (29599, 8, 12),
       (29600, 9, 25),
       (29601, 10, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29602, 11, 17),
       (29603, 12, 26),
       (29604, 13, 28),
       (29605, 1, 39),
       (29606, 2, 13),
       (29607, 3, 16),
       (29608, 4, 19),
       (29609, 5, 15),
       (29610, 6, 29),
       (29611, 7, 11)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29612, 8, 17),
       (29613, 9, 27),
       (29614, 10, 26),
       (29615, 11, 25),
       (29616, 12, 17),
       (29617, 13, 26),
       (29618, 14, 26),
       (29619, 15, 37),
       (29620, 16, 32),
       (29621, 17, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29622, 18, 8),
       (29623, 1, 19),
       (29624, 2, 19),
       (29625, 3, 28),
       (29626, 4, 17),
       (29627, 5, 22),
       (29628, 6, 18),
       (29629, 7, 19),
       (29630, 8, 28),
       (29631, 9, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29632, 10, 17),
       (29633, 11, 15),
       (29634, 12, 23),
       (29635, 13, 19),
       (29636, 14, 19),
       (29637, 15, 25),
       (29638, 16, 3),
       (29639, 17, 4),
       (29640, 18, 18),
       (29641, 19, 5)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29642, 20, 4),
       (29643, 21, 10),
       (29644, 22, 7),
       (29645, 23, 31),
       (29646, 24, 12),
       (29647, 25, 5),
       (29648, 26, 9),
       (29649, 27, 16),
       (29650, 28, 11),
       (29651, 1, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29652, 2, 15),
       (29653, 3, 37),
       (29654, 4, 29),
       (29655, 5, 32),
       (29656, 6, 19),
       (29657, 7, 28),
       (29658, 8, 21),
       (29659, 9, 21),
       (29660, 10, 31),
       (29661, 11, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29662, 12, 29),
       (29663, 1, 20),
       (29664, 2, 40),
       (29665, 3, 31),
       (29666, 4, 31),
       (29667, 5, 16),
       (29668, 6, 20),
       (29669, 7, 24),
       (29670, 8, 31),
       (29671, 9, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29672, 10, 25),
       (29673, 11, 18),
       (29674, 12, 17),
       (29675, 13, 38),
       (29676, 14, 19),
       (29677, 15, 22),
       (29678, 16, 24),
       (29679, 17, 13),
       (29680, 1, 24),
       (29681, 2, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29682, 3, 17),
       (29683, 4, 22),
       (29684, 5, 18),
       (29685, 6, 34),
       (29686, 7, 18),
       (29687, 8, 30),
       (29688, 9, 21),
       (29689, 10, 21),
       (29691, 12, 25),
       (29692, 13, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29693, 14, 30),
       (29694, 15, 15),
       (29695, 16, 22),
       (29696, 17, 20),
       (29697, 18, 12),
       (29698, 1, 20),
       (29699, 2, 20),
       (29700, 3, 27),
       (29701, 4, 27),
       (29702, 5, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29703, 6, 13),
       (29704, 7, 20),
       (29705, 8, 15),
       (29706, 9, 39),
       (29707, 10, 28),
       (29708, 11, 18),
       (29709, 12, 23),
       (29710, 13, 23),
       (29711, 14, 18),
       (29712, 15, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29713, 16, 35),
       (29714, 17, 20),
       (29715, 18, 29),
       (29716, 19, 18),
       (29717, 20, 20),
       (29718, 1, 17),
       (29719, 2, 24),
       (29721, 4, 17),
       (29722, 5, 17),
       (29723, 6, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29724, 7, 26),
       (29725, 8, 19),
       (29726, 9, 26),
       (29727, 10, 10),
       (29728, 11, 10),
       (29729, 12, 21),
       (29730, 13, 8),
       (29731, 14, 15),
       (29732, 15, 21),
       (29733, 1, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29734, 2, 23),
       (29735, 3, 13),
       (29736, 4, 16),
       (29737, 5, 24),
       (29738, 6, 16),
       (29739, 7, 23),
       (29740, 8, 21),
       (29741, 9, 11),
       (29742, 10, 18),
       (29743, 11, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29744, 12, 16),
       (29745, 13, 26),
       (29746, 14, 13),
       (29747, 15, 36),
       (29748, 16, 37),
       (29749, 1, 26),
       (29750, 2, 19),
       (29751, 3, 26),
       (29752, 4, 20),
       (29753, 5, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29754, 6, 38),
       (29755, 7, 13),
       (29756, 8, 31),
       (29757, 9, 10),
       (29758, 10, 31),
       (29759, 11, 6),
       (29760, 12, 28),
       (29761, 13, 12),
       (29762, 14, 25),
       (29763, 15, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29764, 16, 27),
       (29765, 1, 16),
       (29766, 2, 13),
       (29767, 3, 7),
       (29768, 4, 34),
       (29769, 5, 25),
       (29770, 6, 13),
       (29771, 7, 11),
       (29772, 8, 25),
       (29773, 9, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29774, 10, 41),
       (29775, 11, 17),
       (29776, 12, 10),
       (29777, 13, 30),
       (29778, 14, 22),
       (29779, 15, 9),
       (29780, 16, 28),
       (29781, 17, 23),
       (29782, 18, 25),
       (29783, 19, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29784, 20, 18),
       (29785, 21, 27),
       (29786, 22, 18),
       (29788, 24, 18),
       (29789, 25, 20),
       (29790, 1, 29),
       (29791, 2, 39),
       (29792, 3, 31),
       (29793, 4, 22),
       (29794, 5, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29795, 6, 8),
       (29796, 7, 15),
       (29797, 8, 11),
       (29798, 9, 30),
       (29799, 10, 33),
       (29800, 11, 19),
       (29801, 12, 30),
       (29802, 13, 27),
       (29803, 14, 18),
       (29804, 15, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29805, 16, 25),
       (29806, 17, 36),
       (29807, 18, 21),
       (29808, 19, 27),
       (29809, 20, 26),
       (29810, 21, 13),
       (29811, 1, 24),
       (29812, 2, 18),
       (29859, 5, 17),
       (29813, 3, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29814, 4, 15),
       (29815, 5, 30),
       (29816, 6, 28),
       (29817, 7, 17),
       (29818, 8, 28),
       (29819, 9, 34),
       (29820, 10, 27),
       (29821, 11, 13),
       (29822, 12, 42),
       (29823, 13, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29824, 14, 18),
       (29825, 15, 20),
       (29826, 16, 22),
       (29827, 17, 13),
       (29828, 18, 29),
       (29829, 1, 15),
       (29830, 2, 28),
       (29831, 3, 12),
       (29832, 4, 24),
       (29833, 5, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29834, 6, 14),
       (29835, 7, 15),
       (29836, 8, 17),
       (29837, 9, 18),
       (29838, 10, 26),
       (29839, 11, 17),
       (29840, 12, 20),
       (29841, 13, 13),
       (29842, 14, 32),
       (29843, 15, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29844, 16, 12),
       (29845, 17, 16),
       (29846, 18, 21),
       (29847, 19, 32),
       (29848, 20, 31),
       (29849, 21, 28),
       (29850, 22, 24),
       (29851, 23, 12),
       (29852, 24, 18),
       (29853, 25, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29854, 26, 22),
       (29855, 1, 13),
       (29856, 2, 19),
       (29857, 3, 14),
       (29858, 4, 13),
       (29860, 6, 23),
       (29861, 7, 14),
       (29862, 8, 24),
       (29863, 9, 22),
       (29864, 10, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29865, 11, 26),
       (29866, 12, 14),
       (29867, 13, 15),
       (29868, 14, 23),
       (29869, 15, 28),
       (29870, 16, 21),
       (29871, 17, 15),
       (29872, 1, 28),
       (29873, 2, 19),
       (29874, 3, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29875, 4, 15),
       (29876, 5, 19),
       (29877, 6, 15),
       (29878, 7, 17),
       (29879, 8, 40),
       (29881, 10, 20),
       (29882, 11, 21),
       (29883, 12, 7),
       (29884, 13, 20),
       (29885, 14, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29886, 15, 13),
       (29887, 16, 22),
       (29888, 17, 37),
       (29889, 18, 28),
       (29890, 19, 10),
       (29891, 20, 12),
       (29892, 21, 20),
       (29893, 22, 11),
       (29894, 1, 31),
       (29895, 2, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29896, 3, 24),
       (29897, 4, 22),
       (29898, 5, 31),
       (29899, 6, 23),
       (29900, 7, 26),
       (29901, 8, 15),
       (29902, 9, 28),
       (29903, 10, 16),
       (29904, 11, 22),
       (29905, 12, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29906, 13, 19),
       (29907, 14, 17),
       (29908, 15, 28),
       (29909, 16, 24),
       (29910, 1, 11),
       (29911, 2, 16),
       (29912, 3, 22),
       (29913, 4, 16),
       (29914, 5, 26),
       (29915, 6, 10)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29916, 7, 17),
       (29917, 8, 26),
       (29918, 9, 24),
       (29919, 10, 21),
       (29920, 11, 13),
       (29921, 12, 24),
       (29922, 13, 20),
       (29923, 14, 28),
       (29924, 15, 16),
       (29925, 1, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29926, 2, 20),
       (29927, 3, 23),
       (29928, 4, 15),
       (29929, 5, 30),
       (29931, 7, 19),
       (29932, 8, 39),
       (29933, 9, 19),
       (29934, 10, 11),
       (29935, 11, 13),
       (29936, 12, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29937, 13, 18),
       (29938, 14, 19),
       (29939, 15, 20),
       (29940, 1, 18),
       (29941, 2, 19),
       (29942, 3, 15),
       (29943, 4, 13),
       (29944, 5, 21),
       (29945, 6, 23),
       (29946, 7, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29947, 8, 16),
       (29948, 9, 25),
       (29949, 10, 15),
       (29950, 11, 16),
       (29951, 12, 17),
       (29952, 13, 24),
       (29953, 14, 22),
       (29954, 15, 19),
       (29955, 16, 31),
       (29956, 17, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30357, 2, 11),
       (29957, 18, 18),
       (29958, 19, 29),
       (29959, 20, 17),
       (29960, 21, 20),
       (29961, 22, 21),
       (29962, 23, 10),
       (29963, 24, 12),
       (29964, 25, 13),
       (29965, 1, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29966, 2, 28),
       (29967, 3, 43),
       (29968, 4, 20),
       (29969, 5, 39),
       (29970, 6, 23),
       (29971, 7, 19),
       (29972, 8, 27),
       (29973, 9, 23),
       (29974, 10, 23),
       (29975, 11, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29976, 12, 29),
       (29977, 13, 29),
       (29978, 14, 21),
       (29979, 1, 23),
       (29980, 2, 21),
       (29981, 3, 30),
       (29982, 4, 28),
       (29983, 5, 15),
       (29984, 6, 25),
       (29985, 7, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29986, 8, 40),
       (29987, 9, 42),
       (29988, 10, 32),
       (29989, 11, 26),
       (29990, 12, 21),
       (29991, 13, 22),
       (29992, 14, 40),
       (29993, 15, 18),
       (29994, 16, 19),
       (29995, 17, 39)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (29996, 18, 19),
       (29997, 1, 20),
       (29998, 2, 17),
       (29999, 3, 27),
       (30000, 4, 17),
       (30001, 5, 25),
       (30002, 6, 29),
       (30003, 7, 16),
       (30004, 8, 20),
       (30005, 9, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30006, 10, 24),
       (30007, 11, 14),
       (30008, 12, 26),
       (30009, 13, 28),
       (30010, 14, 21),
       (30011, 15, 21),
       (30012, 16, 20),
       (30013, 17, 22),
       (30014, 18, 20),
       (30015, 19, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30016, 1, 28),
       (30017, 2, 35),
       (30018, 3, 40),
       (30019, 4, 24),
       (30020, 5, 13),
       (30021, 6, 27),
       (30022, 7, 35),
       (30023, 8, 17),
       (30024, 9, 12),
       (30025, 10, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30026, 11, 21),
       (30027, 12, 43),
       (30028, 13, 32),
       (30029, 14, 24),
       (30030, 15, 34),
       (30031, 16, 29),
       (30032, 1, 29),
       (30033, 2, 19),
       (30034, 3, 19),
       (30035, 4, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30036, 5, 29),
       (30037, 6, 19),
       (30038, 7, 37),
       (30039, 8, 15),
       (30040, 9, 19),
       (30041, 10, 12),
       (30042, 11, 20),
       (30043, 12, 47),
       (30044, 13, 21),
       (30045, 14, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30046, 1, 32),
       (30047, 2, 22),
       (30048, 3, 9),
       (30049, 4, 23),
       (30050, 5, 16),
       (30051, 6, 31),
       (30052, 7, 32),
       (30053, 8, 22),
       (30054, 9, 19),
       (30055, 10, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30056, 11, 23),
       (30057, 12, 18),
       (30058, 13, 19),
       (30059, 14, 14),
       (30060, 15, 10),
       (30061, 16, 19),
       (30062, 17, 24),
       (30063, 18, 35),
       (30064, 19, 25),
       (30065, 20, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30066, 1, 25),
       (30067, 2, 29),
       (30068, 3, 28),
       (30069, 4, 21),
       (30070, 5, 42),
       (30071, 6, 23),
       (30072, 7, 12),
       (30073, 8, 19),
       (30074, 9, 15),
       (30075, 10, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30076, 11, 43),
       (30077, 12, 17),
       (30078, 13, 23),
       (30079, 14, 22),
       (30080, 15, 20),
       (30081, 16, 21),
       (30082, 17, 18),
       (30083, 18, 15),
       (30084, 19, 24),
       (30085, 20, 12)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30086, 21, 37),
       (30087, 22, 14),
       (30088, 23, 20),
       (30089, 24, 12),
       (30090, 25, 28),
       (30091, 26, 20),
       (30092, 27, 38),
       (30093, 28, 27),
       (30094, 1, 36),
       (30095, 2, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30096, 3, 26),
       (30097, 4, 27),
       (30098, 5, 49),
       (30099, 6, 31),
       (30100, 7, 19),
       (30101, 8, 33),
       (30102, 9, 47),
       (30103, 10, 54),
       (30104, 11, 33),
       (30105, 12, 17)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30106, 13, 28),
       (30107, 1, 19),
       (30108, 2, 25),
       (30109, 3, 15),
       (30110, 4, 38),
       (30111, 5, 19),
       (30112, 6, 20),
       (30113, 7, 28),
       (30114, 8, 26),
       (30115, 9, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30116, 10, 19),
       (30117, 11, 33),
       (30118, 12, 28),
       (30119, 13, 28),
       (30120, 14, 31),
       (30121, 15, 44),
       (30122, 16, 18),
       (30123, 17, 23),
       (30124, 18, 12),
       (30125, 19, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30126, 20, 15),
       (30127, 21, 19),
       (30128, 22, 26),
       (30129, 23, 29),
       (30398, 23, 21),
       (30130, 24, 32),
       (30131, 25, 26),
       (30132, 26, 35),
       (30133, 27, 17),
       (30134, 28, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30135, 1, 39),
       (30136, 2, 25),
       (30137, 3, 15),
       (30138, 4, 16),
       (30139, 5, 24),
       (30140, 6, 13),
       (30141, 7, 25),
       (30142, 8, 29),
       (30143, 9, 24),
       (30144, 10, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30145, 11, 23),
       (30146, 12, 21),
       (30147, 13, 13),
       (30148, 14, 14),
       (30149, 15, 15),
       (30150, 16, 37),
       (30151, 17, 12),
       (30152, 18, 14),
       (30153, 19, 16),
       (30154, 20, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30155, 21, 11),
       (30156, 22, 29),
       (30157, 23, 20),
       (30158, 24, 14),
       (30159, 25, 29),
       (30160, 26, 24),
       (30161, 27, 18),
       (30162, 28, 21),
       (30163, 29, 46),
       (30164, 30, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30165, 31, 15),
       (30166, 32, 21),
       (30167, 33, 21),
       (30168, 34, 33),
       (30169, 35, 13),
       (30170, 36, 19),
       (30171, 37, 16),
       (30172, 38, 21),
       (30173, 39, 24),
       (30174, 1, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30175, 2, 10),
       (30176, 3, 30),
       (30177, 4, 41),
       (30178, 5, 40),
       (30179, 6, 36),
       (30180, 7, 44),
       (30181, 8, 32),
       (30182, 9, 34),
       (30183, 10, 17),
       (30184, 11, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30185, 12, 33),
       (30186, 13, 32),
       (30187, 14, 20),
       (30188, 15, 23),
       (30189, 16, 32),
       (30190, 17, 24),
       (30191, 18, 16),
       (30192, 19, 24),
       (30193, 20, 13),
       (30194, 21, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30195, 22, 25),
       (30196, 23, 33),
       (30197, 24, 19),
       (30198, 25, 22),
       (30199, 26, 21),
       (30200, 27, 22),
       (30201, 28, 23),
       (30202, 29, 22),
       (30203, 30, 18),
       (30204, 31, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30205, 32, 28),
       (30206, 33, 15),
       (30207, 34, 27),
       (30208, 35, 23),
       (30209, 36, 15),
       (30210, 37, 28),
       (30211, 38, 22),
       (30212, 39, 17),
       (30213, 40, 19),
       (30214, 1, 43)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30215, 2, 38),
       (30216, 3, 22),
       (30217, 4, 11),
       (30444, 19, 13),
       (30218, 5, 32),
       (30219, 6, 15),
       (30220, 7, 25),
       (30221, 8, 20),
       (30222, 9, 32),
       (30223, 10, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30224, 11, 31),
       (30225, 12, 13),
       (30226, 13, 24),
       (30227, 14, 18),
       (30228, 15, 31),
       (30229, 16, 21),
       (30230, 17, 37),
       (30231, 18, 25),
       (30232, 19, 27),
       (30233, 20, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30234, 21, 15),
       (30235, 22, 25),
       (30236, 23, 31),
       (30237, 24, 23),
       (30238, 25, 38),
       (30239, 26, 29),
       (30240, 27, 32),
       (30241, 28, 26),
       (30242, 29, 8),
       (30243, 1, 7)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30244, 2, 15),
       (30245, 3, 23),
       (30246, 4, 23),
       (30247, 5, 35),
       (30248, 6, 23),
       (30249, 7, 28),
       (30250, 8, 14),
       (30251, 9, 32),
       (30252, 10, 16),
       (30253, 11, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30254, 12, 18),
       (30255, 13, 14),
       (30256, 14, 19),
       (30257, 15, 27),
       (30258, 16, 18),
       (30259, 17, 44),
       (30260, 18, 21),
       (30261, 19, 20),
       (30262, 20, 29),
       (30263, 21, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30264, 22, 21),
       (30265, 23, 22),
       (30266, 24, 19),
       (30268, 1, 22),
       (30269, 2, 13),
       (30270, 3, 10),
       (30271, 4, 18),
       (30272, 5, 27),
       (30273, 6, 26),
       (30274, 7, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30275, 8, 9),
       (30276, 9, 13),
       (30277, 10, 21),
       (30278, 11, 38),
       (30279, 12, 30),
       (30280, 13, 27),
       (30281, 14, 17),
       (30282, 15, 20),
       (30283, 16, 7),
       (30284, 17, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30285, 18, 25),
       (30286, 19, 21),
       (30287, 20, 12),
       (30288, 21, 23),
       (30289, 22, 16),
       (30290, 23, 28),
       (30291, 24, 17),
       (30292, 25, 35),
       (30293, 26, 25),
       (30294, 27, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30295, 1, 20),
       (30296, 2, 28),
       (30297, 3, 36),
       (30298, 4, 14),
       (30299, 5, 35),
       (30300, 6, 22),
       (30301, 7, 13),
       (30302, 8, 22),
       (30303, 9, 18),
       (30304, 10, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30305, 11, 31),
       (30306, 12, 19),
       (30307, 13, 17),
       (30308, 14, 23),
       (30309, 15, 14),
       (30310, 16, 32),
       (30311, 17, 13),
       (30312, 18, 31),
       (30313, 19, 16),
       (30314, 20, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30315, 21, 20),
       (30316, 22, 16),
       (30317, 23, 28),
       (30318, 24, 15),
       (30319, 25, 26),
       (30320, 26, 19),
       (30321, 1, 16),
       (30322, 2, 27),
       (30323, 3, 23),
       (30324, 4, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30325, 5, 24),
       (30326, 6, 37),
       (30327, 7, 24),
       (30328, 8, 19),
       (30329, 9, 21),
       (30330, 10, 20),
       (30331, 11, 14),
       (30332, 12, 19),
       (30333, 13, 21),
       (30334, 14, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30335, 15, 17),
       (30336, 16, 14),
       (30337, 17, 28),
       (30338, 18, 15),
       (30339, 1, 23),
       (30340, 2, 24),
       (30341, 3, 18),
       (30474, 8, 20),
       (30342, 4, 31),
       (30343, 5, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30344, 6, 20),
       (30345, 7, 16),
       (30346, 8, 23),
       (30347, 9, 19),
       (30348, 10, 14),
       (30349, 11, 42),
       (30350, 12, 26),
       (30351, 13, 27),
       (30352, 14, 30),
       (30353, 15, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30354, 16, 13),
       (30355, 17, 18),
       (30356, 1, 16),
       (30358, 3, 35),
       (30359, 4, 38),
       (30360, 5, 22),
       (30361, 6, 15),
       (30362, 7, 34),
       (30363, 8, 17),
       (30364, 9, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30365, 10, 21),
       (30366, 11, 34),
       (30367, 12, 38),
       (30368, 13, 16),
       (30369, 14, 31),
       (30370, 15, 30),
       (30371, 16, 29),
       (30372, 17, 32),
       (30373, 18, 17),
       (30374, 19, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30375, 20, 29),
       (30376, 1, 23),
       (30377, 2, 31),
       (30378, 3, 34),
       (30379, 4, 17),
       (30380, 5, 22),
       (30381, 6, 23),
       (30382, 7, 35),
       (30383, 8, 27),
       (30384, 9, 13)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30385, 10, 20),
       (30430, 5, 23),
       (30386, 11, 35),
       (30387, 12, 48),
       (30388, 13, 32),
       (30389, 14, 19),
       (30390, 15, 20),
       (30391, 16, 13),
       (30392, 17, 29),
       (30393, 18, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30394, 19, 16),
       (30395, 20, 22),
       (30396, 21, 28),
       (30397, 22, 26),
       (30399, 24, 24),
       (30400, 25, 23),
       (30401, 1, 17),
       (30402, 2, 20),
       (30403, 3, 10),
       (30404, 4, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30405, 5, 28),
       (30406, 6, 30),
       (30407, 7, 29),
       (30408, 8, 24),
       (30409, 9, 39),
       (30410, 10, 25),
       (30411, 11, 19),
       (30412, 12, 33),
       (30413, 13, 19),
       (30414, 14, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30415, 15, 22),
       (30416, 16, 18),
       (30417, 17, 12),
       (30418, 18, 23),
       (30419, 19, 16),
       (30420, 20, 40),
       (30421, 21, 22),
       (30422, 22, 12),
       (30423, 23, 22),
       (30424, 24, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30425, 25, 20),
       (30426, 1, 34),
       (30427, 2, 8),
       (30428, 3, 25),
       (30429, 4, 31),
       (30431, 6, 26),
       (30432, 7, 42),
       (30433, 8, 12),
       (30434, 9, 24),
       (30435, 10, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30436, 11, 18),
       (30437, 12, 29),
       (30438, 13, 18),
       (30439, 14, 21),
       (30440, 15, 35),
       (30441, 16, 26),
       (30442, 17, 23),
       (30443, 18, 33),
       (30445, 20, 32),
       (30446, 21, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30447, 22, 23),
       (30448, 1, 29),
       (30449, 2, 26),
       (30450, 3, 28),
       (30451, 4, 22),
       (30452, 5, 17),
       (30453, 6, 33),
       (30454, 7, 21),
       (30455, 8, 18),
       (30457, 10, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30458, 11, 47),
       (30459, 12, 27),
       (30460, 13, 26),
       (30461, 14, 26),
       (30462, 15, 26),
       (30463, 16, 22),
       (30464, 17, 36),
       (30465, 18, 15),
       (30466, 19, 23),
       (30467, 1, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30468, 2, 34),
       (30469, 3, 18),
       (30470, 4, 20),
       (30471, 5, 32),
       (30472, 6, 18),
       (30473, 7, 12),
       (30475, 9, 22),
       (30476, 10, 30),
       (30478, 12, 31),
       (30479, 13, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30480, 14, 18),
       (30481, 1, 32),
       (30482, 2, 18),
       (30483, 3, 32),
       (30484, 4, 36),
       (30485, 5, 23),
       (30486, 6, 18),
       (30487, 7, 13),
       (30488, 8, 26),
       (30489, 9, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30490, 10, 24),
       (30491, 11, 22),
       (30492, 12, 29),
       (30493, 13, 23),
       (30494, 14, 20),
       (30495, 15, 23),
       (30496, 16, 31),
       (30497, 17, 35),
       (30498, 18, 20),
       (30499, 19, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30500, 20, 13),
       (30501, 21, 22),
       (30502, 1, 38),
       (30503, 2, 22),
       (30504, 3, 26),
       (30505, 4, 28),
       (30506, 5, 28),
       (30507, 6, 27),
       (30508, 7, 13),
       (30509, 8, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30510, 9, 24),
       (30511, 10, 27),
       (30512, 11, 19),
       (30513, 12, 29),
       (30514, 13, 32),
       (30515, 14, 24),
       (30516, 15, 25),
       (30517, 16, 24),
       (30518, 17, 21),
       (30519, 18, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30520, 19, 27),
       (30521, 20, 40),
       (30522, 21, 29),
       (30523, 22, 30),
       (30524, 1, 29),
       (30525, 2, 26),
       (30526, 3, 19),
       (30527, 4, 31),
       (30528, 5, 28),
       (30529, 6, 14)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30530, 7, 32),
       (30531, 8, 26),
       (30532, 9, 32),
       (30533, 10, 46),
       (30534, 11, 25),
       (30535, 12, 33),
       (30536, 13, 18),
       (30537, 14, 26),
       (30538, 15, 28),
       (30539, 16, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30540, 17, 25),
       (30541, 18, 26),
       (30542, 1, 32),
       (30543, 2, 33),
       (30544, 3, 35),
       (30545, 4, 13),
       (30546, 5, 28),
       (30547, 6, 22),
       (30548, 7, 32),
       (30549, 8, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30550, 9, 23),
       (30551, 10, 21),
       (30552, 1, 31),
       (30553, 2, 20),
       (30554, 3, 14),
       (30555, 4, 22),
       (30556, 5, 24),
       (30557, 6, 17),
       (30602, 22, 24),
       (30558, 7, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30559, 8, 30),
       (30560, 9, 20),
       (30561, 10, 19),
       (30562, 11, 29),
       (30563, 12, 19),
       (30564, 13, 40),
       (30565, 14, 42),
       (30566, 15, 28),
       (30567, 16, 35),
       (30568, 17, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30569, 18, 31),
       (30570, 19, 42),
       (30571, 20, 16),
       (30572, 21, 26),
       (30573, 22, 27),
       (30574, 23, 20),
       (30575, 24, 37),
       (30576, 25, 14),
       (30577, 26, 15),
       (30578, 27, 50)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30579, 28, 28),
       (30580, 29, 21),
       (30581, 1, 37),
       (30582, 2, 41),
       (30583, 3, 18),
       (30584, 4, 13),
       (30585, 5, 18),
       (30586, 6, 16),
       (30587, 7, 22),
       (30588, 8, 34)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30589, 9, 25),
       (30590, 10, 30),
       (30591, 11, 18),
       (30592, 12, 28),
       (30593, 13, 9),
       (30594, 14, 24),
       (30595, 15, 20),
       (30596, 16, 24),
       (30597, 17, 30),
       (30598, 18, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30599, 19, 18),
       (30600, 20, 17),
       (30601, 21, 13),
       (30692, 19, 12),
       (30603, 23, 28),
       (30604, 24, 30),
       (30605, 1, 25),
       (30606, 2, 23),
       (30607, 3, 35),
       (30608, 4, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30609, 5, 18),
       (30610, 6, 33),
       (30611, 7, 24),
       (30612, 8, 12),
       (30613, 9, 27),
       (30614, 10, 25),
       (30615, 11, 14),
       (30616, 12, 25),
       (30617, 13, 21),
       (30618, 14, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30619, 15, 19),
       (30620, 16, 31),
       (30621, 17, 29),
       (30622, 18, 27),
       (30623, 19, 8),
       (30624, 20, 35),
       (30625, 21, 17),
       (30626, 1, 26),
       (30627, 2, 19),
       (30628, 3, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30629, 4, 23),
       (30630, 5, 20),
       (30631, 6, 26),
       (30632, 7, 15),
       (30633, 8, 22),
       (30634, 9, 29),
       (30635, 10, 39),
       (30636, 11, 20),
       (30637, 12, 21),
       (30638, 13, 30)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30639, 14, 23),
       (30640, 15, 25),
       (30641, 16, 46),
       (30642, 17, 13),
       (30643, 18, 27),
       (30644, 19, 17),
       (30645, 20, 46),
       (30646, 21, 9),
       (30647, 1, 27),
       (30648, 2, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30649, 3, 25),
       (30650, 4, 23),
       (30651, 5, 30),
       (30652, 6, 29),
       (30653, 7, 29),
       (30654, 8, 21),
       (30655, 9, 30),
       (30656, 10, 23),
       (30657, 11, 12),
       (30658, 12, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30659, 13, 9),
       (30660, 1, 12),
       (30661, 2, 20),
       (30662, 3, 20),
       (30663, 4, 17),
       (30664, 5, 19),
       (30665, 6, 24),
       (30666, 7, 17),
       (30667, 8, 16),
       (30668, 9, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30669, 10, 45),
       (30670, 11, 28),
       (30671, 12, 26),
       (30672, 13, 22),
       (30673, 14, 28),
       (30674, 1, 26),
       (30675, 2, 10),
       (30676, 3, 40),
       (30677, 4, 40),
       (30678, 5, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30679, 6, 29),
       (30680, 7, 39),
       (30681, 8, 22),
       (30682, 9, 31),
       (30683, 10, 26),
       (30684, 11, 29),
       (30685, 12, 41),
       (30686, 13, 24),
       (30687, 14, 23),
       (30688, 15, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30689, 16, 25),
       (30690, 17, 21),
       (30691, 18, 20),
       (30693, 20, 17),
       (30694, 21, 20),
       (30696, 23, 25),
       (30697, 24, 27),
       (30698, 25, 27),
       (30699, 1, 37),
       (30700, 2, 23)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30701, 3, 29),
       (30702, 4, 37),
       (30703, 5, 38),
       (30704, 6, 30),
       (30705, 7, 32),
       (30706, 8, 24),
       (30707, 9, 38),
       (30708, 10, 22),
       (30709, 11, 36),
       (30710, 12, 20)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30711, 13, 33),
       (30712, 14, 24),
       (30713, 15, 26),
       (30714, 16, 32),
       (30715, 17, 32),
       (30716, 18, 26),
       (30717, 19, 22),
       (30718, 20, 36),
       (30719, 1, 34),
       (30720, 2, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30721, 3, 18),
       (30722, 4, 14),
       (30723, 5, 32),
       (30724, 6, 17),
       (30725, 7, 39),
       (30726, 8, 25),
       (30727, 9, 32),
       (30728, 10, 49),
       (30729, 11, 27),
       (30730, 12, 22)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30731, 13, 43),
       (30771, 2, 22),
       (30732, 14, 42),
       (30733, 15, 16),
       (30734, 16, 23),
       (30735, 17, 54),
       (30736, 18, 35),
       (30737, 19, 24),
       (30738, 20, 35),
       (30739, 21, 19)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30740, 22, 24),
       (30741, 23, 38),
       (30742, 24, 41),
       (30743, 25, 11),
       (30744, 26, 23),
       (30745, 27, 29),
       (30746, 28, 9),
       (30747, 29, 16),
       (30748, 1, 42),
       (30749, 2, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30750, 3, 39),
       (30751, 4, 27),
       (30752, 5, 39),
       (30753, 6, 16),
       (30754, 7, 42),
       (30755, 8, 35),
       (30756, 9, 43),
       (30757, 10, 38),
       (30758, 11, 16),
       (30759, 12, 61)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30760, 13, 16),
       (30761, 14, 28),
       (30762, 15, 19),
       (30763, 16, 19),
       (30764, 17, 33),
       (30765, 18, 46),
       (30766, 19, 15),
       (30767, 20, 34),
       (30768, 21, 30),
       (30769, 22, 16)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30770, 1, 47),
       (30772, 3, 31),
       (30773, 4, 33),
       (30774, 5, 30),
       (30775, 6, 36),
       (30776, 7, 36),
       (30777, 8, 49),
       (30778, 9, 28),
       (30779, 10, 35),
       (30780, 11, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30781, 1, 28),
       (30782, 2, 25),
       (30783, 3, 25),
       (30784, 4, 19),
       (30785, 5, 36),
       (30786, 6, 51),
       (30787, 7, 20),
       (30788, 8, 41),
       (30789, 9, 43),
       (30790, 10, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30791, 11, 38),
       (30792, 12, 30),
       (30793, 13, 58),
       (30794, 14, 15),
       (30795, 1, 30),
       (30796, 2, 33),
       (30797, 3, 16),
       (30798, 4, 40),
       (30799, 5, 35),
       (30800, 6, 42)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30801, 7, 19),
       (30802, 8, 56),
       (30803, 9, 33),
       (30804, 10, 32),
       (30805, 11, 48),
       (30806, 12, 32),
       (30918, 9, 10),
       (30807, 13, 27),
       (30808, 14, 25),
       (30809, 15, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30810, 16, 34),
       (30811, 17, 16),
       (30812, 1, 38),
       (30813, 2, 40),
       (30814, 3, 25),
       (30815, 4, 28),
       (30816, 5, 24),
       (30817, 6, 22),
       (30818, 7, 22),
       (30819, 8, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30820, 9, 45),
       (30821, 10, 22),
       (30822, 11, 32),
       (30823, 12, 25),
       (30824, 13, 24),
       (30825, 14, 40),
       (30826, 15, 32),
       (30827, 16, 20),
       (30828, 17, 36),
       (30829, 1, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30830, 2, 19),
       (30831, 3, 43),
       (30832, 4, 23),
       (30833, 5, 34),
       (30834, 6, 14),
       (30835, 7, 48),
       (30836, 8, 30),
       (30837, 9, 29),
       (30838, 10, 35),
       (30839, 11, 31)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30840, 12, 56),
       (30841, 13, 46),
       (30842, 1, 31),
       (30843, 2, 42),
       (30844, 3, 25),
       (30845, 4, 38),
       (30846, 5, 35),
       (30847, 6, 27),
       (30848, 7, 33),
       (30849, 8, 18)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30850, 9, 29),
       (30851, 10, 22),
       (30852, 11, 28),
       (30853, 12, 13),
       (30854, 13, 22),
       (30855, 14, 23),
       (30856, 15, 29),
       (30857, 16, 23),
       (30858, 17, 43),
       (30859, 18, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30860, 19, 30),
       (30861, 20, 52),
       (30862, 21, 20),
       (30863, 1, 37),
       (30864, 2, 26),
       (30865, 3, 22),
       (30866, 4, 35),
       (30867, 5, 22),
       (30868, 6, 46),
       (30869, 7, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30870, 8, 40),
       (30871, 9, 46),
       (30872, 10, 37),
       (30873, 11, 19),
       (30874, 1, 30),
       (30875, 2, 36),
       (30876, 3, 23),
       (30877, 4, 18),
       (30878, 5, 35),
       (30879, 6, 45)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30880, 7, 29),
       (30881, 8, 26),
       (30882, 9, 36),
       (30883, 10, 33),
       (30884, 11, 33),
       (30885, 12, 29),
       (30886, 13, 41),
       (30887, 14, 12),
       (30888, 15, 40),
       (30889, 16, 21)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30890, 17, 26),
       (30891, 18, 55),
       (30892, 19, 39),
       (30893, 1, 30),
       (30894, 2, 19),
       (30895, 3, 27),
       (30896, 4, 43),
       (30897, 5, 35),
       (30898, 6, 29),
       (30899, 7, 25)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30900, 8, 14),
       (30901, 9, 40),
       (30902, 10, 48),
       (30903, 11, 29),
       (30904, 12, 38),
       (30905, 13, 24),
       (30906, 14, 44),
       (30907, 15, 28),
       (30908, 16, 26),
       (30909, 17, 33)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30910, 1, 40),
       (30911, 2, 44),
       (30912, 3, 30),
       (30913, 4, 34),
       (30914, 5, 27),
       (30915, 6, 24),
       (30916, 7, 33),
       (30917, 8, 37),
       (30919, 10, 36),
       (30920, 11, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30921, 12, 34),
       (30922, 13, 26),
       (30923, 14, 54),
       (30924, 15, 45),
       (30925, 16, 37),
       (30926, 17, 31),
       (30927, 18, 34),
       (30928, 1, 36),
       (30929, 2, 38),
       (30930, 3, 47)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30931, 4, 40),
       (30932, 5, 13),
       (30933, 6, 33),
       (30934, 7, 38),
       (30935, 8, 31),
       (30936, 9, 33),
       (30937, 10, 46),
       (30938, 11, 37),
       (30939, 12, 20),
       (30940, 13, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30941, 14, 36),
       (30942, 15, 42),
       (30943, 16, 19),
       (30944, 17, 18),
       (30945, 18, 51),
       (30946, 19, 31),
       (30947, 20, 33),
       (30948, 1, 29),
       (30949, 2, 44),
       (30950, 3, 41)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30951, 4, 34),
       (30952, 5, 20),
       (30953, 6, 31),
       (30954, 7, 28),
       (30955, 8, 37),
       (30956, 1, 32),
       (30957, 2, 36),
       (30958, 3, 33),
       (30959, 4, 21),
       (30960, 5, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30961, 6, 24),
       (30962, 7, 19),
       (30963, 8, 22),
       (30964, 9, 30),
       (30965, 10, 26),
       (30966, 11, 22),
       (30967, 12, 37),
       (30968, 13, 36),
       (30969, 14, 34),
       (30970, 15, 26)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30971, 16, 16),
       (30972, 17, 29),
       (30973, 18, 32),
       (30974, 19, 43),
       (30975, 20, 12),
       (30976, 21, 37),
       (30977, 1, 36),
       (30978, 2, 26),
       (30979, 3, 34),
       (30980, 4, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30981, 5, 24),
       (30982, 6, 33),
       (30983, 7, 36),
       (30984, 8, 67),
       (30985, 9, 19),
       (30986, 10, 29),
       (30987, 11, 24),
       (30988, 12, 30),
       (30989, 13, 15),
       (30990, 14, 37)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (30991, 15, 23),
       (30992, 16, 35),
       (30993, 17, 34),
       (30994, 18, 19),
       (30995, 1, 24),
       (30996, 2, 38),
       (30997, 3, 40),
       (30998, 4, 32),
       (30999, 5, 15),
       (31000, 6, 28)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (31001, 7, 39),
       (31002, 8, 31),
       (31003, 9, 30),
       (31004, 10, 28),
       (31005, 11, 20),
       (31006, 12, 44),
       (31007, 13, 36),
       (31008, 14, 34),
       (31009, 15, 25),
       (31010, 16, 27)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (31011, 17, 35),
       (31012, 18, 21),
       (31013, 19, 44),
       (31014, 20, 23),
       (31015, 21, 43),
       (31016, 22, 52),
       (31017, 23, 52),
       (31018, 24, 23),
       (31019, 1, 29),
       (31020, 2, 35)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (31021, 3, 17),
       (31022, 4, 25),
       (31023, 5, 28),
       (31024, 6, 37),
       (31025, 7, 31),
       (31026, 8, 29),
       (31027, 9, 31),
       (31028, 10, 50),
       (31029, 11, 30),
       (31030, 12, 29)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (31031, 13, 20),
       (31032, 14, 20),
       (31033, 15, 43),
       (31034, 16, 21),
       (31035, 17, 38),
       (31036, 18, 45),
       (31037, 19, 31),
       (31038, 20, 51),
       (31039, 21, 35),
       (31040, 1, 24)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (31041, 2, 24),
       (31042, 3, 40),
       (31043, 4, 70),
       (31044, 5, 20),
       (31045, 6, 39),
       (31046, 7, 16),
       (31047, 8, 39),
       (31048, 9, 33),
       (31049, 10, 37),
       (31050, 11, 32)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (31051, 12, 49),
       (31052, 13, 34),
       (31053, 14, 22),
       (31054, 15, 21),
       (31055, 1, 28),
       (31056, 2, 25),
       (31057, 3, 43),
       (31058, 4, 34),
       (31059, 5, 26),
       (31060, 6, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (31061, 7, 20),
       (31062, 8, 38),
       (31063, 9, 41),
       (31064, 10, 29),
       (31065, 11, 24),
       (31066, 12, 33),
       (31067, 13, 25),
       (31068, 14, 22),
       (31069, 15, 26),
       (31070, 16, 38)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (31071, 17, 26),
       (31072, 18, 20),
       (31073, 19, 31),
       (31074, 20, 25),
       (31075, 21, 32),
       (31076, 22, 20),
       (31077, 23, 33),
       (31078, 24, 21),
       (31079, 25, 20),
       (31080, 26, 15)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (31081, 27, 34),
       (31082, 1, 25),
       (31083, 2, 46),
       (31084, 3, 27),
       (31085, 4, 15),
       (31086, 5, 35),
       (31087, 6, 39),
       (31088, 7, 19),
       (31089, 8, 34),
       (31090, 9, 36)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (31091, 10, 23),
       (31092, 11, 42),
       (31093, 12, 21),
       (31094, 13, 18),
       (31095, 14, 31),
       (31096, 15, 26),
       (31097, 16, 30),
       (31098, 17, 36),
       (31099, 18, 36),
       (31100, 19, 40)
ON CONFLICT DO NOTHING;
INSERT INTO static.verses (id, verse_nr, verse_word_count)
VALUES (31101, 20, 15),
       (31102, 21, 12)
ON CONFLICT DO NOTHING;
