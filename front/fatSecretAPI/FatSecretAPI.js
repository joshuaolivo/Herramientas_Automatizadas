var fatsecret = {
	variables: {
		rootUrl: 'https://platform.fatsecret.com/js/Default.aspx?pg=',
		splitter: 'fs_5cc9f8b47f1f42f3a8c8dcab4f35b2a2',
		key: '66cadcfc5cf140f99352cc3bf3ca145a',
		appTitle: 'Alimentos',
		navOptions: 3,//3 - Home | Food Diary |||| 31 - Default
		autoTemplate: true
	},
	
	setCookie: function(name, value){
		var date = new Date();
		date.setTime(date.getTime()+(10*365*24*60*60*1000));		
		document.cookie = name + '=' + encodeURIComponent(value) + ';expires=' + date.toUTCString() + ';path=/';
	},
	
	doWrite: function(url, isCss){
		var h = isCss ? '<link type="text/css" rel="stylesheet"' : '<script type="text/javascript"'; 
		h += (isCss ? ' href' : ' src') + '="' + url; 
		h += isCss ? '"/>' : '"></script>'; 
		document.write(h);
	},
	
	start: function(){
		this.doWrite('all.css', true);
		this.doWrite('blue.css', true);
		this.doWrite('final.js');
	}
};
fatsecret.start();