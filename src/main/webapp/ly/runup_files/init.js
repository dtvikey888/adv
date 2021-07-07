nxpt.stat = {
  //分享-初始化
  statInit:function() {
    //百度统计
    if (window.location.host != "test-html5.8531.cn") {
        $("body").append('<script style="display:none">var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="https://hm.baidu.com/hm.js?9bb25eb7bd2825c696aa6905c9c05e1c";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();</script>');
    }
    
    //网脉
    $("body").append('<script style="display:none" id="_trs_ta_js" src="//ta.8531.cn/c/js/ta.js?mpid=206" async="async" defer="defer"></script>');
  }
}

nxpt.loadJquery(function() {
  $(document).ready(function(){
    nxpt.stat.statInit();
    
    typeof nxptStatInitCallback === "function" && nxptStatInitCallback();
  });
})
