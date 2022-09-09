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
        
		/*popup*/
		.popup_layer {position:fixed;top:0;left:0;z-index: 10000; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.4); }
		/*팝업 박스*/
		.popup_box{position: relative;top:50%;left:50%; overflow: auto; height: 600px; width:375px;transform:translate(-50%, -50%);z-index:1002;box-sizing:border-box;background:#fff;box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);-webkit-box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);-moz-box-shadow: 2px 5px 10px 0px rgba(0,0,0,0.35);}
		/*컨텐츠 영역*/
		.popup_box .popup_cont {padding:50px;line-height:1.4rem;font-size:14px; }
		.popup_box .popup_cont h2 {padding:15px 0;color:#333;margin:0;}
		.popup_box .popup_cont p{ border-top: 1px solid #666;padding-top: 30px;}
		/*버튼영역*/
		.popup_box .popup_btn {display:table;table-layout: fixed;width:100%;height:70px;background:#ECECEC;word-break: break-word;}
		.popup_box .popup_btn a {position: relative; display: table-cell; height:70px;  font-size:17px;text-align:center;vertical-align:middle;text-decoration:none; background:#ECECEC;}
		.popup_box .popup_btn a:before{content:'';display:block;position:absolute;top:26px;right:29px;width:1px;height:21px;background:#fff;-moz-transform: rotate(-45deg); -webkit-transform: rotate(-45deg); -ms-transform: rotate(-45deg); -o-transform: rotate(-45deg); transform: rotate(-45deg);}
		.popup_box .popup_btn a:after{content:'';display:block;position:absolute;top:26px;right:29px;width:1px;height:21px;background:#fff;-moz-transform: rotate(45deg); -webkit-transform: rotate(45deg); -ms-transform: rotate(45deg); -o-transform: rotate(45deg); transform: rotate(45deg);}
		.popup_box .popup_btn a.close_day {background:#5d5d5d;}
		.popup_box .popup_btn a.close_day:before, .popup_box .popup_btn a.close_day:after{display:none;}
		/*오버레이 뒷배경*/
		.popup_overlay{position:fixed;top:0px;right:0;left:0;bottom:0;z-index:1001;;background:rgba(0,0,0,0.5);}
		/*popup*/	        

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
                            <h5>주문내역 팝업</h5>
                        </div>
                        <div class="ibox-content">
					        <div class="wrapper wrapper-content animated fadeIn">
					            <div class="row">
									<div class="col-lg-6" style="display: none;">
										<div class="ibox float-e-margins">
											<div class="ibox-title">
												<h5>주문내역</h5>
												<div class="ibox-tools">
													<a class="collapse-link">
														<i class="fa fa-chevron-up"></i>
													</a>
													<a class="dropdown-toggle" data-toggle="dropdown" href="#">
														<i class="fa fa-wrench"></i>
													</a>
													<ul class="dropdown-menu dropdown-user">
														<li><a href="#">Config option 1</a>
														</li>
														<li><a href="#">Config option 2</a>
														</li>
													</ul>
													<a class="close-link">
														<i class="fa fa-times"></i>
													</a>
												</div>
											</div>
											<div class="ibox-content">
									
												<table class="table table-hover">
													<thead>
													<tr>
														<th>상품명</th>
														<th>수량</th>
														<th>삭제</th>
													</tr>
													</thead>
													<tbody>
													<tr>
														<td>수제양념갈비</td>
														<td>5</td>
														<td><button type="button" class="btn btn-outline btn-primary">삭제</button></td>
													</tr>
													<tr>
														<td>한우우거지해장국</td>
														<td><span class="pie">3</span></td>
														<td><button type="button" class="btn btn-outline btn-primary">삭제</button></td>
													</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>									
					            </div>
                                <button type="button" class="btn btn-outline btn-primary"><a href="javascript:openPop()">팝업오픈!!</a></button>
					        </div>                            
							
                        </div>
                    </div>
                </div>

				<div class="popup_layer" id="popup_layer" style="display: none;">
				  <div class="popup_box">
				
				      <!--팝업 컨텐츠 영역-->
				      <div class="popup_cont">
						<table class="table table-hover">
							<thead>
							<tr>
								<th>상품명</th>
								<th>수량</th>
								<th>삭제</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td>수제양념갈비</td>
								<td>5</td>
								<td><button type="button" class="btn btn-outline btn-primary">삭제</button></td>
							</tr>
							<tr>
								<td>한우우거지해장국</td>
								<td><span class="pie">3</span></td>
								<td><button type="button" class="btn btn-outline btn-primary">삭제</button></td>
							</tr>
							</tbody>
						</table>
				
				      </div>
				      <!--팝업 버튼 영역-->
				      <div class="popup_btn" style="float: bottom; margin-top: 200px;">
				          <a href="javascript:closePop();">닫기</a>
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
        
        function openPop() {
            document.getElementById("popup_layer").style.display = "block";

        }

        //팝업 닫기
        function closePop() {
            document.getElementById("popup_layer").style.display = "none";
        }

    </script>


</body>

</html>
