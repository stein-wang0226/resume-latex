# 王煜祥 · AI4S LaTeX 简历

可直接编辑和编译的本地 LaTeX 项目。已根据你的原始 PDF 整理为两页研究型简历：第一页展示教育、论文和实习，第二页展开三个 AI4S 项目与技术能力。

排版采用墨蓝色与深灰色，姓名和论文标题使用衬线字体，正文使用协调的中英无衬线字体。分节有细线与编号，论文标题和状态分行，日期与技能内容对齐。个人照片取自原 PDF，可随时关闭。正文、样式和构建脚本相互独立。

- 成品：[我的简历 PDF](outputs/resume.pdf)
- 通用起点：[空白模板 PDF](outputs/template.pdf) / [空白模板源码](template.tex)
- [下载完整项目 ZIP（源码、字体、PDF）](https://github.com/stein-wang0226/resume-latex/archive/refs/heads/main.zip)
- [两页成品预览](outputs/resume-preview.png) / [两个原模板视觉对照](outputs/upstream-comparison.png)
- [模板比较与设计依据](docs/TEMPLATE_COMPARISON.md)
- [原稿整理与待核对事项](docs/CONTENT_NOTES.md)
- [来源与授权说明](THIRD_PARTY_NOTICES.md)

## 本地编译

本机已准备好轻量编译器 Tectonic，位置为 `~/.local/bin/tectonic`。不需要安装数 GB 的完整 MacTeX。首次编译会联网缓存 LaTeX 宏包，缓存后的相同项目可离线编译。

在本项目目录运行：

```bash
./build.sh
./build.sh template
# 或一次编译两份
make all
```

输出在 `outputs/`。构建日志和辅助文件保留在系统临时目录，命令末尾会显示其路径。脚本会检查缺字和文字溢出，失败时保留上一次成功的 PDF。`build.py` 只依赖 Python 3 标准库。

支持 Tectonic 或 XeLaTeX，优先使用 Tectonic。若已有 MacTeX / TeX Live，也可以：

```bash
xelatex -interaction=nonstopmode -halt-on-error -output-directory=outputs resume.tex
xelatex -interaction=nonstopmode -halt-on-error -output-directory=outputs resume.tex
```

第二次编译用于更新总页数。请勿使用 pdfLaTeX。

## 后续怎么改

| 要改什么 | 文件 |
| --- | --- |
| 姓名、电话、邮箱、城市、研究方向 | `content/profile.tex` |
| 学历、课程、奖项 | `content/education.tex` |
| 论文标题、作者顺位、录用 / 投稿状态 | `content/publications.tex` |
| 公司、岗位、实习日期与职责 | `content/experience.tex` |
| AutoResearch、Holon、ProtAgent | `content/projects.tex` |
| 技能 | `content/skills.tex` |
| 配色、照片开关、是否手动分页 | `config.tex` |
| 字号、行距、分节、日期布局等样式 | `ai4s-resume.cls` |
| 板块顺序 | `resume.tex` |

改完正文后运行 `./build.sh`，查看新的 `outputs/resume.pdf`。

目前正文为 9.8 pt、行距 14.4 pt，日期为 8.4 pt。中英文字体随项目携带，不需要另外安装。

| 用途 | 字体与字重 |
| --- | --- |
| 姓名 | Noto Serif SC SemiBold（思源宋体风格） |
| 中文正文 | Noto Sans SC Regular（思源黑体风格） |
| 中文标题、指标、段落重点 | Noto Sans SC Medium，避免小字号的粗体过重 |
| 英文正文 | IBM Plex Sans Regular |
| 英文标题、日期、重点 | IBM Plex Sans Medium / SemiBold |
| 英文论文标题 | IBM Plex Serif Regular |

正文、标题和论文采用不同但协调的字体层级；重点使用真实字重，不依赖人工加粗。论文状态独立成行，技能采用固定标签宽度，段落左对齐，避免中英文混排时空格被过度拉伸。

### 常用设置

在 `config.tex` 中统一调整字号与节奏：

```tex
\renewcommand{\ResumeBodySize}{9.8}
\renewcommand{\ResumeLeading}{14.4}
\renewcommand{\ResumeSectionGap}{11pt}
\renewcommand{\ResumeEntryGap}{6pt}
\renewcommand{\ResumeProjectGap}{10pt}
```

字体搭配的声明在 `ai4s-resume.cls` 顶部。新增字体时，请把开放授权的字体文件放入 `assets/fonts/` 并保存许可证。

关闭照片，在 `config.tex` 中改为：

```tex
\ResumePhotoEnabledfalse
```

黑白打印，在 `config.tex` 中改为：

```tex
\definecolor{Accent}{HTML}{222222}
```

更换照片，替换 `assets/photo.png` 或修改 `content/profile.tex` 中的路径。照片按原始比例显示。

当前在科研项目之前显式分页。大幅增删内容后，检查页数，可修改 `config.tex`：

```tex
\ResumeManualBreakfalse
```

日期、项目标题和论文条目使用 `needspace` 避免孤立标题；长段落仍允许自然分页。后续新增大量内容时，两页不是自动保证，需要重排或精简。

### 内容宏

```tex
\cvsection{实习经历}{EXPERIENCE}
\datedline{公司名称｜团队名称}{\dateRange{2026.09}{至今}}
\entrydetail{岗位名称 · 研究方向}
\begin{itemize}
  \item 说明工作方法与个人贡献，强调 \metric{可核对的结果}。
\end{itemize}

\projecttitle{项目名称｜研究问题}{机构 · 方法 / 技术路线}
\paper{完整论文标题。}{会议年份 · 状态 · 作者顺位}
\skill{训练与推理}{PyTorch、Transformers、DeepSpeed。}
```

LaTeX 中百分号写作 `\%`，下划线写作 `\_`，与号写作 `\&`。段落用空行或 `\par`，不必逐行手工加 `\\`。不要用负间距强行把长文塞回两页；先精简重复说明，必要时重新安排分页。

## 在编辑器中边写边看

项目带有 `.vscode/tasks.json`，在 TRAE / VS Code 中运行“编译我的简历”任务，或使用构建快捷键。

如果安装了 LaTeX Workshop 扩展，项目已经配置 Tectonic 和 XeLaTeX 两种 recipe，支持保存时编译、编辑器内 PDF 预览及 SyncTeX 源码定位。这些是可选编辑器功能，命令行编译不依赖扩展。

## Overleaf / 换一台电脑

将项目 ZIP 上传到 Overleaf，主文件选择 `resume.tex`，编译器选择 **XeLaTeX**。`template.tex` 是另一份主文件，使用空白模板时切换即可。字体在 `assets/fonts/` 中，不需要单独安装。

新电脑可安装 Tectonic（有 Homebrew 时使用 `brew install tectonic`），或安装 MacTeX / TeX Live 中的 XeLaTeX。字体已包含，但首次使用 Tectonic 仍需联网获取宏包。

## 本地版本管理

项目同步至 [stein-wang0226/resume-latex](https://github.com/stein-wang0226/resume-latex)，主分支为 `main`。后续编辑后可自行提交：

```bash
git add README.md LICENSE THIRD_PARTY_NOTICES.md ai4s-resume.cls config.tex \
  resume.tex template.tex build.sh build.py Makefile .gitignore \
  .vscode content assets licenses docs outputs/.gitkeep \
  outputs/resume.pdf outputs/template.pdf outputs/resume-preview.png \
  outputs/resume-page-1.png outputs/resume-page-2.png \
  outputs/template-preview.png outputs/upstream-comparison.png
git commit -m "Update resume"
git push
```

`outputs/` 中的 PDF 和预览随源码保存，便于在 GitHub 直接查看；辅助文件与本地项目打包文件仍忽略。个人信息、经历和照片都在源码中；本地项目与用于分享的通用模板可分别维护。

## 项目结构

```text
resume-template/
├── resume.tex                  我的简历主文件
├── template.tex                无个人信息的空白模板
├── ai4s-resume.cls              可复用样式与宏
├── config.tex                  外观与分页开关
├── content/                    分板块正文
├── assets/
│   ├── photo.png               从原 PDF 提取的照片
│   └── fonts/                  Noto Sans / Serif SC 与 IBM Plex 字体
├── build.sh / build.py          构建入口
├── Makefile                    make all
├── .vscode/                    编辑器任务与 LaTeX 配置
├── docs/                       模板比较、内容核对、验收记录
├── licenses/                   上游与字体许可
└── outputs/                    生成的 PDF 与预览
```
