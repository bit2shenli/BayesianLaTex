close all
clear all
clc

tournaments=["LI-NING China Masters 2024", "VICTOR China Open 2024"]
players_in_matches = [["Jonatan CHRISTIE", "Kunlavut VITIDSARN", "Chico Aura DWI WARDOYO", "Chia Hao LEE"], ["Anthony Sinisuka GINTING", "Kantaphon WANGCHAROEN"]]

% 比赛总得分     不一定是在21分结束，可能出现追分的情况，还可能出现弃赛的情况
total_scores=[[33,42,42,42], [19, 42]]
% 比赛场数       也有3场的情况，比如：输 赢 赢
rounds_per_match=[[2,2,2,2], [2,2]]
% 最大连续得分
max_consecutive_points=[[4,6,7,7], [4, 10]]
% 赛点次数
game_points=[[0,4,3,5], [0, 3]]
% 胜负情况
victory_labels=[[0,1,1,1], [0, 1]]

% 保存数据到.mat文件
save('shi_yu_qi_datas.mat', 'total_scores', 'rounds_per_match', 'max_consecutive_points', 'game_points', "victory_labels");