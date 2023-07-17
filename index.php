<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>姓名缘分测试</title>
<link href="style/reset.css" rel="stylesheet" />
<link href="style/main.css" rel="stylesheet" />
</head>
<!--www.aspku.com-->	
<?php
	session_start();
	@$id= intval($_GET['id']);
	$_SESSION['id']=$id;
?>
<body>
	<div id="box">
		<!--头部-->	
		<div class="head">
			<div class="head-dingwei">
					<div class="head-left">
						<a href="./index.php">
						<img  src="images/icon/xin.png">
						<h1>姓名配对测试</h1>
							</a>
					</div>
				<div class="head-right">
					<img src="images/icon/candan.png" id="head-img">
				</div>
			</div>
		</div>
		<!--内容-->
	<form action="yuanfen.php" method="post"  onsubmit="return yuanfen();">
			<div id="content-xianzhi" align="center">
					<p>来试试你们的缘分吧</p>
				<div class="content-input">
					<input type="text" placeholder="输入你的名字" name="myname" id="js-myname">
					<input type="text" placeholder="输入对方的名字" name="youname" id="js-youname">
					<input type="submit" value="确定">
				</div>
			</div>
		
		</form>
		
		
		
	</div>

	
</body>
	<script type="text/javascript" src="js/yiqi.js"></script>
</html>