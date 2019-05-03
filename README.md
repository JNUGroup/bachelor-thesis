# 毕业设计论文

> 感谢 [Wang Xuerui](https://github.com/xen0n) 提供的 JNU-Thesis 模板，项目地址：https://github.com/xen0n/JNUthesis
>
> 此仓库毕业后转为私有仓库

**PDF 下载：**

1. [毕业论文.pdf](https://raw.githubusercontent.com/mchen19/bachelor-thesis/master/bachelor.pdf)

   [毕业论文.pdf](https://raw.githubusercontent.com/mchen19/bachelor-thesis/master/bachelor-link.pdf) `with color links`

2. [答辩用演示文稿.pdf](https://raw.githubusercontent.com/mchen19/bachelor-thesis/master/beamer.pdf)

## 含硒表面活性剂囊泡的构筑与性质研究

### 实验任务进度

1. 表活合成、提纯：
   - [x] 12+3
   - [x] 4+11
2. 不同摩尔比复配：
   + 复配外观、DLS
     - [x] 12+3
     - [x] 4+11
   + 最佳摩尔比、外观、耐盐
     - [ ] 12+3
     - [x] 4+11
   + 稳定性 `2019-04-19起每天10:00测试` `这两个样品好像没有啥区别，还原态` 
     - [x] 12+3
     - [x] 4+11
3. 不同浓度DLS
   - [ ] 12+3 `有待重复`
   - [x] 4+11
4. 氧化还原
   + 时间、外观、点板照片、粒径
     - [x] 12+3
     - [ ] 4+11 `补充，缺点板照片`
   + 多次循环（pH？DLS）
     - [x] 12+3
     - [x] 4+11 `完成3个循环`
   + 一次还原稳定性
     - [x] 12+3 `正在进行，现象不一致，2019-04-23起每日10:15测试DLS`
     - [ ] 4+11`正在氧化中，奇怪，24 hour 1.2倍过氧化氢又氧化不掉了`

## 关于 LaTeX 模板

* 支持自动替换所有中文句号为英文句点，方便理工科论文排版：`replaceperiod` 选项;
* 字体选项：`winfonts`(打印用)；`fandolfonts`(查重用).


#### 关于字体要求与等宽字体

**本科生注意：查重系统要求文字可正常复制。鉴于`winfonts`选项的已知问题（见“支持环境”一节），可用`sourcefonts`或`adobefonts`选项专门为查重系统编译。**

注意sourcefonts、adobefonts应安装在系统目录而非用户目录，此处已添加`fandolfonts`，测试正常.


#### TODO

- [ ] 附录问题

  出于论文中出现彩图对于打印来说比较麻烦，所以可以在附录添加一个**Color figures**，这个集中彩色打印，而且排版上很好地利用了\LaTeX{}​的优势，但是：

  + 添加附录后，附录所在页眉（最后几页，致谢及以后，附录被当作chapter正文）错乱，临时解决方法见issues；

- [x] 跨页子图怎样实现，例如：第一页图1-a、图1-b、图1-从，第二页图1-d.

  Solution：`\ContinuedFloat`

- [ ] ColorPages for Print

