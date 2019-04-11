<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
  <link rel="stylesheet" media="screen" href="css/style.css">
  <link type="text/css" rel="stylesheet" 
    href="bootstrap-3.3.5-dist/css/bootstrap.min.css" />
  <script type="text/javascript" src="bootstrap-3.3.5-dist/js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
  <script src="http://www.gongjuji.net/Content/files/jquery.md5.js"></script>
  <style type="text/css">
     .box1{ position:absolute; width:200px; height:200px; left:234px; top:200px} 
     label{
     	color:#FFFFFF
     }
  </style>

</head>
<body>

    <div class="col-md-6 col-md-offset-3 box1">
        <form action="registerwc.do" method="post" onsubmit="return checkForm()">
        <div class="form-group">
           <label>账户</label>
           <input type="text" name="uid" placeholder="用户名" class="form-control" style="width:300px"/>
        </div>
         
         <div class="form-group">
           <label>密码</label>
           <input type="text" id="input-password" placeholder="密码" class="form-control" style="width:300px"/>
        </div>  
        
        <div class="form-group">
           <label>确认密码</label>
           <input type="text" id="input-password2" placeholder="确认密码" class="form-control" style="width:300px"/>
        </div> 
      <input type="hidden" id="md5-password" name="up">
        <div class="form-group">
              <button type="submit" class="btn btn-primary">确定</button>
        </div> 
          <div class="form-group">
              <a href="login.do">返回</a>
        </div> 
        
      <!--   <div class="form-group" style="color:red;">${message}</div> -->
         
         
        </form>
     </div> 
     
<!-- particles.js container -->
<div id="particles-js"></div>

<!-- scripts -->
<script src="js/particles.js"></script>
<script src="js/app.js"></script>
    <script type=text/javascript>
  function checkForm() {
	  var p1 = document.getElementsById("input-password").value;
	  var p2 = document.getElementsById("input-password2").value;
	   if(p1===p2){
		   alert("bingo"+p1+" "+p2);
		   return true;
	   }else{
		   alert("两次密码不相同");
		   return false;
	   }
	}


  //md5
  function checkForm() {
  	var input_pwd = document.getElementById('input-password');
  	var md5_pwd = document.getElementById('md5-password');
  	// 把用户输入的明文变为MD5:
  	md5_pwd.value = $.md5(input_pwd.value);
  	
  	console.log("md5_pwd.value")
  	return true;
  }
</script>
<script>
  var count_particles, stats, update;
  stats = new Stats;
  stats.setMode(0);
  stats.domElement.style.position = 'absolute';
  stats.domElement.style.left = '0px';
  stats.domElement.style.top = '0px';
  document.body.appendChild(stats.domElement);
  count_particles = document.querySelector('.js-count-particles');
  update = function() {
    stats.begin();
    stats.end();
    if (window.pJSDom[0].pJS.particles && window.pJSDom[0].pJS.particles.array) {
      count_particles.innerText = window.pJSDom[0].pJS.particles.array.length;
    }
    requestAnimationFrame(update);
  };
  requestAnimationFrame(update);
</script>
     
</body>
</html>