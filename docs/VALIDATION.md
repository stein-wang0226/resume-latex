# 交付检查

检查日期：2026-11-12，macOS arm64。

## 已完成

- 使用 Tectonic 0.17.0 实际编译 `resume.tex` 和 `template.tex`，不是用图片模拟 PDF。
- 成品为 A4 两页，空白模板为 A4 一页。
- 最终构建日志未出现 `Missing character`、`Overfull \hbox` 或 `Overfull \vbox`。
- PDF 正文可选择、搜索和提取。
- Noto Sans SC Regular / Medium 均通过字体解析检查，每个包含 30,890 个 Unicode 映射；Noto Serif SC SemiBold 包含 30,928 个映射。IBM Plex 字体也均通过解析检查。
- 成品中的八个实际使用字体均已嵌入：Noto Serif SC SemiBold、Noto Sans SC Regular / Medium、IBM Plex Sans Regular / Medium / SemiBold、IBM Plex Serif Regular，以及箭头所用的 CMSY10。
- 所有文本边界均在页面内部；两页已逐页查看预览，没有遮挡、截断、空白第三页或拉伸照片。
- 复旦大学条目的标题与日期位于同一基线。
- 字体与排版优化后仍为两页。第一页正文结束于约 764 pt，第二页约 751 pt，页脚位于独立区域；论文状态分行，姓名和照片比例、项目间距及技能列对齐均已逐页查看。
- 核对了 33 个关键文字标记，涵盖学校、三段实习、五篇论文、三个项目及原稿中的量化结果。
- 构建脚本、两个编辑器 JSON 配置通过语法检查。
- ZIP 完整性通过检查；将完整项目解压到另一目录后，在本机以 `--only-cached` 实际离线编译成功，仍为两页且无缺字或溢出。此检查使用本机已经缓存的宏包，不代表新电脑首次使用无需联网。

## 检查范围

验证的是编译、内容迁移及版式，不是外部论文录用、实验真实性或模型版本的独立认证。原稿信息和投稿状态待核对事项见 [CONTENT_NOTES.md](CONTENT_NOTES.md)。

实际运行环境为 Tectonic；没有登录 Overleaf 或安装完整 MacTeX 验证。项目使用标准 XeLaTeX 宏包与随项目携带的中文字体，并提供 XeLaTeX 编译入口。

## 预览

- [我的简历 PDF](../outputs/resume.pdf)
- [两页并排预览](../outputs/resume-preview.png)
- [第一页](../outputs/resume-page-1.png)
- [第二页](../outputs/resume-page-2.png)
- [空白模板 PDF](../outputs/template.pdf)
- [原始模板对照](../outputs/upstream-comparison.png)
