<!doctype html>
<?php
require_once("../conn/conn.php");
?>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>一奇缘分后台管理</title>
		<link href="../style/reset.css" rel="stylesheet" />
	  	<link href="./style/lanmu.css" rel="stylesheet" />
		<link href="./sj/yiqi.css" rel="stylesheet" />
</head>
<?php session_start();
	@$user=$_SESSION['user'];
	if($user==""){
		header('Location:login.php');
	}else{
		$sql1="select * from yiqi_user where username='$user'";
		$zxsql1=mysql_query($sql1);
		$hqsql1=mysql_fetch_assoc($zxsql1);
		$biaoshi=$hqsql1['Id'];
	}
?>
<script type="text/JavaScript" src="./js/yiqi.js"></script>
<body bgcolor="#f5f5f5">
	<div class="box">
		<div class="head">
			<div class="lanmu-deleteall" onclick="zscall()"><p>删除选中</p></div>
			
			<span id="js-shengchengwz"></span>
		</div>
			<div id="lanmu-content">
			
				<?php
				
					$sql="select * from yuanfen_content ORDER BY time desc";	
				
			
				$zxsql=mysql_query($sql);
				$i=0;
				echo "<div class=\"lanmu-content\" id=\"daohang-buttom-0\">";
						echo "<div class=\"lanmu-head\" align=\"center\" onClick=\"daohangss(0)\"><h1>管理</h1></div>";
						echo "<div class=\"lanmu-table\">";
						echo "<table width=\"98%\">";
						echo "<tr bgcolor=\"#f5f5f5\" height=\"50px\">";
						echo "<td width=\"5%\" class=\"yiqi-xuanzhe\"><input type=\"checkbox\" id=\"allcheckbox0\" onclick=\"ckAll(0)\" /></td>";
						echo "<td width=\"25%\">第一个名字</td>";
						echo "<td width=\"25%\">第二个名字</td>";
						echo "<td width=\"20%\">查询时间</td>";
						echo "<td>缘分指数</td>";
						echo "<td width=\"20%\">操作</td>";
						echo "</tr>";
					
							while($hqsql=mysql_fetch_assoc($zxsql)){
									@$myname=htmlentities($hqsql['myname']);
									@$youname=htmlentities($hqsql['youname']);
									@$cxtime=htmlentities($hqsql['time']);
									@$yuanfen=htmlentities($hqsql['yuanfen']);
									$lmid=$hqsql['Id'];
									echo "<tr id='z$lmid'>";
									echo "<td  class=\"yiqi-xuanzhe\"><input type=\"checkbox\" class=\"js-check$i\" value=\"$lmid\"/></td>";
									echo "<td class=\"lanmu-input\"><p>$myname</p></td>";
									echo "<td class=\"lanmu-input\"><p>$youname</p></td>";
									echo "<td class=\"lanmu-input\"><p>$cxtime</p></td>";
									echo "<td class=\"lanmu-input\"><p>$yuanfen</p></td>";
									echo "<td id=\"table-input\"><input type=\"submit\" value=\"删除\" onClick=\"zlanmushanchu($lmid)\"></td>";
							echo "</tr>";
							}
						echo "</table>";
						echo "</div></div>";
				?>
	
		</div>
	</div>

	
	<?php require_once("buttom.php")?>
</body>

<script type="text/javascript" src="js/lanmu.js"></script>
<script type="text/javascript">
					/*全选和反选*/
						function ckAll(id){
							var check = byId("allcheckbox"+id).checked;
							var qtcheck = byId("daohang-buttom-"+id).getElementsByClassName("js-check"+id);
								id++;
							for(var i=0;i<=qtcheck.length;i++){
								qtcheck[i].checked=check;
							}
							}

</script>

</html>