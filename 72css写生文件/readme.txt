这里面都是各大知名网站好用功能实现的样式写生文件
包含：1.清晰具体注释的开始和结束决定这项目开发进度的快慢
      2.table是表格，最外面包括着的标签。

      tr是行，有几个就是几行，包括着td标签

      td是列，有几个就是几列

      th是加粗行的列的开头，同td的位置一样，都是被td包

      border是table属性，代表边框，数字为0，就没有边框，数字越大，边框越宽

      cellspacing是单元格之间的间距

      cellpadding是单元格和外边框的距离

      bgcolor是背景颜色

      align是表格的位置
      
      标记语言标签的复合定义遇到相同标记标签时无效
table就是定义表格的无需其他标签自行定义表格
行高tr列宽td设置css样式决定了表格的大小
     搭建两行两列 宽200 边框1 单元格间距cellspacing="0" 单元格边距cellpadding="0"的表格

      <table width="200"height="100" border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
合并列代码 把两列合并为一行：<table width="200" height="101" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
合并行代码：在rowspan前面加一个空列
<table width="200" border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td>&nbsp;</td>
    <td rowspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>