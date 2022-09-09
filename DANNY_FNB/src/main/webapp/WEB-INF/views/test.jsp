<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>jQuery</title>
<style>
.ui-input-text{
    margin: .4em 0;
}
.ui-mini {
font-size: 13px;
}
</style>
    <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>

    </script>
  </head>
  <body>
	<div data-role="content">  
   <div class="ui-grid-a">
    <div class="ui-block-a" style="width:60%;">
     <input id="Amount" name="Amount" type="number"/>
    </div>
    
    <div class="ui-block-b" style="width:40%;">
     <select name="time" id="time" data-mini="true">
       <option value="KRW">KRW</option>
       <option value="USD">USD</option>
       <option value="TWN">TWN</option>
     </select>
    </div>
   
   </div>
  </div>
  </body>
</html>