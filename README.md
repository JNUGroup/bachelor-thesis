# 毕业设计论文

> JNU-Thesis 模板项目地址：<https://github.com/xen0n/JNUthesis

## 开关表活囊泡



## $\LaTeX{}$ 模板

### 功能特色

* 支持多种江南大学学位论文及相关材料的生成：
  - 学士：
    - 学位论文：`bachelor` 选项
    - 毕业设计：`bachelordesign` 选项，除“摘要”变为“设计总说明”之外与 `bachelor` 完全相同
    - 相关资料，外文资料翻译：详见 [`bachelor-related.tex`](./bachelor-related.tex)
    - 本科课程设计：`bachelorcoursework`选项，详见 [`bachelor-coursework.tex`](./bachelor-coursework.tex)
* 使用XeLaTeX作为排版引擎，论文源码需要使用UTF-8编码；
* 支持使用思源系列字体（`sourcefonts`选项）进行排版；
* 自动生成中文封面、中文摘要页、英文摘要页、独创性声明页等必需页面；
* 支持自动替换所有中文句号为英文句点，方便理工科论文排版：`replaceperiod` 选项。

### 注意事项

#### 关于目录排版

不要让任何一级章节编号超过个位数，比如10章或者10节。实际上，良好的文章组织以及篇幅要求的存在，一般情况下不需要担心该情况发生；但以防万一。

由于宏包对目录排版的内部设置原因，实现如同Word模板一般的“章节编号与名称之间空一个半角空格”的效果较为困难，实际上该效果是以计算章节编号均为个位数情况下编号的最大长度模拟的。这意味着如果项目编号超长，该行编号与标题文字的间距即被破坏。


#### 关于字体要求与等宽字体

**江南大学学位论文只能使用中易宋体与Times New Roman排版。** 实质上相当于本宏包唯一正确的字体选项为`winfonts`，`sourcefonts`等其他字体选项暂无用户尝试，请慎重使用。（这有可能使您不得不重新打印整份论文，造成经济损失；万一成功，请务必报告情况，以便我们更新此处提示！）

**本科生注意：查重系统要求文字可正常复制。鉴于`winfonts`选项的已知问题（见“支持环境”一节），可用`sourcefonts`或`adobefonts`选项专门为查重系统编译。**

该规定意味着任何其他字体均不能使用，包括等宽字体，这对排版程序代码等内容十分不利。本宏包作者及多位使用者均面临过类似的情况，事实证明江南大学许多学院的字体要求没有谈判空间（见下）。因此，本宏包**默认设置使等宽字体与衬线字体相同，使所有`\texttt`等命令实质上无效，以减少您提交论文时的困扰**。

虽然行内代码引用（如变量名、类名、函数/方法调用等）的字体无解，但大段代码引用仍然有可能利用等宽字体。您可以**开启`figure`环境**，将代码置于其中，并在环境中 **设置`\forcedtt`（或`\textforcedtt`）** 以强制选择等宽字体。这样一来，老师会以为等宽排版的代码属于某种形式的截图，而无视字体要求。除了引用代码时要使用“图X-X”这种较为不爽的形式之外，能够使用等宽字体排版代码，应该也属于一种妥协了吧。


确定正文不可使用其他字体的学院：

* 物联网工程学院
* 理学院
* 数字媒体学院


确定正文可少量使用其他字体的学院：

* 法学院（直接引语等情况）


### 支持环境

以下环境测试支持：

* 操作系统
  - Linux
  - macOS
  - Windows
* TeX 发行版
  - TeXLive
* 字体选项
  - `winfonts`
  - `sourcefonts`
  - `adobefonts`

以下环境存在已知问题：

* TeXLive 2016，`winfonts` 选项：PDF 内文字复制粘贴乱码
* （或已修复）macOS，MacTeX BasicTeX：校名 logo 缺失。请使用完整 MacTeX 安装


### 模板存在的问题

* 附录问题

  出于论文中出现彩图对于打印来说比较麻烦，所以可以在附录添加一个**Color figures**，这个集中打印，而且排版上很好地利用了$\LaTeX{}​$的优势，但是：

  + 添加附录后，附录所在页眉（最后几页）错乱；
  + 自动编号不是`附录A`而是`附录1`；
  + 目录中缺失`附录`字样，只有`A: Color Figures.`
