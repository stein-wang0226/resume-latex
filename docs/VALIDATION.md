# 交付检查

检查日期：2026-11-12，macOS arm64。

当前正文依据最新《王煜祥简历.pdf》与上一份原稿的差异同步，并完成本轮字体层级与间距优化。

## 已完成

- 使用 Tectonic 0.17.0 实际编译 `resume.tex` 和 `template.tex`，不是用图片模拟 PDF。
- 成品为 A4 两页，空白模板为 A4 一页。
- 最终构建日志未出现 `Missing character`、`Overfull \hbox` 或 `Overfull \vbox`。
- PDF 正文可选择、搜索和提取。
- Noto Sans SC Regular / Medium 均通过字体解析检查，每个包含 30,890 个 Unicode 映射；Noto Serif SC SemiBold 包含 30,928 个映射。IBM Plex 字体也均通过解析检查。
- 成品中的七个实际使用字体均已嵌入：Noto Serif SC SemiBold、Noto Sans SC Regular / Medium、IBM Plex Sans Regular / Medium、IBM Plex Serif Regular，以及箭头所用的 CMSY10。
- 所有文本边界均在页面内部；两页已逐页查看预览，没有遮挡、截断、空白第三页或拉伸照片。
- 复旦大学条目的标题与日期位于同一基线。
- 排版优化后仍为两页。第一页正文结束于约 747 pt，第二页约 788 pt，页脚位于独立区域；字节跳动三条工作链路完整位于第一页，三个 AI4S 项目和天翼交通科技实习位于第二页。
- 宋体版、楷体版与当前默认版逐页对比，移除空白并统一字体提取中的等价间隔点（`·` / `・` / `∙`）后，完整文字一致，所有条目的页面归属保持不变。
- 姓名增至 28 pt，中文分节标题使用 Noto Serif SC SemiBold；英文强调由 SemiBold 改为 Medium，正文行距从 14.4 pt 微调至 14.5 pt，论文行距和条目间距适度增加。
- 核对了 64 个关键文字标记，覆盖原稿量化结果、Oracle 校验、环境复建、9,641 个 Trace 事件、reward-to-go 和响应 token 策略梯度，以及本轮新增的科学 Harbor 项目标题、Qwen 后训练副标题和“2,000+ 个 Harbor 任务包”。
- 论文第二、第三、第五项按用户确认标为“ACL 2027 · 在审 · 一作”“ARR 在审 · 一作”和“ICLR 2027 · 在审”，三份字体版本同步采用该状态。
- 页脚仅保留页码且不显示横线，续页页眉仅保留姓名；分节标题只保留编号与中文标题，不再显示右侧英文标签和重复短横线。与简化前 PDF 逐页核对，删除这些指定重复元素后，完整正文一致；页脚文本分别为 `1 / 2` 和 `2 / 2`。
- 首页左上角加入复旦校徽，图片文件为 `assets/fudan-logo.png`；空白模板默认不显示 logo。
- 检查了 12 项旧内容排除，确认成品不再包含原稿已删除的 20/24 个软件统计、42.7% / 61.4% 对照、旧版多模态技能清单，以及本轮移除的 `Harbor v2` 和项目副标题中的 `TB-sci`。
- 构建脚本、两个编辑器 JSON 配置通过语法检查。
- ZIP 完整性通过检查；将完整项目解压到另一目录后，在本机以 `--only-cached` 实际离线编译成功，仍为两页且无缺字或溢出。此检查使用本机已经缓存的宏包，不代表新电脑首次使用无需联网。

## 宋体与楷体对照

- `outputs/resume-songti.pdf` 使用 Noto Serif SC Regular / Medium；`outputs/resume-kaiti.pdf` 使用 LXGW WenKai Regular / Medium（霞鹜文楷）。中文姓名、标题与正文均已逐段确认使用对应字体，没有混入默认的黑体正文。
- 两版正文均为 9.8 pt、行距 14.5 pt；相同内容、照片、配色、页边距和板块顺序。真实字重均为 Regular 400 / Medium 500。
- 四个新增字体文件的 Git blob 与上游原文件一致，字形覆盖检查通过；字体来源及许可证记录在 `THIRD_PARTY_NOTICES.md`。
- 两版均为 A4 两页，各有六个实际使用字体且全部嵌入。编译日志无缺字或溢出，预览无截断；宋体两页正文下边界约为 747.3 / 787.7 pt，楷体为 747.0 / 787.6 pt。
- 并排对照图保持每页原始长宽比，未拉伸页面或照片。所有 PDF 均位于项目根目录 `outputs/`。

## 检查范围

验证的是编译、内容迁移及版式，不是外部论文录用、实验真实性或模型版本的独立认证。原稿信息和投稿状态待核对事项见 [CONTENT_NOTES.md](CONTENT_NOTES.md)。

实际运行环境为 Tectonic；没有登录 Overleaf 或安装完整 MacTeX 验证。项目使用标准 XeLaTeX 宏包与随项目携带的中文字体，并提供 XeLaTeX 编译入口。

## 预览

- [我的简历 PDF](../outputs/resume.pdf)
- [两页并排预览](../outputs/resume-preview.png)
- [本轮排版优化前后对照](../outputs/typography-comparison.png)
- [页脚与分节标签简化前后对照](../outputs/layout-simplification-comparison.png)
- [宋体版 PDF](../outputs/resume-songti.pdf)
- [楷体版 PDF](../outputs/resume-kaiti.pdf)
- [宋体与楷体对照](../outputs/songti-kaiti-comparison.png)
- [第一页](../outputs/resume-page-1.png)
- [第二页](../outputs/resume-page-2.png)
- [空白模板 PDF](../outputs/template.pdf)
- [原始模板对照](../outputs/upstream-comparison.png)
