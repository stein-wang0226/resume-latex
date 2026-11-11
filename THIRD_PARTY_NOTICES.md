# 来源、修改和授权

本项目结合两个指定仓库的设计，重新编写了适合长篇 AI4S 研究简历的样式及正文。你的姓名、照片、教育、论文和项目数据来自你提供的 PDF。个人内容不属于任何通用模板授权。

## resume-chinese

- 作者：Zheyu Ye
- 来源：https://github.com/zheyuye/resume-chinese
- 对应版本：`49a6efb3767e344d9249561bdd7a2f67b6368725`
- 授权：MIT，原文保存在 `licenses/MIT-resume-chinese.txt`
- 使用部分：`setting.cls` 的单列布局、日期右对齐和分节思路，以及 `datedline` / `dateRange` 接口。
- 修改：字体改为开放授权 Noto Sans / Serif SC 与 IBM Plex；重写页眉、日期布局、分节和内容宏；增加分页控制、页脚、指标强调、构建脚本和分文件正文；移除对旧版 Font Awesome 和原字体的依赖。

## LLM-Resume-Template

- 作者 / 仓库维护者：adongwanai
- 来源：https://github.com/adongwanai/LLM-Resume-Template
- 对应版本：`42e52b93087fc77b93dfeb32a23302a89782d1c0`
- 仓库 README 声明：https://creativecommons.org/licenses/by/4.0/
- 使用部分：面向 LLM / Agent 的科研、实习、项目组织思路，以及强调具体贡献、评测与量化结果的写作方法。
- 修改：用你的 PDF 内容重新撰写，不使用仓库示例中的虚构人物、项目或指标；移除日期时间轴、嵌套长表和大图标。

注意：该仓库 README 声明 CC BY 4.0，但其 `resume.cls` 文件头单独标注 LPPL 1.3c，并注明 Weitian LI、Christophe Roger 及其上游。GitHub API 的 `licenseInfo` 返回空值，不能据此断言该仓库没有授权。本项目没有复制或再分发其 LPPL `resume.cls`，保留以上来源和设计借鉴说明。

## 字体

所有随项目携带的字体保持原始字体数据与名称，未修改或裁剪。均采用 SIL Open Font License 1.1。

| 字体 | 来源 | 许可证 |
| --- | --- | --- |
| Noto Sans SC Regular / Medium | https://github.com/notofonts/noto-cjk/tree/main/Sans/SubsetOTF/SC | `licenses/OFL-NotoSansSC.txt` |
| Noto Serif SC SemiBold | https://github.com/notofonts/noto-cjk/tree/main/Serif/SubsetOTF/SC | `licenses/OFL-NotoSerifSC.txt` |
| IBM Plex Sans Regular / Medium / SemiBold / Italic | https://github.com/IBM/plex/tree/master/packages/plex-sans/fonts/complete/otf | `licenses/OFL-IBMPlex.txt` |
| IBM Plex Serif Regular | https://github.com/IBM/plex/tree/master/packages/plex-serif/fonts/complete/otf | `licenses/OFL-IBMPlex.txt` |

对应 Git blob：

- Noto Sans SC Regular：`fc0fda9394367c16c1af7555a2ae4d5e2e6a6f02`
- Noto Sans SC Medium：`fafdfebf3103db4dc81d33ebd55b6786e08c9ebe`
- Noto Serif SC SemiBold：`b3598210b2805508349dae0580584e6e076ee61c`
- IBM Plex Sans Regular：`51b38a2675b2a881c68afef2de623cafca46c86b`
- IBM Plex Sans Medium：`02bb792489936ade9ae53b2e15ab1e45be5a9c1a`
- IBM Plex Sans SemiBold：`23e97340639cbf536b91060981a825c536ca75cf`
- IBM Plex Sans Italic：`c36951afcbd60c5c5c9658e9e08f604ae5efa2c8`
- IBM Plex Serif Regular：`0b19b8db4dc6c596e2b1a99cdc4ff50c99075bbe`

数学箭头使用标准 TeX 资源中的 CMSY10；本项目不再分发其字体二进制。

## 本项目新增内容

新增构建脚本、编辑器配置和样式扩展可按 MIT 使用，并保留上游所需说明。你的简历正文、照片和成品 PDF 不因通用模板许可而自动开放使用。
