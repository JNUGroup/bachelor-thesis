毕业设计论文

> 感谢 [Wang Xuerui](https://github.com/xen0n) 提供的 JNU-Thesis 模板，项目地址：https://github.com/xen0n/JNUthesis
>

## 关于 LaTeX 模板

* 支持自动替换所有中文句号为英文句点，方便理工科论文排版：`replaceperiod` 选项;
* 字体选项：`winfonts`(打印用)；`fandolfonts`(查重用).
* colorlinks: 开关位于`jnuthesis.cls` line 172 


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

