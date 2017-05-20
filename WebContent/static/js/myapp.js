//******************轮播图******************************
			$(function(){
				//代码初始化
				var size=$('.ull li').size();
				for (var i = 1; i <= size; i++) {
					var li="<li></li>";
					$('.oll').append(li);
				};
				//手动控制轮播图
				$('.ull li').eq(0).show();
				$('.oll li').eq(0).addClass('active');
				$('.oll li').mouseover(function(){
					$(this).addClass('active').siblings().removeClass('active');
					var index=$(this).index();
					i=index;
					$('.ull li').eq(index).stop().fadeIn(300).siblings().stop().fadeOut(300);
				})
				//自动播放
				var i=0;
				var t=setInterval(move,1500);
				//自动播放核心函数
				function move(){
					i++;
					if(i==size){
						i=0;
					}
					$('.oll li').eq(i).addClass('active').siblings().removeClass('active');
					$('.ull li').eq(i).fadeIn(300).siblings().fadeOut(300);
				}

				//向右播放核心函数
				function moveL(){
					i--;
					if(i==-1){
						i=size-1;
					}
					$('.oll li').eq(i).addClass('active').siblings().removeClass('active');
					$('.ull li').eq(i).fadeIn(300).siblings().fadeOut(300);
				}
				$('.box .left').click(function(){
						moveL();
				})
				$('.box .right').click(function(){
					move();
				})
				//鼠标移入移除
				$('.box').hover(function(){
					clearInterval(t);
				},function(){
					t=setInterval(move,1500);
				})
			})
//******************轮播图结束******************************
			
//********回到顶部****************************************** 
        //当滚动条的位置处于距顶部100像素以下时，跳转链接出现，否则消失  
        $(function() {  
            $(window).scroll(function(){  
                if ($(window).scrollTop()>100){  
                    $("#back-to-top").fadeIn(1500);  
                }  
                else  
                {  
                    $("#back-to-top").fadeOut(1500);  
                }  
            });  
  
            //当点击跳转链接后，回到页面顶部位置  
  
            $("#back-to-top").click(function(){  
                $('body,html').animate({scrollTop:0},1000);  
                return false;  
            });  
        });  
//********回到顶部结束******************************************