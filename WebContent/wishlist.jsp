<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/view/include/pageTop.jsp"></jsp:include>
<!-- Start Content Area -->
<div class="event-details section">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-12 offset-lg-2 pageTitle">
				<h4>위시리스트</h4>
			</div>
			<div class="col-lg-4 col-12" >
				<ul id="pageNav">
				<li class="pageActive">위시리스트</li>
				<li> > 결제</li>
				<li> > 수강신청 완료</li>
				</ul>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-6 col-12 order-2 order-lg-1 offset-lg-2">
				<div class="details-content">
					<table class="table align-middle">
						<colgroup>
							<col class="col-1">
							<col class="col-4">
							<col class="col-4">
							<col>
						</colgroup>
						<thead>
							<tr>
								<th colspan="4">
									<div class="float-start">
										<input class="form-check-input" type="checkbox" value="" id="allCheck">
									</div>
									강의정보
								</th>								
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input class="form-check-input checks" type="checkbox" value="강의명1"></td>
								<td>
									<div class="bg-secondary" style=" width: 100%; height: 70px;"></div>
								</td>
								<td>
									<ul>
										<li class="subjectName">강의명1</li>
										<li>강사명</li>
									</ul>
								</td>
								<td>
									<div class="subject-price"><span>1000</span> 원</div>
								</td>
							</tr>
							<tr>
								<td><input class="form-check-input checks" type="checkbox" value="강의명2"></td>
								<td>
									<div class="bg-secondary" style=" width: 100%; height: 70px;"></div>
								</td>
								<td>
									<ul>
										<li class="subjectName">강의명2</li>
										<li>강사명</li>
									</ul>
								</td>
								<td>
									<div class="subject-price"><span>2000</span> 원</div>
								</td>
							</tr>
							<tr>
								<td><input class="form-check-input checks" type="checkbox" value="강의명3"></td>
								<td>
									<div class="bg-secondary" style=" width: 100%; height: 70px;"></div>
								</td>
								<td>
									<ul>
										<li class="subjectName">강의명3</li>
										<li>강사명</li>
									</ul>
								</td>
								<td>
									<div class="subject-price"><span>3000</span> 원</div>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="button deleteSubject">
						<a href="JavaScript:Void(0);" class="btn" id="checksDel" >선택삭제</a>
					</div>
				</div>
				
			</div>
			<aside class="col-lg-3 col-12 order-1 order-lg-2">
				<div class="event-sidebar">
					<div class="single-widget">
						<div class="single-sidget-content">
							<ul class="entry-info">
								<li class="meta-price">
									<span class="meta-label">결제 총액</span> 
									<span class="meta-value"><span>0</span> 원</span>
								</li>
								<li class="meta-list">
									<span>수강신청 목록</span>
									<ul id="subjectList">
										<li>강의를 선택해주세요.</li>
									</ul>
								</li>	
							</ul>
						</div>
					</div>
					<div class="button">
						<a href="JavaScript:Void(0);" class="btn event-btn" id="sugangBtn">수강신청</a>
					</div>
				</div>
			</aside>

		</div>
	</div>
</div>
<!-- End Content Area -->

<jsp:include page="/WEB-INF/view/include/pageFooter.jsp"></jsp:include>