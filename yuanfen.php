<?php
require_once("./conn/conn.php");
require_once("./conn/ip.php");
require_once("./conn/time.php");
require_once("./conn/function.php");
?>
<!--www.aspku.com-->	
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>姓名缘分测试</title>
<link href="style/reset.css" rel="stylesheet" />
<link href="style/yuanfen.css" rel="stylesheet" />
</head>
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
			<div id="content">
				<div class="content-xianzhi" align="center">
					<div class="content-head1"></div>
					<div class="content-head"><p>缘分指数</p></div>
					<div class="content-head2"></div>
<?php
session_start();
/*@$id=intval($_POST['id']);*/
@$id=intval($_SESSION['id']);
					
@$Id=intval($_GET['id']);
if($cishu=""){
	$cishu=$_SESSION['cishu']==0;
}
@$myname=addslashes($_POST['myname']);
@$youname=addslashes($_POST['youname']);
@$ip=addslashes($onlineip);
/*判断是否为空*/
if (!isset($myname) || empty($myname) ||
	!isset($youname) || empty($youname)
   ){
	/*为空说明绕过了前端JS验证，直接进入了后端程序*/
		/*@$raoguojs="insert into feifa(ip,time,content) value('$ip','$time','绕过前端提交数据')";
			mysql_query($raoguojs);
		 echo '{"success":false,"msg":"非法操作已记录ip！"}';*/
	
			$s=sql("select * from yuanfen_content where Id = $Id");
			
			$yuanfen=$s['yuanfen'];
			$title=$s['title'];
			$content=$s['content'];
			echo "<div class='yuanfenshuzi'><p>$yuanfen%</p></div>";
			echo "<div class='content-head3'></div>";
			echo "<div class='shuoming'>";
			echo "<div class='shuoming-head'><p>$title</p></div>";
			echo "<div class='shuoming-content' align='left'><p>$content</p></div>";
			echo "<div class='shuoming-buttom'>注:本程序娱乐为主,切勿当真。</div>";
	
	
}else{
	/*1.判断数据库是否存在该数据
	  2.如果存在就直接使用
	  3.如果不存在就判断session第几次
	  4.如果第一次就插入vip=2的数据，并且缘分指数95-99
	  5.如果第二次就插入vip=0的数据，并且缘分指数70-85
	  6.之后的查询就插入vip=1的数据，并且缘分指数80-90
	*/
	
		
				/*判断数据库是否存在该数据*/
		$cxsql="select * from yuanfen_content where biaoshi = $id and myname = '$myname' and youname = '$youname'";
		$zxsql=mysql_query($cxsql);
		@$hqsql=mysql_fetch_assoc($zxsql);
		$a=rand(95,99); //缘分一档
		$b=rand(70,85);	//缘分二档
		$c=rand(80,90);	//缘分三档
		if($hqsql<1){
		//判断session决定查询什么数据
			if(@$_SESSION['cishu']==0){
				$sql1="select * from yuanfen_shuju where vip = 2 || vip=1";
			}elseif(@$_SESSION['cishu']==1){
				$sql1="select * from yuanfen_shuju where vip = 0";
			}else{
				$sql1="select * from yuanfen_shuju where vip=0";
			}
				$zxsql1=mysql_query($sql1);
				$i=-1;
		//遍历数组
			while($hqsql1=mysql_fetch_assoc($zxsql1)){
				$shuju[]=$hqsql1;
				$i++;
				
			}
		//随机抽取一个数组号数
				$suiji=rand(0,$i);
				$zuihoujieguo=@$shuju[$suiji];
		//次数+1
				@$_SESSION['cishu']=$_SESSION['cishu']+1;
				$cishu=$_SESSION['cishu'];
		//获取标题和内容
				$title=$zuihoujieguo['title'];
				$content=$zuihoujieguo['content'];	
		//判断缘分指数
					if(empty($_SESSION["a"])){
						if(@$_SESSION['cishu']==1){
							@$_SESSION["a"]=$a;
							@$a1=$_SESSION["a"];
						}elseif(@$_SESSION['cishu']==2){
							@$_SESSION["a"]=$b;
							@$a1=$_SESSION["a"];
						}else{
							@$_SESSION["a"]=$c;
							@$a1=$_SESSION["a"];
						}
					}else{
						
						@$a1=$_SESSION["a"];
						
					}
				//插入数据库
				$sql="insert into yuanfen_content(biaoshi,myname,youname,time,ip,title,content,yuanfen) values($id,'$myname','$youname','$time','$ip','$title','$content','$a1')";
				//如果成功返回json数据
				if($zxsql2=mysql_query($sql)){
					/* echo '<script type="text/javascript">';
				 	echo "tishi(2,'查询成功',1000 );";
					echo '</script>';*/
					/* echo '{"success":true,"myname":"'.$myname.'","youname":"'.$youname.'","title":"'.$title.'","content":"'.$content.'","yuanfen":"'.$a1.'"}';*/
						echo "<div class='yuanfenshuzi'><p>$a1%</p></div>";
						echo "<div class='content-head3'></div>";
						echo "<div class='shuoming'>";
						echo "<div class='shuoming-head'><p>$title</p></div>";
						echo "<div class='shuoming-content' align='left'><p>$content</p></div>";
						echo "<div class='shuoming-buttom'>注:本程序娱乐为主,切勿当真。</div>";
						unset($_SESSION['a']);
						
				}				
		}else{
						/*如果存在就直接使用*/
						
						/* echo '{"success":true,"myname":"'.$hqsql['myname'].'","youname":"'.$hqsql['youname'].'","title":"'.$hqsql['title'].'","content":"'.$hqsql['content'].'","yuanfen":"'.$hqsql['yuanfen'].'"}';*/
						$yuanfenshuzi=$hqsql['yuanfen'];
						$yuanfenbiaoti=$hqsql['title'];
						$yuanfenneirong=$hqsql['content'];
						echo "<div class='yuanfenshuzi'><p>$yuanfenshuzi%</p></div>";
						echo "<div class='content-head3'></div>";
						echo "<div class='shuoming'>";
						echo "<div class='shuoming-head'><p>$yuanfenbiaoti</p></div>";
						echo "<div class='shuoming-content' align='left'><p>$yuanfenneirong</p></div>";
						echo "<div class='shuoming-buttom'>注:本程序娱乐为主,切勿当真。</div>";
						
		}



}





?>

							


					</div>



				</div>
			</div>
		
		
		
		</div>
		</body>
	<script type="text/javascript" src="js/yiqi.js"></script>
</html>