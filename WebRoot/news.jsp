<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>班级新闻</title>
<link type="text/css" rel="stylesheet" href="css/N_demo.css">
<link type="text/css" rel="stylesheet" href="css/HeadNav.css">
<script language="javascript" src="js/N_news.js"></script>
<script language="javascript" src="js/HeadSpan.js"></script>
</head>

<body>
	<div id="H_head">
  		<div id="H_nav">
        <ul>
        	<li><a href="home.jsp">首页</a></li>
            <li><a href="introduce.jsp">班级介绍</a></li>
            <li><a href="news.jsp">班级新闻</a></li>
            <li><a href="album.jsp">相册</a></li>
            <li><a href="MessageCheckServlet">留言板</a></li>
            <li><a href="UserInfoCheckServlet">个人信息</a></li>
        </ul>
            <!--绿色横条-->
        <span id="H_green"></span>
     </div>
  </div>	
  <div id="Ncontainer">
		<div id="Nposi-wrapper">
			<div class="Nposition">
				您现在的位置：E-commerce1>>班级新闻
			</div>
			<div class="Nsearch">
				<form name="Nsearch-form" method="post" action="">
					<input class="Nsearch-input" type="text" name="NseachInput"  />
					<input class="Nsearch-btn" type="image"  name="Nsearch-btn" src="image/Nsearch.png"/>
				</form>	
			</div>
		</div>
		<div id="Nmain-wrapper">
			<div id="NmainLeft-wrapper">
				<div id="Nnotice">
					<p>
						<span class="Nspan-label">通知公告 | <font color="#999999">INFORMATION</font></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<span class="Nmore"><a href="#">more>></a></span>
					</p>
					<hr />
					<li class="Nnotice-view">
						<span class="Nnotice-views">2014-12-23</span>
						<p class="NnoticeViews-title"><a title="关于2015年元旦节放假安排的通知" href="#"><img src="image/list-icon3.png" />关于2015年元旦节放假安排...</a></p>
					</li>
					<li class="Nnotice-view">
						<span class="Nnotice-views">2014-10-21</span>
						<p class="NnoticeViews-title"><a title="重庆邮电大学2015年度 “大学生暑期赴美社会实践”项目报名申请通知" href="#"><img src="image/list-icon3.png" />重庆邮电大学2015年度 “大学生...</a></p>
					</li>
					<li class="Nnotice-view">
						<span class="Nnotice-views">2014-09-19</span>
						<p class="NnoticeViews-title"><a title="关于2014年国庆节放假安排的通知" href="#"><img src="image/list-icon3.png" />关于2014年国庆节放假安排...</a></p>
					</li>
					<li class="Nnotice-view">
						<span class="Nnotice-views">2014-09-04</span>
						<p class="NnoticeViews-title"><a title="关于2014年中秋节放假安排的通知" href="#"><img src="image/list-icon3.png" />关于2014年中秋节放假安排...</a></p>
					</li>
					<li class="Nnotice-view">
						<span class="Nnotice-views">2014-09-01</span>
						<p class="NnoticeViews-title"><a title="本周星期二晚上七点电商一班全体同学于2208召开班会" href="#"><img src="image/list-icon3.png" />本周星期二晚上七点电商一班...</a></p>
					</li>
					<li class="Nnotice-view">
						<span class="Nnotice-views">2014-08-23</span>
						<p class="NnoticeViews-title"><a title="校园移动门户测试通知" href="#"><img src="image/list-icon3.png" />校园移动门户测试通知</a></p>
					</li>
				</div>
				<div id="Nservice">
					<p><span class="Nspan-label">服务信息 | <font color="#999999">SERVICE</font></span></p>
					<hr />
					<div id="Ntab-title">
							<li id="Ntaba" onmouseover="change1(0)">招聘求职</li>
							<li id="Ntabb" onmouseover="change1(1)">办公电话</li>
							<li id="Ntabc" onmouseover="change1(2)">公交信息</li>
					</div>
					<div id="Ntaba-detail">
						<li>
							<p class="Ntaba-detail-title"><a href="#" title="中国电信股份有限公司江津分公司招聘 "><img src="image/list-icon3.jpg" />中国电信股份有限公司江津... </a></p>
							<span class="Nservice-date">2015-01-09</span> 
						</li>
						<li>
							<p class="Ntaba-detail-title"><a href="#" title="重庆金融资产交易所2015校园招聘（学生携带三份简历[2305教室] "><img src="image/list-icon3.jpg" />重庆金融资产交易所... </a></p>
							<span class="Nservice-date">2015-01-07</span> 
						</li>
						<li>
							<p class="Ntaba-detail-title"><a href="#" title="南坪万达广场旁永辉超市诚招收银员2名 "><img src="image/list-icon3.jpg" />南坪万达广场旁永辉超市诚... </a></p>
							<span class="Nservice-date">2015-01-02</span> 
						</li>
						<li>
							<p class="Ntaba-detail-title"><a href="#" title="长安汽车2015校园招聘 [就业中心会议室]  "><img src="image/list-icon3.jpg" />长安汽车2015校园招聘 </a></p>
							<span class="Nservice-date">2015-12-28</span> 
						</li>
						<li>
							<p class="Ntaba-detail-title"><a href="#" title="重庆洪峰工业设备安装有限公司招聘 [2206教室]"><img src="image/list-icon3.jpg" />重庆洪峰工业设备安装... </a></p>
							<span class="Nservice-date">2015-12-11</span> 
						</li>
						<li>
							<p class="Ntaba-detail-title"><a href="#" title="腾讯校园招聘 [2209教室]"><img src="image/list-icon3.jpg" />腾讯校园招聘 [2209教室] </a></p>
							<span class="Nservice-date">2015-11-25</span> 
						</li>
						<li>
							<p class="Ntaba-detail-title"><a href="#" title="中国移动校园招聘[4103教室]"><img src="image/list-icon3.jpg" />中国移动校园招聘[4103教室] </a></p>
							<span class="Nservice-date">2015-11-25</span> 
						</li>
						<p class="Nmore" style="float:right"><a href="#">more>></a></p>
					</div>
					<div id="Ntabb-detail">
							<p class="Ntabb-detail-title">
								<a href="#">常用电话:</a>
								<select>
									<option value="62461018">62461018(24小时值班电话)
									<option value="62461003">62461003（校办）
									<option value="62460289">62460289（能源中心）
								</select>
							</p>
							<p class="Ntabb-detail-title">
								<a href="#">信息与网络管理中心:</a>
								<select>
									<option value="62461295">62461295
									<option value="62461336">62461336
								</select>
							</p>
							<p class="Ntabb-detail-title">
								<a href="#">财务处:</a>
								<select>
									<option value="62461631">62461631
									<option value="62461257">62461257
								</select>
							</p>
							<p class="Ntabb-detail-title">
								<a href="#">保卫处:</a>
								<select>
									<option value="62461926">62461926
									<option value="62461018">62461018
									<option value="62460110">62460110
								</select>
							</p>
							<p class="Ntabb-detail-title">
								<a href="#">校医院:</a>
								<select>
									<option value="62460055">62460055
									<option value="62460278">62460278
								</select>
							</p>
							<p class="Ntabb-detail-title">
								<a href="#">学生处:</a>
								<select>
									<option value="62460144">62460144
									<option value="62461639">62461639
								</select>
							</p>
							<p class="Ntabb-detail-title">
								<a href="#">图书馆:</a>
								62460151
							</p>
							<p class="Ntabb-detail-title"><a href="#">教务处：</a>62461386</p>
							<p class="Ntabb-detail-title"><a href="#">经济管理学院：</a>62461439</p>
					</div>
					<div id="Ntabc-detail">
						<a href="#"><img src="image/map.png" title="map"/></a>
						<span class="Nmore" style="float:right"><a href="#">查看大图</a></span>
					</div>
				</div>
				<div id="Nmultiple">
					<div class="Nmultiple-label">
						<span class="Nspan-label"> | 综合新闻</span>
						<div class="Nmultiple-detail">
							<a href="#"><img id="Nmulobj" src="image/Nmulti1.jpg" /></a>
						</div>
					</div>	
				</div>
			</div>
			<div id="NmainRight-wrapper">
				<div id="Nscroll-container">
					<div id="Nscroll-list" style="left:-640px;">
                    	<img src="image/Nhappy5.jpg"  />
						<img src="image/Nhappy1.jpg" />
						<img src="image/Nhappy2.jpg"  />
						<img src="image/Nhappy3.jpg"  />
						<img src="image/Nhappy4.jpg" />
						<img src="image/Nhappy5.jpg"  />
                        <img src="image/Nhappy1.jpg" />
					</div>
					<div id="Nscroll-buttons">
						<span index="1" class="on">1</span>
						<span index="2">2</span>
						<span index="3">3</span>
						<span index="4">4</span>
						<span index="5">5</span>
					</div>
					<div id="prev"><img src="image/Nprev.png"/></div>
					<div id="next"><img src="image/Nnext.png" /></div>
				</div>
				<div id="NclassNews">
					<li id="Nclass-list">
						<a href="#" title="0361301团支部全体同学外出一游"><img src="image/Nact1.jpg" /></a>
						<p>0361301团支部全体同学外出一游</p>
					</li>
					<li id="Nclass-list">
						<a href="#" title="中秋班级聚餐"><img src="image/Nact2.jpg"/></a>
						<p>中秋班级聚餐</p>
					</li>
					<li id="Nclass-list">
						<a href="#" title="班级成员生日party"><img src="image/Nact3.jpg"/></a>
						<p>班级成员生日party</p>
					</li>
					<li id="Nclass-list" style="margin-right:0px">
						<a href="#" title="电商一班大家庭班会庆端午欢乐多多"><img src="image/Nact4.jpg" /></a>
						<p>电商一班大家庭班会庆端午欢乐多多</p>
					</li>
				</div>
				<div id="NcampusNews">
					<div id="Ncampus-label" ><p>校内新闻<p></div>
					<div id="Ncampus-detail">
						<li class="Ncampus-view">
							<span class="Ncampus-views"> 2015-01-20 </span>
							<p class="NcampusViews-title"><a title="我校在重庆市第六届“科慧杯”研究生创新实践大赛中获佳绩" href="#"><img src="image/list-icon1.png"/>我校在重庆市第六届“科慧杯”研究生创新实践大赛中获佳绩</a></p>
						</li>
						<li class="Ncampus-view">
							<span class="Ncampus-views"> 2015-01-19 </span>
							<p class="NcampusViews-title"><a title="重庆市研究生教育工作会在我校召开" href="#"><img src="image/list-icon1.png"/>重庆市研究生教育工作会在我校召开</a></p>
						</li>
						<li class="Ncampus-view">
							<span class="Ncampus-views"> 2015-01-19 </span>
							<p class="NcampusViews-title"><a title="  《西方哲学智慧》课程入选全国大学素质教育优秀通选课" href="#"><img src="image/list-icon1.png"/>  《西方哲学智慧》课程入选全国大学素质教育优秀通选课</a></p>
						</li>
						<li class="Ncampus-view">
							<span class="Ncampus-views"> 2015-01-16 </span>
							<p class="NcampusViews-title"><a title="  2015年教工篮协嘉年华活动举行" href="#"><img src="image/list-icon1.png"/>  2015年教工篮协嘉年华活动举行</a></p>
						</li>
						<li class="Ncampus-view">
							<span class="Ncampus-views"> 2015-01-16 </span>
							<p class="NcampusViews-title"><a title="      国家自然科学基金项目专题培训会举行" href="#"><img src="image/list-icon1.png"/>      国家自然科学基金项目专题培训会举行</a></p>
						</li>
						<li class="Ncampus-view">
							<span class="Ncampus-views"> 2015-01-15 </span>
							<p class="NcampusViews-title"><a title=" 学校召开安全工作专题会" href="#"><img src="image/list-icon1.png"/>学校召开安全工作专题会</a></p>
						</li>
						<li class="Ncampus-view">
							<span class="Ncampus-views"> 2015-01-19 </span>
							<p class="NcampusViews-title"><a title="重庆市研究生教育工作会在我校召开" href="#"><img src="image/list-icon1.png"/>重庆市研究生教育工作会在我校召开</a></p>
						</li>
						<span class="Nmore"><a href="#">more>></a></span>
					</div>
				</div>
			</div>
		</div>
	</div>
<div id="H_foot">
	<div id="H_friendLink">
        <a href="#">关于我们</a>
        <a href="#">联系我们</a>
        <a href="#">联系我们</a>
        <a href="#">关于我们</a>
        <a href="#">关于我们</a>
    </div>
</div>
	</div>
</body>
</html>
