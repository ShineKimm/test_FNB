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
                            <h5>전표조회 화면</h5>
                        </div>
                        <div class="ibox-content">
					        <div class="wrapper wrapper-content animated fadeIn">
					            <div class="row">
									<div class="col-lg-6">
										<div class="ibox float-e-margins">
											<div class="ibox-title">
												<h5>전표조회</h5>
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
														<th>전표번호</th>
														<th>테이블명</th>
														<th>금액</th>
														<th>상태</th>
													</tr>
													</thead>
													<tbody>
													<tr>
														<td>1</td>
														<td>4번</td>
														<td>371,000원</td>
														<td class="text-navy">판매중</td>
													</tr>
													<tr>
														<td>2</td>
														<td><span class="pie">룸 1번</span></td>
														<td>123,000원</td>
														<td class="text-warning"> 취소 </td>
													</tr>
													<tr>
														<td>3</td>
														<td><span class="pie">7번</span></td>
														<td>62,000원</td>
														<td class="text-navy"> 정산 </td>
													</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>									
					            </div>
                                <button type="button" class="btn btn-outline btn-primary">확인</button>
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


</body>

</html>
