<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>GreenIT | FNB_PJ</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/plugins/jQueryUI/jquery-ui-1.10.4.custom.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

    <style>
        /* Additional style to fix warning dialog position */
        #alertmod_table_list_2 {
            top: 900px !important;
        }
    </style>
</head>

<body>

    <div id="wrapper">
    <nav class="navbar-default navbar-static-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav metismenu" id="side-menu">
                <li class="nav-header">
                    <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="img/greenit.jpg" />
                             </span>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Danny</strong>
                             </span> <span class="text-muted text-xs block">Developer <b class="caret"></b></span> </span> </a>
                        <ul class="dropdown-menu animated fadeInRight m-t-xs">
                            <li>연구개발팀</li>
                            <li>대니</li>
                        </ul>
                    </div>
                    <div class="logo-element">
                        Danny
                    </div>
                </li>
                
            </ul>

        </div>
    </nav>

        <div id="page-wrapper" class="gray-bg">
        <div class="row border-bottom">
        <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
            <form role="search" class="navbar-form-custom" action="search_results.html">
                <div class="form-group">
                    <input type="text" placeholder="Search for something..." class="form-control" name="top-search" id="top-search">
                </div>
            </form>
        </div>

        </nav>
        </div>
            <div class="row wrapper border-bottom white-bg page-heading">
                <div class="col-lg-10">
                    <h2>GreenIT System</h2>
                </div>
            </div>
        <div class="wrapper wrapper-content  animated fadeInRight">
            <div class="row">
                <div class="col-lg-12">
                    <div class="ibox ">
                        <div class="ibox-title">
                            <h5>메인화면</h5>
                        </div>
                        <div class="ibox-content">
					        <div class="wrapper wrapper-content animated fadeIn">
					            <div class="row">
					                <div class="col-lg-6">
					                    <div class="tabs-container">
					                        <ul class="nav nav-tabs">
					                            <li class="active"><a data-toggle="tab" href="#tab-1">테이블1</a></li>
					                            <li class=""><a data-toggle="tab" href="#tab-2">룸</a></li>
					                        </ul>
					                        <div class="tab-content">
					                            <div id="tab-1" class="tab-pane active">
					                            	<div style="overflow:auto; width:600px; height:250px;">
		                                				<table class="table table-bordered" id="tableData1">
														</table>
					                                </div>
					                            </div>
					                            <div id="tab-2" class="tab-pane">
					                            	<div style="overflow:auto; width:600px; height:250px;">
		                                				<table class="table table-bordered" id="tableData2">
														</table>
					                                </div>
					                            </div>
					                        </div>
					                    </div>
										<table class="table table-striped">
			                            <thead>
			                            <tr>
			                                <th>총 매출 금액</th>
			                                <th>550,100원</th>
			                            </tr>
			                            </thead>
			                            </table>
		                                <button type="button" class="btn btn-outline btn-primary" id="calculate">정산</button>
		                                <button type="button" class="btn btn-outline btn-warning">주문 취소</button>
		                                <button type="button" class="btn btn-outline btn-success" id="createOrder">주문 작성</button>
		                                <button type="button" class="btn btn-outline btn-success">전표 조회</button>                                
					                
					                </div>
					            </div>
					        </div>                            

                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <div class="footer">
            <div class="pull-right">
                <strong>연구개발팀</strong>
            </div>
            <div>
                <strong>Copyright</strong> GreenIT Company &copy; 2022
            </div>
        </div>

        </div>
        </div>

    <!-- Mainly scripts -->
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <!-- Peity -->
    <script src="js/plugins/peity/jquery.peity.min.js"></script>

    <!-- Custom and plugin javascript -->
    <!-- <script src="js/inspinia.js"></script> -->
    <script src="js/plugins/pace/pace.min.js"></script>
    <script src="js/plugins/jquery-ui/jquery-ui.min.js"></script>

    <script>
    $(document).ready(function () {
        setTimeout(function(){
            $('.wrapper-content').removeClass('animated fadeInRight');
        },700);
    });
    </script>
    
    <script type="text/javascript">    
    $(function() {
        // ajax 통신
        $.ajax({
            type : "POST",
            url : "/sl_table_select",
            //data : params,
            success : function(data){
    			var count = 0;
    			var count_room = 0;
            	if (data) {
                	for ( var i in data) {
    					var $div = data[i].SL_DIV;
    					var $name = data[i].SL_TABLE_NAME;
    					var $cost = data[i].SL_COST;
    					
    					
    					if (1 == $div) {
	    					if (0 == count%3) {
	    						var tr = $('<tr />');
	    					}
    						var td = $('<td><button type="button" class="btn btn-block btn-outline btn-primary">'+$name+'<br>'+$cost+'</button><td/>');
	    					tr.append(td);
		    				$("#tableData1").append(tr);
	    					count++;
    					}
    					
    					if (2 == $div) {
    						if (0 == count_room%3) {
	    						var tr1 = $('<tr />');
	    					}
    						var td1 = $('<td><button type="button" class="btn btn-block btn-outline btn-primary">'+$name+'<br>'+$cost+'</button><td/>')
    						tr1.append(td1);
    						$("#tableData2").append(tr1);
    						count_room++;
    					}
    					
            		}
						
				}
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                console.log("통신 실패.");
            }
        })
        
	})
	
   	$("#createOrder").click(function() {
		sendRegData();
		
		function sendRegData() {
			$.ajax({
				type: "POST",
				url : "/sl_table_select",
				//data:
				async:"true",
				success: function(data) {
					console.log("success");
					let url = `/main_test2`;
					location.replace(url);
				}
			})
		}
	})
	
	//정산
/* 	let ttd = $('<td><button type="button" class="btn btn-block btn-outline btn-primary">'+$name+'<br>'+$cost+'</button><td />'));
			ttd.click(function() {
				console.log("test11");
			}) */
	/* $("td")
	.apend
	"butt"
	.addClass(btn btn-bl)
	.on(cleick..asdjfaskdjl)
	.attr(id, idcx)
	.text()
	ttd.off(click).on
) */
	
	$("#calculate").click(function() {
		
		alert("정산되었습니다.");
		
		
		
		/* sendRegData();
		
		function sendRegData() {
			$.ajax({
				type: "POST",
				url : "/sl_table_select",
				//data:
				async:"true",
				success: function(data) {
					console.log("success");
					let url = `/main_test2`;
					location.replace(url);
				}
			})
		} */
	})
	
	
	
    </script>
    


</body>

</html>