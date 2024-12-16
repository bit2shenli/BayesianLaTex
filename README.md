# Bayesian LaTex
NUDT - 统计决策理论与贝叶斯分析大作业（LaTex）


```
羽毛球球员表现的贝叶斯分析：胜率与多重因素的关系 
题目描述：利用贝叶斯方法分析羽毛球比赛的历史数据，建立一个预测模型，预测比赛结果（胜负）。可以考虑使用球员的历史表现、排名、比赛场地等变量来进行预测。
研究内容：建立贝叶斯分类模型（贝叶斯网络、支持向量机、决策树等），分析哪些因素（如排名、赛季表现、年龄、比赛场地类型、对手的水平等）对比赛结果的影响最大。
```
```
贝叶斯推理模型

以SHI Yu Qi男子单打为例，和他们相关的比赛数据有：

[code]

现在选择的贝叶斯推理模型（Bayesian Inference Model）是马尔可夫链蒙特卡罗（MCMC）方法，请依次详细列出怎么构建这个模型，并加以公式说明，如果需要编程请使用 matlab 并使用以上的数据来预测下一局对战的胜利概率
```


# TODO
- [ ] 将命名+入论文中
- [ ] 实力值 = 赛点次数 + 最大连续得分 + 对局轮次（暂定3种）
- [ ] 章鱼小偷进村的故事，由果推因
- [x] ~~朴素贝叶斯~~
- [ ] 加入对手国家的数据，分析对抗每个国家的胜率比较（这样的话就要加入对手每局对战赢得的球数据了...）
- [ ] 将文章中的 todo 解决掉


# code 文件夹说明
data.m								用于收集 SHI Yu Qi 在国际羽毛球联合会官网中的比赛数据
bayesian_predictive_model.m			贝叶斯模型预测胜利


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

$P(A|B)$		% 常见的公式使用前后 $ 符号

```

# 参考信息
[BWF Badminton（国际羽毛球联合会官网）](https://bwfbadminton.com/zh-cn/)
[Create LaTeX tables online）](https://www.tablesgenerator.com/)