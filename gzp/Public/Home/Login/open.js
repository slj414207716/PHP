function page_fade_out()
{
	// 页面淡出
	$('body').animate
	(
		{opacity: '0'},
		2000,
		function()
		{
			// 跳页
			window.location.href = login_page;
		}
	);
}

$(document).ready
(
	function()
	{
		// 获取屏幕尺寸
		var screen_width = $(window).width();
		var screen_height = $(window).height();

		// 设置背景图尺寸
		$('body').css('background-size', screen_width + 'px ' + screen_height + 'px');

		// 获取“跳过”按钮的高度
		var jump_button_height = $('.jump_button').height();
		// 计算“跳过”按钮的上边距
		var jump_button_padding_top = screen_height - jump_button_height - 30;
		// 应用样式
		$('.jump_button').css('top', jump_button_padding_top + 'px');

		// 监听点击“跳过”按钮
		$('.jump_button').click
		(
			function()
			{
				page_fade_out();
			}
		);

		// 监听视频播放结束
		$('video').on
		(
			'ended',
			page_fade_out
		);
	}
);
