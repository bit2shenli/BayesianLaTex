# Bayesian LaTex
NUDT - 统计决策理论与贝叶斯分析大作业（LaTex）

主比赛：表示一场官方的大比赛
对局：	表示同一个运动员与不同人的小对局

# TODO
- [X] 将code参数命名解释加入论文中
- [X] 实力值 = 赛点次数 + 最大连续得分 + 对局轮次（暂定3种）
- [ ] ~~章鱼小偷进村的故事，由果推因~~
- [ ] ~~朴素贝叶斯~~
- [ ] ~~？？加入对手国家的数据，分析对抗每个国家的胜率比较（这样的话就要加入对手每局对战赢得的球数据了...）~~
- [ ] 将文章中的 todo 解决掉
- [ ] 补补在文中的引用


# code 文件夹说明
- table_datas.m，用于收集 SHI Yu Qi 在国际羽毛球联合会官网中的比赛数据
- bayesian_predictive_model.m，贝叶斯模型预测胜利


# LaTex
## 安装 LaTex
- [basic-miktex-24.1-x64.exe](https://mirrors.bfsu.edu.cn/CTAN/systems/win32/miktex/setup/windows-x64/basic-miktex-24.1-x64.exe)
- [strawberry-perl-5.40.0.1-64bit.msi](https://objects.githubusercontent.com/github-production-release-asset-2e65be/23202375/8486bfd5-d9e2-40cb-9209-7d3f39b77548?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20241124%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20241124T054013Z&X-Amz-Expires=300&X-Amz-Signature=52063408161cfef49d71dd3a262ed7abbfd6a476595637cfc27fb2f06df16ec4&X-Amz-SignedHeaders=host&response-content-disposition=attachment%3B%20filename%3Dstrawberry-perl-5.40.0.1-64bit.msi&response-content-type=application%2Foctet-stream)

## LaTex 常用操作
```bash
Ctrl + Alt + B              # 运行编译命令，生成 PDF 文件 ====> 通过 VSCode 的面板 Ctrl + Shift + P 再输入 Latex Workshop: Build LaTeX project 
```

## LaTex 常用语法
```
% 注释
\begin{comment}
\subsection{子章节}
123

\subsubsection{子章节的子章节}
123

\begin{enumerate}
	\item 123
	\item 123
\end{enumerate}

\begin{itemize}
	\item ...
	\item ...
\end{itemize}

\begin{description}
	\item[123]
	\item[123] 
\end{description}

\end{comment}


$P(A|B)$						% 常见的公式使用前后 $ 符号
bayesian\_predictive\_model.m	% 下划线前面必须要加 \_，否则报错
一大段蓝色解决办法：长英文前后空格

```

# 参考文献
- Wang, Z. and Chu, X., 2021. 贝叶斯决策理论对复杂运动决策中运动预期的启发——以
网球和足球为例. Psychological Science Progress, 7, 1300–1312.
- D. F. Percy.A Mathematical Analysis of Badminton Scoring Systems[J].Operational Research Applied to Sports, 2015：181-200.8
- Niu, Z., 2012. 基于贝叶斯网络的NBA比分预测和球员能力评估模型. Master’s Thesis,
Huazhong University of Science and Technology.
- BWF, 2024. BWF Badminton (羽毛球世界联合会官网). Available at: https://
bwfbadminton.com/zh-cn/. Accessed on: December 17, 2024.
- Strings and Paddles, 2024. The History of Badminton. Available at: https://
stringsandpaddles.com/the-history-of-badminton/. Accessed on: December 17, 2024.
- BWFBadminton, 2024. Shi Yuqi – LI-NING China Masters 2024. Available at: https:
//bwfbadminton.com/zh-cn/player/57945/shi-yu-qi/. Accessed on: December 17, 2024.
- [BWF Badminton（国际羽毛球联合会官网）](https://bwfbadminton.com/zh-cn/)
- [Create LaTeX tables online）](https://www.tablesgenerator.com/)
- [The History of Badminton](https://stringsandpaddles.com/the-history-of-badminton/)