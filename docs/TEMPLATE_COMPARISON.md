# 两个模板的比较与选择

结论：**我更推荐 `resume-chinese` 的视觉基础，同时使用 `LLM-Resume-Template` 的 LLM / Agent 内容组织思路。** 这是针对你这份两页研究型简历的审美判断，不是对两个模板的普适排名。

检查日期：2026-11-12。比较依据为两个仓库的实际 PDF、类文件、正文入口与 README，没有使用仓库星数替代排版评估。

| 维度 | LLM-Resume-Template | resume-chinese |
| --- | --- | --- |
| 视觉风格 | 中文与英文衬线字体，深蓝色标题、大图标，偏学术风格 | 中英无衬线字体，细蓝色分隔线，整体更简洁 |
| 长文阅读 | 研究结构明确，但窄日期列、嵌套列表 / 长表可能增加密度 | 单列正文可充分使用页面宽度，长篇说明更容易重排 |
| 日期布局 | 通用类支持左侧时间轴；部分示例改为正文行末日期 | `datedline` 将日期放右侧；原 `dateRange` 会拉伸“至今” |
| 编辑入口 | `resume-zh.tex`、`resume-model.tex`、`resume-agent.tex` 等不同岗位入口 | `resume.tex` 引入 `body.tex`，正文与样式分离较直接 |
| 字体与依赖 | 指定 IBM Plex Serif / Mono、Noto Serif CJK SC，原字体需自行准备 | 仓库附字体，但项目采用的中文 / Helvetica 文件授权不能仅凭模板 MIT 确认 |
| 与你的方向匹配 | 科研、LLM、Agent 内容与写作方法更贴合 | 框架通用，需要重新组织科研和项目 |
| 我的选择 | 保留研究内容层级、方法与结果的写法 | 作为主要视觉基础，重写字体、页眉、日期与分页 |

## 为什么没有直接替换文字

你的原稿约两页，包含五篇论文、三段实习和三个详细 AI4S 项目。直接填入任一原模板，容易出现不均匀密度、项目在页底断开以及不同内容重复介绍。

新项目采用：

1. **第一页建立完整履历**：教育、论文、按时间倒序排列的实习。把当前字节跳动经历移到前面。
2. **第二页展开技术工作**：集中展示阿里巴巴的 AutoResearch、Holon 与 ProtAgent，再列技能。
3. **完整保留关键结果**：2,000+ 任务包、模型规模扩展、P3 / IFEval 提升、OOD-1000 结果及三随机种子实验。
4. **统一视觉层级**：墨蓝用于分节、项目标题和重点指标；姓名与论文标题使用衬线字体，正文使用中英无衬线字体，标题使用较轻字重，不加学校水印。
5. **可携带字体与可复用宏**：替换为开放授权字体，个人资料、正文、样式和构建入口分别编辑。

最终美观程度仍有主观性；建议以 `outputs/resume.pdf` 的实际两页效果为准。后续可只改 `config.tex` 即切换照片和黑白主题。

## 对应证据

- [LLM 模板 README](https://github.com/adongwanai/LLM-Resume-Template/blob/42e52b93087fc77b93dfeb32a23302a89782d1c0/README.md)
- [LLM 模板类文件](https://github.com/adongwanai/LLM-Resume-Template/blob/42e52b93087fc77b93dfeb32a23302a89782d1c0/resume.cls)
- [LLM 原始 PDF](https://github.com/adongwanai/LLM-Resume-Template/tree/42e52b93087fc77b93dfeb32a23302a89782d1c0)
- [中文模板 README](https://github.com/zheyuye/resume-chinese/blob/49a6efb3767e344d9249561bdd7a2f67b6368725/README.md)
- [中文模板类文件](https://github.com/zheyuye/resume-chinese/blob/49a6efb3767e344d9249561bdd7a2f67b6368725/setting.cls)
- [中文模板原始 PDF](https://github.com/zheyuye/resume-chinese/blob/49a6efb3767e344d9249561bdd7a2f67b6368725/resume.pdf)
