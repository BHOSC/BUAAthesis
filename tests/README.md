# 算法强调样式回归样例

在仓库根目录执行：

```sh
xelatex -halt-on-error tests/algorithm-emphasis.tex
```

依赖与论文模板相同，另需安装 `algorithm2e` 宏包。
样例检查 `\emph` 是否仍选择斜体；若被 `ulem` 改成下划线，编译将报错。
生成的 PDF 中，`while` 和 `if` 的条件应为斜体且没有下划线，末尾三个显式下划线仍应显示。
