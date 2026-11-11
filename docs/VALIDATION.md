# 交付检查

检查日期：2026-11-12，macOS arm64。

当前正文依据最新《王煜祥简历（AI4S) (1).pdf》同步，沿用已优化的字体与版式。

## 已完成

- 使用 Tectonic 0.17.0 实际编译 `resume.tex` 和 `template.tex`，不是用图片模拟 PDF。
- 成品为 A4 两页，空白模板为 A4 一页。
- 最终构建日志未出现 `Missing character`、`Overfull \hbox` 或 `Overfull \vbox`。
- PDF 正文可选择、搜索和提取。
- Noto Sans SC Regular / Medium 均通过字体解析检查，每个包含 30,890 个 Unicode 映射；Noto Serif SC SemiBold 包含 30,928 个映射。IBM Plex 字体也均通过解析检查。
- 成品中的八个实际使用字体均已嵌入：Noto Serif SC SemiBold、Noto Sans SC Regular / Medium、IBM Plex Sans Regular / Medium / SemiBold、IBM Plex Serif Regular，以及箭头所用的 CMSY10。
- 所有文本边界均在页面内部；两页已逐页查看预览，没有遮挡、截断、空白第三页或拉伸照片。
- 复旦大学条目的标题与日期位于同一基线。
- 新内容同步后仍为两页。第一页正文结束于约 735 pt，第二页约 785 pt，页脚位于独立区域；字节跳动三条工作链路完整位于第一页，三个 AI4S 项目和天翼交通科技实习位于第二页。
- 核对了 61 个关键文字标记，覆盖原稿量化结果及新加入的 Oracle 校验、环境复建、9,641 个 Trace 事件、reward-to-go 和响应 token 策略梯度等表述。
- 检查了 10 项旧内容排除，确认成品不再包含最新原稿已删除的 20/24 个软件统计、42.7% / 61.4% 对照和旧版多模态技能清单。
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
