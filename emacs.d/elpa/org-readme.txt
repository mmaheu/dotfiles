<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
  <!--
    <?xml version="1.0" encoding="UTF-8"?>
  <WISPAccessGatewayParam xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://airborne.gogoinflight.com/static/xsd/WISPAccessGatewayParam.xsd">
    <Proxy>
      <MessageType>110</MessageType>
      <NextURL>http://airborne.gogoinflight.com/abp/page/abpRoaming.do</NextURL>
      <ResponseCode>200</ResponseCode>
      <Delay>0</Delay>
    </Proxy>
  </WISPAccessGatewayParam>
  -->
<meta http-equiv="REFRESH" content="0;URL=/abp/page/connecting.do?abpflg=2">
<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0;">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Connecting to Ground..</title>
<script type="text/javascript">
var secs
var timerID = null
var timerRunning = false
var delay = 1000

function InitializeTimer(){
  secs = 120
  StopTheClock()
  StartTheTimer()
}

function StopTheClock(){
  if (timerRunning)
    clearTimeout(timerID)
  timerRunning = false
}

function StartTheTimer(){
  if (secs == 0){
    StopTheClock()
    window.location = "/abp/page/connecting.do?abpflg="+2;
  }else{
    self.status = secs
    secs = secs - 1
    timerRunning = true
    timerID = self.setTimeout("StartTheTimer()", delay)
  }
}
</script>
<style type="text/css">
body, div, a, img, h1, p {
  margin:0;
  padding:0;
  border:none;
}
div, h1, p {
  width:auto;
  margin:0 auto;
  float:left;
  width:240px;
}
body {
  font-family:Helvetica,Arial, sans-serif;
  font-size:12px;
  color:#58595b;
  background:#fff;
  text-align:center;
}
#wrap {
  width:240px;
  overflow:hidden;
  margin:0 auto;
  background:#fff;
  float:none;
}
#header,
#brand {
  text-align:center;
  margin:0 auto;
}
#brand {
  padding-top:8px;
}
.align_center {
  text-align:center;
}
h1 {
  font-size:15px;
  line-height:22px;
  margin:25px 0;
}
#primary p {
  font-size:12px;
  line-height:20px;
}
#primary a {
  color:#58595b;
}
#ani_gif {
  text-align:center;
  margin:10px 0 20px 0;
}
#logo {
  width:112px;
  height:76px;
}
</style>
</head>

<body>
<div id="wrap">
  <div id="header">
    <div id="brand">
          <a href=""><img id="logo" src="/abp/images/Gogo_Tag_5C_RGB_148x100.png" width="148" height="100" border="0" alt="Gogo" /></a>
        </div><!-- /brand -->
  </div><!-- /header -->
    <div id="primary" class="align_center">
        <h1>Redirecting you to an<br />exclusive in-air experience.</h1>
        <div id="ani_gif">
          <img src="/abp/images/animated_interstitial.gif" width="124" height="18" border="0" alt="Please wait" />
        </div>
        <p>If you are not redirected, <a href="/abp/page/connecting.do?abpflg=2">click here </a></p>
  </div><!-- /primary -->
</div><!-- /wrap -->
<input id="abpflg" value="2" type="hidden">
<noscript>
  <meta http-equiv=REFRESH content="0;URL=/abp/page/connecting.do?abpflg=2">
</noscript>
<script type="text/javascript">
window.onload = function(){
//	InitializeTimer();
}
</script>
</body>
</html>
