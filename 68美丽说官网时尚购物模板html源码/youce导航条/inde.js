
//========菜单下滑开始===============
         $(function(){
             $(window).scroll(function(){
//      获得滚动条滚动上去的距离
        var t = $(document).scrollTop();
             document.title = t;
        if (t>153) {
//          让menu固定定位，通过添加一个f class值来实现
            $("#nav").addClass('lalss');
        }else{
            $("#nav").removeClass('lalss');
        }
        })
    })
           
//========菜单下滑结束===============
//====按钮切换颜色
     $(function(){   
        //美丽说	tab切换上
     	$('.tp6_1 .tp6_2 .tp6_2_1').click(function(){
     		
     		  n = $(this).index();//获得序号
     		  
     		$(this).addClass('tp6_2_11').siblings('.tp6_2 .tp6_2_1').removeClass('tp6_2_11'),$('.tp6_3 .tp6_4').eq(n).show().siblings().hide();
  
     	})
        //美丽说	tab切换下click方法定义 点击事件 执行function函数
     	$('.tp7_1 .tp6_2 .tp6_2_1').click(function(){
     			
     			l = $(this).index();
     			
     			$(this).addClass('tp6_2_11').siblings('.tp6_2 .tp6_2_1').removeClass('tp6_2_11'),$('.tp7_3').eq(l).show().siblings().hide();
     		
     	})
     	
        //=============
        //色块移入的显示和隐藏jQuery .class 选择器选取 class 为 "intro" 的所有元素：
        // $(".intro")
        $('.tp7_4').hover(function(){
            
            $('.get',$(this)).show();
        },function(){
        //回调函数          
            $('.get',$(this)).hide();
        })
        //      ===文字替换==
        $('.udt').hover(function(){

        $('.udt').innerHTML,$('.get .udt').html('取消关注')//替换文字
        },function(){
        //回调函数
        $('.udt').innerHTML,$('.get .udt').html('已关注')//替换文字
        })
     })


//结束  
// /====点控显示层按钮切换颜色
$(function(){
//      写一个移入显示、移出已隐藏//导航定位
        $('#wsa #adri').hover(function(){
            
            $('#base',$(this)).stop().animate({'right':'0'},300);
        },function(){
            
            $('#base',$(this)).stop().animate({'right':'-38px'},300);
        })
//      写一个移入显示、移出已隐藏//左侧定位
        $('#adrc #adrcc a em').hover(function(){
            
            $('.red_gwc',$(this)).hide();
            $('.w_gwc',$(this)).show();
        },function(){
            
            $('.w_gwc',$(this)).hide();
            $('.red_gwc',$(this)).show();
        });
        $('#adrc #adrcg a em').hover(function(){
            
            $('.red_xin',$(this)).hide();
            $('.w_xin',$(this)).show();
        },function(){
            
            $('.w_xin',$(this)).hide();
            $('.red_xin',$(this)).show();
        });
//      写一个移入显示、移出已隐藏//左侧；返回顶部
        $('#fans .top').hover(function(){
            
            $('.asda').show();
            $('.tops').hide();
        },function(){
            
            $('.asda').hide();
            $('.tops').show();
        })
        //写一个下滑显示效果
        $(window).scroll(function(){
//      获得滚动条滚动上去的距离
        var t = $(document).scrollTop();
             document.title = t;
        if (t>150) {
//          让menu固定定位，通过添加一个f class值来实现
            $('#fans .top').show();
        }else{
            $('#fans .top').hide();
        }
        })
})






















