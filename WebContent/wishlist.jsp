<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
@import url('https://fonts.googleapis.com/css2?family=Kirang+Haerang&display=swap');
</style>
<jsp:include page="/WEB-INF/view/include/pageTop.jsp"></jsp:include>
<!-- Start Content Area -->
<div class="event-details section">
	<div class="container">	
	
		<div class="row">
			<div class="col-lg-7 col-12 offset-lg-1 pageTitle">
				<h4>위시리스트</h4>
			</div>
			<div class="col-lg-3 col-12 pageNav" >
				<ul id="progressbar">
			      <li class="active">위시리스트</li>  
			      <li>결제</li> 
			      <li>수강신청 완료</li>
			    </ul>
			</div>
		</div>
		
		<div class="row" id="contentRow">
			<div class="col-lg-7 col-12 order-2 order-lg-1 offset-lg-1">
				<div class="details-content">
					<table class="table align-middle" id="wishListTable">
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
						<tbody id="here">

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
									<span class="meta-value"><span></span> 원</span>
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