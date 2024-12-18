close all
clear all
clc


% Main Tournaments Name
main_tournaments = ["LI-NING China Masters 2024", "VICTOR China Open 2024", "Korea Open 2024"]

% Opponent Name in a Single Match
opponents = [["Jonatan CHRISTIE", "Kunlavut VITIDSARN", "Chico Aura DWI WARDOYO", "Chia Hao LEE"], ["Anthony Sinisuka GINTING", "Kantaphon WANGCHAROEN"], ["LEE Cheuk Yiu", "NG Ka Long Angus", "SON Wan Ho"]]

% Matches Against Different Athletes
% Total Score in the Main Event: The overall score achieved by the athlete in the main event. Note that each match may not necessarily end when the score reaches 21 points, as extended play may occur. Additionally, situations such as the athlete or opponent withdrawing due to injury or other reasons could affect the final total score.
% Extended play: If the score of a game reaches 21 points and the score difference between the two players or teams is less than two points (e.g., 20-20), the game will go into extra time, continuing until one side leads by 2 points. This extra time usually has no upper limit and continues until one side gains the required lead.
total_scores = [[33,42,42,42], [19, 42], [28, 42, 42]]

% Rounds Number: Typically, the match follows a best-of-three format, though a best-of-five format is also possible. The specific rules for each main event are determined by the organizers.
rounds_number = [[2,2,2,2], [2,2], [2, 2, 2]]

% Maximum consecutive points: Refers to the data of the highest number of consecutive points scored by a player during a single match against a different opponent.
max_consecutive_points = [[4,6,7,7], [4, 10], [4, 5, 6]]

% Game Points: In badminton, a "match point" refers to a critical moment in the game when one side has the opportunity to win the match. If that side wins the current point, they will be the overall winner. The term "match point occurrences" refers to the number of match points during a single match between different players.
game_points = [[0,4,3,5], [0, 3], [0, 2, 3]]

% Victory Labels: Refers to the outcome of a single match between different players, indicating whether a player won or lost the game.
victory_labels = [[0,1,1,1], [0, 1], [0, 1, 1]]

% Save data to a .mat file.
save('ShiYuQi_table_datas.mat', 'total_scores', 'rounds_number', ...'max_consecutive_points', 'game_points', "victory_labels");