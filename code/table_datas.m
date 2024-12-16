close all
clear all
clc


%% 
% 主赛事名称
main_tournaments = ["LI-NING China Masters 2024", "VICTOR China Open 2024", "Korea Open 2024"]

% 单次对局中的对手名
opponents = [["Jonatan CHRISTIE", "Kunlavut VITIDSARN", "Chico Aura DWI WARDOYO", "Chia Hao LEE"], ["Anthony Sinisuka GINTING", "Kantaphon WANGCHAROEN"], ["LEE Cheuk Yiu", "NG Ka Long Angus", "SON Wan Ho"]]

%% 与不同运动员的对局
% 主赛事总得分    运动员在本场主赛事中的总比分。注意每一场不一定是在21分时结束，可能出现延长比赛的情况，同时，也可能发生对手或本人因伤病或其他原因弃赛的情况，这些都将影响最终的总比分
% 延长赛：如果一局比赛的比分进入到21分之后，两位选手或队伍的得分相差不到两分（例如20-20），这时比赛会进入加赛，直到一方领先2分为止。这种加赛通常没有上限，直到有一方完成领先。

total_scores = [[33,42,42,42], [19, 42], [28, 42, 42]]

% 对局轮次       一般是三局两胜制，也不排除五局三胜，每场主赛事的规则由活动方规定
rounds_number = [[2,2,2,2], [2,2], [2, 2, 2]]

% 最大连续得分    与不同运动员对赛时的单次对局时的最大连续得分的数据
max_consecutive_points = [[4,6,7,7], [4, 10], [4, 5, 6]]

% 赛点次数        羽毛球中的“赛点”指的是比赛中一方可以赢得比赛的关键时刻，即如果该方赢得当前的分数，便会最终获胜。赛点次数是与不同运动员对赛时的单次对局时的赛点次数
game_points = [[0,4,3,5], [0, 3], [0, 2, 3]]

% 胜负情况        与不同运动员对赛时的单次对局时的胜负情况
victory_labels = [[0,1,1,1], [0, 1], [0, 1, 1]]

% 保存数据到.mat文件
save('ShiYuQi_table_datas.mat', 'total_scores', 'rounds_number', ...
    'max_consecutive_points', 'game_points', "victory_labels");