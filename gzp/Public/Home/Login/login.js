function check_submit()
{
	// 获取用户名
	var username = $.trim( $('#username').val() );
	if(!username)
	{
		alert('用户名为空');
		return false;
	}
	// 检查用户名长度
	if( (username.length < 5) || (username.length > 30) )
	{
		alert('用户名长度应为5-30个字符');
		return false;
	}
	// 获取密码
	var password = $.trim( $('#password').val() );
	if(!password)
	{
		alert('密码为空');
		return false;
	}
	// 检查密码长度
	if( (password.length < 5) || (password.length > 30) )
	{
		alert('密码长度应为5-30个字符');
		return false;
	}

	return true;
}

$(document).ready
(
	function()
	{
		// 设置标题文字字号比例
		var title_font_size_ratio = 0.064;
		// 设置标题文字字间距比例
		var title_letter_spacing_ratio = 0.007;

		// 获取屏幕尺寸
		var screen_width = $(window).width();
		var screen_height = $(window).height();

		// 设置背景图尺寸
		$('body').css('background-size', screen_width + 'px ' + screen_height + 'px');

		// 根据比例计算标题文字样式
		var title_font_size = parseInt(title_font_size_ratio * screen_width);
		var title_letter_spacing = parseInt(title_letter_spacing_ratio * screen_width);
		$('.title').css
		(
			{
				'letter-spacing': title_letter_spacing + 'px',
				'font-size': title_font_size + 'px',
				'height': (title_font_size + 10) + 'px',
				'line-height': (title_font_size + 10) + 'px'
			}
		);

		// 监听点击“登录”按钮
		$('.submit_button').click
		(
			function()
			{
				$('form').submit();
			}
		);

		// 在表单上按回车，提交表单
		$(document).keydown
		(
			function(event)
			{
				var key_code = event.which;
				if(key_code == 13)
				{
					// 判断表单输入框是否获得焦点
					var focus = $(':focus').attr('id');
					if( (focus == 'username') || (focus == 'password') )
					{
						$('form').submit();
					}
				}
			}
		);

		// 页面淡入
		$('body').animate
		(
			{opacity: '1'},
			1500
		);
	}
);
