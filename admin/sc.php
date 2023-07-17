<?php require_once("../conn/conn.php");?>
<?php
	session_start();
	@$user=$_SESSION['user'];
	if($user==""){
		echo '<meta charset="utf-8">';
		echo '<link href="./sj/yiqi.css" rel="stylesheet" />';
		echo '<script type="text/JavaScript" src="../js/yiqi.js"></script>';
		echo '<body></body>';
		echo '<script type="text/javascript">';
		echo 'tishi(1,"非法操作已记录ip地址",3000);';
	 echo '</script>';
	}else{
		$sql1="select * from yiqi_user where username='$user'";
		$zxsql1=mysql_query($sql1);
		$hqsql1=mysql_fetch_assoc($zxsql1);
		@$lmid=intval($_POST['lmid']);
		if($hqsql1['vip']==1){
		if(@$lmid){
			$sql="delete from yuanfen_content where Id=$lmid";
			$zxsql=mysql_query($sql);
			if($zxsql){
				echo '{"success":true,"msg":"删除成功"}';
			}else{
				echo '{"success":false,"msg":"栏目删除失败"}'; 
			}
			
			}
		}else{
			$sql="update yuanfen_content set biaoshi=0 where Id=$lmid";
			$zxsql=mysql_query($sql);
			if($zxsql){
				echo '{"success":true,"msg":"删除成功"}';
			}else{
				echo '{"success":false,"msg":"栏目删除失败"}'; 
			}
			
			
		}
		
		
	}
	
	



	

?>