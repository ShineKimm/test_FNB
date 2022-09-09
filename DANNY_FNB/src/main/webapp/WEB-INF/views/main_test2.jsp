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
                            <h5>매출등록 화면</h5>
                        </div>
                        <div class="ibox-content">
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="input-group">
                                    	<input type="text" placeholder="상품코드, 상품명 입력" class="input-sm form-control"> 
                                    	<span class="input-group-btn"><button type="button" class="btn btn-sm btn-primary"> 조회 </button> </span>
                                    </div>
                                </div>
	                        </div>
					        <div class="wrapper wrapper-content animated fadeIn">
					            <div class="row">
									<div class="tabs-container">
				                        <ul class="nav nav-tabs">
				                            <li class="active"><a data-toggle="tab" href="#tab-1">식사</a></li>
				                            <li class=""><a data-toggle="tab" href="#tab-2">안주</a></li>
				                            <li class=""><a data-toggle="tab" href="#tab-3">음료</a></li>
				                        </ul>
				                        <div class="tab-content">
				                            <div id="tab-1" class="tab-pane active">
				                            	<div style="overflow:auto; width:600px; height:250px;" id="sl_list1">
					                            	<!-- <div class="col-lg-4">
														<div class="ibox float-e-margins">
															<div class="p-xs border-top-bottom">
																<h5>할인율</h5>
							                                   	<select class="form-control m-b" name="account">
							                                       	<option>100%</option>
							                                       	<option>10%</option>
							                                       	<option>option 3</option>
							                                       	<option>option 4</option>
							                                   	</select>
															</div>
															<div class="p-xs border-top-bottom">
																<h5>구분</h5>
							                                   	<select class="form-control m-b" name="account">
							                                       	<option>정상</option>
							                                       	<option>option 2</option>
							                                       	<option>option 3</option>
							                                       	<option>option 4</option>
							                                   	</select>
															</div>
															<div style="text-align: center;">금액</div>
															<div style="text-align: center;">메모</div>
														</div>
													</div> -->
				                                </div>
	                            			</div>
				                            <div id="tab-2" class="tab-pane">
				                            	<div style="overflow:auto; width:600px; height:250px;" id="sl_list2">
				                                </div>
				                            </div>
				                            <div id="tab-3" class="tab-pane">
				                            	<div style="overflow:auto; width:600px; height:250px;" id="sl_list3">
				                                </div>
	                            			</div>
				                        </div>
				                    </div>					                
	                                <button type="button" class="btn btn-outline btn-primary">이전으로</button>
	                                <button type="button" class="btn btn-outline btn-warning" onclick="window.location.href='./main_test4'">주문 내역</button>
	                                <button type="button" class="btn btn-outline btn-success" id="saveOrder">주문 저장</button>
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
    <script src="js/inspinia.js"></script>
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
            url : "/sales_list",
            /* data : JSON.stringify({  // 보낼 데이터 (Object , String, Array)
                "no" : "11",      "name" : "이름",      "nick" : "닉네임"    }), */
            success : function(data){
            	console.log("sales_list 통신 성공.");
            	
            	let pdList = new Array();
            	let cList = new Array();
            	pdList = data.ob1;
            	cList = data.ob2;
            	console.log("테스트00"+pdList);
            	
            	for (var i = 0; i < pdList.length; i++) {
            		console.log("######"+pdList[i].PD_NAME);
				}
            	
            	
            	console.log("테스트11"+data.ob1[0].PD_NAME);
            	if (data) {
            		var row ;
                	for ( var i in data) {
                		
                		//console.log("data::"+data.ob1[i].PD_NAME);
                		
    					var $pd_cd = data[i].PD_CD;
    					var $pd_name = data[i].PD_NAME;
    					var $pd_div= data[i].PD_DIV;
    					var $pd_cost= data[i].PD_COST;
    					var $pd_use= data[i].PD_USE;
    					
						if (01 == $pd_div) {
							$("#sl_list1").append($('<div class="col-lg-4">'
									+'<div class="ibox float-e-margins">'
									+'<div class="ibox-title"><h5>'+$pd_name+'</h5></div>'
									+'<div class="ibox-content">'
									+'할인율'
									+'<select id="cd_title">'
									+'</select><br>'
									+'구분&nbsp&nbsp&nbsp&nbsp'
									+'<select>'
									+'	<option>100%</option>'
									+'	<option>10%</option>'
									+'	<option>option 3</option>'
									+'</select><br>'
									+'금액&nbsp'+$pd_cost+'<br>'	
									+'<button type="button" class="btn btn-default" onclick=count("minus") style="font-weight:bold">-</button>'
									+'<a id="result">&nbsp 0 &nbsp</a>'
									+'<button type="button" class="btn btn-default" onclick=count("plus") style="font-weight:bold">+</button>'
									+'</div>'
									+'</div>'
									+'</div>'));
						}
						if (02 == $pd_div) {
							$("#sl_list2").append($('<div class="col-lg-4">'
									+'<div class="ibox float-e-margins">'
									+'<div class="ibox-title"><h5>'+$pd_name+'</h5></div>'
									+'<div class="ibox-content">'
									+'할인율 0%<br>'
									+'구분&nbsp'+$pd_use+'<br>'
									+'금액&nbsp'+$pd_cost+'<br>'
									+'<button type="button" class="btn btn-default" onclick=count("minus") style="font-weight:bold">-</button>'
									+'<a id="result">&nbsp 0 &nbsp</a>'
									+'<button type="button" class="btn btn-default" onclick=count("plus") style="font-weight:bold">+</button>'
									+'</div>'
									+'</div>'
									+'</div>'));
						}
						if (03 == $pd_div) {
							$("#sl_list3").append($('<div class="col-lg-4">'
									+'<div class="ibox float-e-margins">'
									+'<div class="ibox-title"><h5>'+$pd_name+'</h5></div>'
									+'<div class="ibox-content">'
									+'할인율 0%<br>'
									+'구분&nbsp'+$pd_use+'<br>'
									+'금액&nbsp'+$pd_cost+'<br>'
									+'<button type="button" class="btn btn-default" onclick=count("minus") style="font-weight:bold">-</button>'
									+'<a id="result">&nbsp 0 &nbsp</a>'
									+'<button type="button" class="btn btn-default" onclick=count("plus") style="font-weight:bold">+</button>'
									+'</div>'
									+'</div>'
									+'</div>'));
						}
						
						
                	}
                	for ( var i in data2) {
                		commonList[i] = data2[i];
            			console.log("arr::"+commonList[i].CD_TITLE);
            			
            			$('.cdTitle').append()
                	}
				}
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                console.log("통신 실패.");
            }
        })
        
        let commonList = new Array();
        
        $.ajax({
            type : "POST",
            url : "/calculate",
            success : function(data){
            	console.log("common_list 통신 성공.");
            	if (data) {
                	for ( var i in data) {
                		commonList[i] = data[i];
            			console.log("arr::"+commonList[i].CD_TITLE);
            			
            			/* $("#sl_list1").append($('할인율'
								+'<select>'
								+'	<option>100%</option>'
								+'	<option>10%</option>'
								+'	<option>option 3</option>'
								+'</select><br>')); */
                	}
				}
            },
            error : function(XMLHttpRequest, textStatus, errorThrown){ // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                console.log("통신 실패.");
            }
        })
        
	})
	
	//숫자증가감소 기능
	function count(type)  {
	  // 결과를 표시할 element
	  const resultElement = document.getElementById('result');
	  // 현재 화면에 표시된 값
	  let number = resultElement.innerText;
	  // 더하기/빼기
	  if(type === 'plus') {
	    number = parseInt(number) + 1;
	  }else if(type === 'minus')  {
	    number = parseInt(number) - 1;
		if (0 > number) {
			alert("값이 0보다 작습니다");
			number = 0;
		}
	  }
	  
	  // 결과 출력
	  resultElement.innerText = number;
	}	
    
    $("#saveOrder").click(function() {
    	alert("saveOrder.");
    	
		sendRegData();
		
		function sendRegData() {
			$.ajax({
				type: "POST",
				url : "/saveOrder",
				data : JSON.stringify({  // 보낼 데이터 (Object , String, Array)
                "no" : "11",      "name" : "이름",      "nick" : "닉네임"    }),
				async:"true",
				success: function(data) {
					console.log("sendRegData 성공");
				}
			})
		}
    	
    });
    
    </script>


</body>

</html>
