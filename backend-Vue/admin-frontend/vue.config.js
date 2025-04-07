module.exports = {
	transpileDependencies: true,
	publicPath:'/',
	outputDir: 'dist', // 输出文件目录：在npm run build时，生成文件的目录名称
  	assetsDir: 'assets', // 放置生成的静态资源 (js、css、img、fonts) 的 (相对于 outputDir 的) 目录
	devServer: {
		host: '10.149.4.59',
		port: 3000, // 端口
		open: true,
		allowedHosts: 'all'
	},
	/* 修改html标题 */
	chainWebpack: config => {
		config.plugin('html')
			.tap(args => {
				args[0].title = "石油旅游系统后台";
				return args;
			})
	},
}
