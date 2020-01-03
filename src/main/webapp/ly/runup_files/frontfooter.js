var nxpt = {
  initStatus : false,
  version : "20190116",
  host : "ser-html5.8531.cn",
  hostTest : "test-html5.8531.cn",
  hostUrl : "https://ser-html5.8531.cn",
  basePath: "/pro_personal/",
  
  //加载js
  loadScript : function(url, callback) {
    if (url == undefined) {
      typeof callback === "function" && callback();
      return false;
    } else {
      var script = document.createElement("script");
      script.type = "text/javascript";
      //回调函数
      if(typeof(callback) != "undefined"){
        if (script.readyState) {
          script.onreadystatechange = function () {
            if (script.readyState == "loaded" || script.readyState == "complete") {
              script.onreadystatechange = null;
              typeof callback === "function" && callback();
            }
          };
        } else {
          script.onload = function () {
            typeof callback === "function" && callback();
          };
        }
      }
      script.src = url + "?version=" + this.version;
      document.body.appendChild(script);
    }
  },
  //加载css
  createElement : function(url) {
    var head    = document.getElementsByTagName('HEAD').item(0);
    var style   = document.createElement('link');
    
    style.href  = url;
    style.rel   = 'stylesheet';
    style.type  = 'text/css';
    
    head.appendChild(style);
  },
  loadJquery : function(callback) {
    if (window.jQuery) {
      callback();
    } else {
      this.loadScript(this.basePath + "assets/js/jquery-3.2.1.min.js", callback);
      ////cdn.bootcss.com/jquery/3.3.1/jquery.js
    }
  },
  //判断客户端
  isWxClient : function() {
    var ua = window.navigator.userAgent.toLowerCase();
    return ua.match(/MicroMessenger/i) == 'micromessenger';
  },
  //判断客户端
  isQqClient : function() {
    var ua = window.navigator.userAgent.toLowerCase();
    return ua.match(/QQ/i) == 'qq';
  },
  //判断客户端
  isZjxwClient : function() {
    var ua = window.navigator.userAgent.toLowerCase();
    return ua.match(/zjxw/i) == 'zjxw';
  },
  //判断是否是基本的内需服务器网址
  isBaseUrl : function() {
      return window.location.host == nxpt.hostTest || window.location.host == nxpt.host;
  },
  //分享-初始化
  shareInit:function() {
    //在特定的客户端内分享
    if (this.isWxClient() || this.isQqClient() || this.isZjxwClient()) {
      nxpt.loadScript(nxpt.basePath + "assets/common/share/init.js");
    }
  },
  //分享-分享内容重置
  shareReset:function() {
    typeof nxpt_share_reset === "function" && nxpt_share_reset();
  },
  //统计-加载
  statInit:function() {
      nxpt.loadScript(nxpt.basePath + "assets/common/stat/init.js");
  },
  //初始化
  init:function() {
    if (!nxpt.isBaseUrl()) {
        nxpt.basePath = nxpt.hostUrl + nxpt.basePath;
    }
    if (!this.initStatus) {
      this.initStatus = true;
      this.loadJquery(function() {
        nxpt.shareInit();
        nxpt.statInit();
        
        typeof nxpt_init_callback === "function" && nxpt_init_callback();
      })
    }
  }
}

var nxpt_share_title = "",nxpt_share_desc = "",nxpt_share_image = "",nxpt_share_link = "";


setTimeout(function() {
  nxpt.init();
});
//window.onload = function(){
//  
//}