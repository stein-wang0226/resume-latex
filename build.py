#!/usr/bin/env python3
"""Build using Tectonic or XeLaTeX; Python standard library only."""
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tempfile


def main():
    target = sys.argv[1] if len(sys.argv) > 1 else "resume"
    if target not in {"resume", "template"}:
        raise SystemExit("用法：./build.sh [resume|template]")
    root = Path(__file__).resolve().parent
    output = root / "outputs"
    output.mkdir(exist_ok=True)
    work = Path(tempfile.mkdtemp(prefix="ai4s-resume-build-"))
    env = os.environ.copy()
    env["TEXINPUTS"] = str(root) + "//:" + env.get("TEXINPUTS", "")
    tectonic = shutil.which("tectonic")
    xelatex = shutil.which("xelatex")
    if tectonic:
        commands = [[tectonic, "--synctex", "--keep-logs",
                     "--outdir", str(work), target + ".tex"]]
    elif xelatex:
        command = [xelatex, "-interaction=nonstopmode", "-halt-on-error",
                   "-synctex=1", "-output-directory=" + str(work), target + ".tex"]
        commands = [command, command]
    else:
        raise SystemExit("未找到 Tectonic 或 XeLaTeX。安装方法见 README.md。")
    print("编译目录：" + str(work), flush=True)
    for command in commands:
        result = subprocess.run(command, cwd=root, env=env)
        if result.returncode:
            raise SystemExit("编译失败，日志保留在：" + str(work))
    log = (work / (target + ".log")).read_text(errors="replace")
    if re.search(r"Missing character:|Overfull \\[hv]box", log):
        raise SystemExit("发现缺字或排版溢出，请查看：" + str(work / (target + ".log")))
    # Do not replace the previous successful deliverable until checks pass.
    shutil.copy2(work / (target + ".pdf"), output / (target + ".pdf"))
    synctex = work / (target + ".synctex.gz")
    if synctex.exists():
        shutil.copy2(synctex, output / synctex.name)
    print("\nPDF：" + str(output / (target + ".pdf")))
    print("日志：" + str(work / (target + ".log")))


if __name__ == "__main__":
    main()
