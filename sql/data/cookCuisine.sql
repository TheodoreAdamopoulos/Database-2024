-- Insert data into Cook_Cuisine table
INSERT INTO Cook_Cuisine (cook_id, cuisine_id)
VALUES
  (1, 1),   -- John Doe (Chef) -> Italian Cuisine
  (1, 3),   -- John Doe (Chef) -> Japanese Cuisine
  (1, 5),   -- John Doe (Chef) -> French Cuisine
  (2, 1),   -- Jane Doe (Assistant Chef) -> Italian Cuisine
  (2, 7),   -- Jane Doe (Assistant Chef) -> Thai Cuisine
  (2, 10),  -- Jane Doe (Assistant Chef) -> Brazilian Cuisine
  (3, 2),   -- Alice Smith (Cook A) -> Mexican Cuisine
  (3, 4),   -- Alice Smith (Cook A) -> Chinese Cuisine
  (3, 8),   -- Alice Smith (Cook A) -> Spanish Cuisine
  (4, 2),   -- Bob Jones (Cook B) -> Mexican Cuisine
  (4, 9),   -- Bob Jones (Cook B) -> Greek Cuisine
  (5, 3),   -- Emily Brown (Cook C) -> Japanese Cuisine
  (5, 5),   -- Emily Brown (Cook C) -> French Cuisine
  (6, 4),   -- Michael Wilson (Chef) -> Chinese Cuisine
  (6, 6),   -- Michael Wilson (Chef) -> Indian Cuisine
  (6, 13),  -- Michael Wilson (Chef) -> Vietnamese Cuisine
  (7, 5),   -- Sarah Taylor (Assistant Chef) -> French Cuisine
  (7, 14),  -- Sarah Taylor (Assistant Chef) -> Turkish Cuisine
  (8, 6),   -- William Clark (Cook A) -> Indian Cuisine
  (8, 7),   -- William Clark (Cook A) -> Thai Cuisine
  (8, 15),  -- William Clark (Cook A) -> Moroccan Cuisine
  (9, 7),   -- Linda Hall (Cook B) -> Thai Cuisine
  (9, 17),  -- Linda Hall (Cook B) -> Peruvian Cuisine
  (10, 8),  -- David Davis (Cook C) -> Spanish Cuisine
  (10, 11), -- David Davis (Cook C) -> Korean Cuisine
  (11, 9),  -- Susan Lewis (Chef) -> Greek Cuisine
  (11, 10), -- Susan Lewis (Chef) -> Brazilian Cuisine
  (12, 10), -- Robert Thomas (Assistant Chef) -> Brazilian Cuisine
  (12, 18), -- Robert Thomas (Assistant Chef) -> Australian Cuisine
  (13, 11), -- Mary Rodriguez (Cook A) -> Korean Cuisine
  (13, 12), -- Mary Rodriguez (Cook A) -> Lebanese Cuisine
  (14, 12), -- James Martin (Cook B) -> Lebanese Cuisine
  (14, 13), -- James Martin (Cook B) -> Vietnamese Cuisine
  (15, 13), -- Elizabeth Hernandez (Cook C) -> Vietnamese Cuisine
  (15, 14), -- Elizabeth Hernandez (Cook C) -> Turkish Cuisine
  (15, 19), -- Elizabeth Hernandez (Cook C) -> Swedish Cuisine
  (16, 14), -- Charles Young (Chef) -> Turkish Cuisine
  (16, 15), -- Charles Young (Chef) -> Moroccan Cuisine
  (17, 15), -- Karen Nguyen (Assistant Chef) -> Moroccan Cuisine
  (17, 16), -- Karen Nguyen (Assistant Chef) -> Russian Cuisine
  (18, 16), -- Joseph Kim (Cook A) -> Russian Cuisine
  (18, 17), -- Joseph Kim (Cook A) -> Peruvian Cuisine
  (19, 17), -- Patricia Lee (Cook B) -> Peruvian Cuisine
  (19, 18), -- Patricia Lee (Cook B) -> Australian Cuisine
  (20, 18), -- Thomas Lee (Cook C) -> Australian Cuisine
  (20, 19), -- Thomas Lee (Cook C) -> Swedish Cuisine
  (21, 19), -- Barbara Choi (Chef) -> Swedish Cuisine
  (21, 20), -- Barbara Choi (Chef) -> Argentinian Cuisine
  (22, 20), -- Daniel Gonzalez (Assistant Chef) -> Argentinian Cuisine
  (22, 1),  -- Daniel Gonzalez (Assistant Chef) -> Italian Cuisine
  (23, 1),  -- Sandra Garcia (Cook A) -> Italian Cuisine
  (23, 2),  -- Sandra Garcia (Cook A) -> Mexican Cuisine
  (24, 2),  -- Christopher Wang (Cook B) -> Mexican Cuisine
  (24, 3),  -- Christopher Wang (Cook B) -> Japanese Cuisine
  (25, 3),  -- Lisa Smith (Cook C) -> Japanese Cuisine
  (25, 4),  -- Lisa Smith (Cook C) -> Chinese Cuisine
  (26, 4),  -- Matthew Johnson (Chef) -> Chinese Cuisine
  (26, 5),  -- Matthew Johnson (Chef) -> French Cuisine
  (27, 5),  -- Nancy Lee (Assistant Chef) -> French Cuisine
  (27, 6),  -- Nancy Lee (Assistant Chef) -> Indian Cuisine
  (28, 6),  -- Jennifer Taylor (Cook A) -> Indian Cuisine
  (28, 7),  -- Jennifer Taylor (Cook A) -> Thai Cuisine
  (29, 7),  -- Steven Miller (Cook B) -> Thai Cuisine
  (29, 8),  -- Steven Miller (Cook B) -> Spanish Cuisine
  (30, 8),  -- Angela Rodriguez (Cook C) -> Spanish Cuisine
  (30, 9),  -- Angela Rodriguez (Cook C) -> Greek Cuisine
  (31, 9),  -- Kevin Kim (Chef) -> Greek Cuisine
  (31, 10), -- Kevin Kim (Chef) -> Brazilian Cuisine
  (32, 10), -- Laura Martinez (Assistant Chef) -> Brazilian Cuisine
  (32, 11), -- Laura Martinez (Assistant Chef) -> Korean Cuisine
  (33, 11), -- Brian Anderson (Cook A) -> Korean Cuisine
  (33, 12), -- Brian Anderson (Cook A) -> Lebanese Cuisine
  (34, 12), -- Dorothy Brown (Cook B) -> Lebanese Cuisine
  (34, 13), -- Dorothy Brown (Cook B) -> Vietnamese Cuisine
  (35, 13), -- Gary Jones (Cook C) -> Vietnamese Cuisine
  (35, 14), -- Gary Jones (Cook C) -> Turkish Cuisine
  (36, 14), -- Karen Smith (Chef) -> Turkish Cuisine
  (36, 15), -- Karen Smith (Chef) -> Moroccan Cuisine
  (37, 15), -- Jason Rodriguez (Assistant Chef) -> Moroccan Cuisine
  (37, 16), -- Jason Rodriguez (Assistant Chef) -> Russian Cuisine
  (38, 16), -- Deborah Clark (Cook A) -> Russian Cuisine
  (38, 17), -- Deborah Clark (Cook A) -> Peruvian Cuisine
  (39, 17), -- Paul Wilson (Cook B) -> Peruvian Cuisine
  (39, 18), -- Paul Wilson (Cook B) -> Australian Cuisine
  (40, 18), -- Pamela Thomas (Cook C) -> Australian Cuisine
  (40, 19), -- Pamela Thomas (Cook C) -> Swedish Cuisine
  (41, 19), -- Justin Hall (Chef) -> Swedish Cuisine
  (41, 20), -- Justin Hall (Chef) -> Argentinian Cuisine
  (42, 20), -- Heather Jackson (Assistant Chef) -> Argentinian Cuisine
  (42, 1),  -- Heather Jackson (Assistant Chef) -> Italian Cuisine
  (43, 1),  -- Dennis Harris (Cook A) -> Italian Cuisine
  (43, 2),  -- Dennis Harris (Cook A) -> Mexican Cuisine
  (44, 2),  -- Denise Martin (Cook B) -> Mexican Cuisine
  (44, 3),  -- Denise Martin (Cook B) -> Japanese Cuisine
  (45, 3),  -- Frank Rodriguez (Cook C) -> Japanese Cuisine
  (45, 4),  -- Frank Rodriguez (Cook C) -> Chinese Cuisine
  (46, 4),  -- Teresa Davis (Chef) -> Chinese Cuisine
  (46, 5),  -- Teresa Davis (Chef) -> French Cuisine
  (47, 5),  -- Larry Lee (Assistant Chef) -> French Cuisine
  (47, 6),  -- Larry Lee (Assistant Chef) -> Indian Cuisine
  (48, 6),  -- Kathleen Nguyen (Cook A) -> Indian Cuisine
  (48, 7),  -- Kathleen Nguyen (Cook A) -> Thai Cuisine
  (49, 7),  -- Rachel Kim (Cook B) -> Thai Cuisine
  (49, 8),  -- Rachel Kim (Cook B) -> Spanish Cuisine
  (50, 8),  -- Scott Wilson (Cook C) -> Spanish Cuisine
  (50, 9),  -- Scott Wilson (Cook C) -> Greek Cuisine
  (51, 9),  -- Amy Smith (Chef) -> Greek Cuisine
  (51, 10), -- Amy Smith (Chef) -> Brazilian Cuisine
  (52, 10), -- Ryan Thomas (Assistant Chef) -> Brazilian Cuisine
  (52, 11), -- Ryan Thomas (Assistant Chef) -> Korean Cuisine
  (53, 11), -- Samantha Martinez (Cook A) -> Korean Cuisine
  (53, 12), -- Samantha Martinez (Cook A) -> Lebanese Cuisine
  (54, 12), -- Henry Jones (Cook B) -> Lebanese Cuisine
  (54, 13), -- Henry Jones (Cook B) -> Vietnamese Cuisine
  (55, 13), -- Kathryn Davis (Cook C) -> Vietnamese Cuisine
  (55, 14), -- Kathryn Davis (Cook C) -> Turkish Cuisine
  (56, 14), -- Raymond Gonzalez (Chef) -> Turkish Cuisine
  (56, 15), -- Raymond Gonzalez (Chef) -> Moroccan Cuisine
  (57, 15), -- Rita Rodriguez (Assistant Chef) -> Moroccan Cuisine
  (57, 16), -- Rita Rodriguez (Assistant Chef) -> Russian Cuisine
  (58, 16), -- Victor Wilson (Cook A) -> Russian Cuisine
  (58, 17), -- Victor Wilson (Cook A) -> Peruvian Cuisine
  (59, 17), -- Juan Garcia (Cook B) -> Peruvian Cuisine
  (59, 18), -- Juan Garcia (Cook B) -> Australian Cuisine
  (60, 18), -- Diana Rodriguez (Cook C) -> Australian Cuisine
  (60, 19); -- Diana Rodriguez (Cook C) -> Swedish Cuisine
