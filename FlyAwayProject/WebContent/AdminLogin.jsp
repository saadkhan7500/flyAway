<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    .codehim-form{
        max-width: 400px;
        min-height: 400px;
        box-sizing: border-box;
        background: rgba(255, 255, 255, 0.6);
        box-shadow: 4px 2px 16px rgba(0, 0, 0, 0.4);
        border-radius: 8px;
        margin:  20px auto 0 auto;
        padding: 25px;
        color: #414141;
            
    }
    .cm-input{
        display: block;
        box-sizing: border-box;
        padding: 10px;
        width: 100%; 
        margin: 14px auto;
        border-radius: 20px;
        border: 1px solid #ccc;
        
        
    }
    .cm-input:focus{
        outline: 0;
        border-color: #f9cb81;
        
    }
    .cm-input:invalid{
        border-color: #e41b17;
        
    }
    .btn-login{
        display: block;
        width: 100%;
        padding: 10px;
        border: 0;
        color: #fff;
        border-radius: 20px;
        cursor: pointer;
        
    }
    .btn-login:focus{
        outline: 0;
    }
    
    .btn-login:hover{
        opacity: 0.8;
        transition: .3s;
    }
    
    /* Gradient Background */
    .gr-bg{
        background: rgb(252,205,128);
        background: linear-gradient(90deg, rgba(252,205,128,1) 0%, rgba(209,122,142,1) 55%, rgba(220,159,174,1) 100%);   
    }
    
     .form-title{
        padding: 12px;
        text-align: center;
        position: relative;
    }
    .form-title h2{
        color: #5c86e1;
    }
    .form-title .user-icon{
        position: absolute;
        font-size: 42px;
        color: #fff;
        width: 90px;
        height: 90px;
        line-height: 90px;
        text-align: center;
        border-radius: 45px;
        top: -60px;
        left: -45px;
}
</style>
</head>
<body>


<form style="margin-top: 10%"class="codehim-form" action="AdminLoginImpl.jsp" method="post">
   <div class="form-title">
      <div class="user-icon gr-bg">
         <i class="fa fa-user"></i>
      </div>
      <h2> Admin Login Form</h2>
   </div>
   <label for="email"><i class="fa fa-envelope"></i> UserName:</label>
   <input type="text" name="uname"id="email" class="cm-input" placeholder="Enter your username">
   <label for="pass"><i class="fa fa-lock"></i> Password:</label>
   <input id="pass" type="password" class="cm-input" name="psw" placeholder="Enter your password">
   <button type="submit" class="btn-login  gr-bg">Login</button>
</form>
</body>
</html>
