form标签    创建供用户输入的表单

表单包含内容：      可包含文本域，复选框，单选按钮等等。表单用于向指定的 URL 传递用户数据

在 HTML 5 中有一个新属性：replace。它定义表单被提交后所做的事情


表单中的属性：

1.action     定义一个 URL。当点击提交按钮时，向这个 URL 发送数据。

2.date   供自动插入数据

3.定义表单提交时所做的事情

4.accept   处理该表单的服务器可正确处理的内容类型列表（用逗号分隔）。

5.accept-charset     表单数据的可能的字符集列表（逗号分隔）。默认值是 "unknown"。

6.enctype  用于对表单内容进行编码的 MIME 类型

7.method   用于向 action URL 发送数据的 HTTP 方法。默认是 get

8.name  为表单定义一个唯一的名称。不支持。用 id 代替



html5引入大量新的输入类型     input  输入框类型优化
这些新输入类型可以提示浏览器  屏幕键盘应该显示什么类型的键盘布局 用户无需切换键盘 轻松完成输入所需信息并且只看到该输入类型的响应按键 


1.type =url  用于输入网址   其开头必须是有效的url架构   例如http：//    ftp://  或mailto:

2.type = tel   用于输入电话号码    它不执行特定的验证语法  因此如果要确保特定的格式   可以使用模式属性

3.type = email   用于输入电子邮件地址   并提示键盘上应默认显示@  如果需要用户输入多个电子邮件地址   则可以添加  multiple属性

4.type = search   一个文本输入字段  其样式   与平台的搜索字段一致


//统一平台search表现形式
input[type = "search"]::-webkit-search-cancel-button{
    display:none;   //隐藏默认x
}
-webkit-appearance：none;     //针对ios   设置样式   去除ios  下input椭圆形


5.type  = number 用于数字输入可以是任意合理的整数或浮点值   在安卓可以唤醒数字键盘  ios  却不能需要加上  pattern="\d*"

如果想简单的唤醒数字键盘我们可以直接设置type  =tel 在ios和安卓下面都能唤醒数字键盘   (这里的数字键盘没有点)


6.input输入光标问题：在做移动端开发的时候   为了页面整体布局我们需要将input设计的比较高按照一般思维都是input输入框给定line-height

height  让他达到要求  但是到了ios浏览器会发现光标变得很长


解决方案：/*给input设定一个较小的高度然后用padding去填充  基本上可以解决所有的浏览器问题*/

input{
    height：16px;
    padding:4px 0px ;
    font-size:12px;
}
/*只给IE  line-height  就可以了*/

input{
    -ms-line-height：40px;
}

在fixed固定定位 的弹出框中的input  光标会在ios等一些手机发生错位现象

解决方案1.：
dialog-show：{
    position：fixed;
    width:100%;
}


输入框的自动填充问题


兼容性不是很好 尽量将fixed  布局元素都用absolute代替

type =text   type=password  的浏览器自动填充  在输入框前面加上label标签   for属性值为input属性的name值

autoComplete  的值和inputname的值一致   autoComplete= "off"   用来清除浏览器默认填充   值为on或者off  

<label for ="sex">sex</label>
<input type="radio" name="sex" id="" autocomplete="sex">

