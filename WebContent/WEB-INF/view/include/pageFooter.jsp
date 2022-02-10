<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Start Footer Area -->
    <jsp:include page="/WEB-INF/view/include/footer.jsp"></jsp:include>
    <!--/ End Footer Area -->

    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top btn-hover">
        <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="${pageContext.request.contextPath}/resources/EduGrids-free-lite/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/EduGrids-free-lite/assets/js/count-up.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/EduGrids-free-lite/assets/js/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/EduGrids-free-lite/assets/js/tiny-slider.js"></script>
    <script src="${pageContext.request.contextPath}/resources/EduGrids-free-lite/assets/js/glightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/EduGrids-free-lite/assets/js/main.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    
    <script type="text/javascript">
        //jquery 
        $(function() {	
			var
			$allCheck = $('#allCheck'),
			$checksDel = $('#checksDel'),
			$subjectList = $('#subjectList'),
			$sugangBtn = $('#sugangBtn'),
			$checks = $('.checks');
			
			// 위시리스트 체크박스
			$allCheck.click(function() {
				$checks.prop('checked', $(this).prop('checked'));
				$checks.change();
			});
			
			//선택 삭제 버튼
			$checksDel.click(function() {
				if($('.checks:checked').length!=0){
				var delConfirm = confirm('선택한 강의를 삭제하시겠습니까?');
				if(delConfirm == true){
					$('.checks:checked').each(function() {
						$(this).parents('tr').remove();
					});
					
					$allCheck.click();
				}
				}else{
					alert('삭제할 목록을 선택해주세요');
				}
			});
			
			//수강신청 목록 li
			$checks.change(function() {
				var addHtml = '';				
				var sumPrice = 0;
				var sprice =0;
				
				$('.checks:checked').each(function(){
					addHtml += '<li>'+ $(this).val() +'</li>'
					sprice = Number($(this).parents('tr').find('.subject-price span').text());
					sumPrice += sprice;					
				});
				
				if(addHtml == ''){
					addHtml = '<li>강의를 선택해주세요.</li>';
				}
				
				$subjectList.html(addHtml);
				$('.meta-value span').text(sumPrice);
			});
			//전체체크 박스 카운팅
			$checks.click(function(){
					var len = $('.checks').length,
					checkLen = $('.checks:checked').length;
					
					if(len != checkLen)
						$allCheck.prop('checked', false);
					else
						$allCheck.prop('checked', true);
			});
			
			//수강신청 버튼
			$sugangBtn.click(function() {
				var checkLen = $('.checks:checked').length;
				if(checkLen == 0){
					alert('수강 신청할 강의를 선택해주세요.')
				}else {
					var sugangConfirm = confirm('수강신청 하시겠습니까?');
					if(sugangConfirm == true){
						location.href='account.jsp' 
					}	
				}
			});
			
			
			
			
			//로드됐을때 전체선택 트리거
			$allCheck.click();
			
        });
		
    
    	//========= Hero Slider 
        tns({
            container: '.hero-slider',
            items: 1,
            slideBy: 'page',
            autoplay: false,
            mouseDrag: true,
            gutter: 0,
            nav: true,
            controls: false,
            controlsText: ['<i class="lni lni-arrow-left"></i>', '<i class="lni lni-arrow-right"></i>'],
        });
        //====== Clients Logo Slider
        tns({
            container: '.client-logo-carousel',
            slideBy: 'page',
            autoplay: true,
            autoplayButtonOutput: false,
            mouseDrag: true,
            gutter: 15,
            nav: false,
            controls: false,
            responsive: {
                0: {
                    items: 1,
                },
                540: {
                    items: 3,
                },
                768: {
                    items: 4,
                },
                992: {
                    items: 4,
                },
                1170: {
                    items: 6,
                }
            }
        });
        //========= glightbox
        GLightbox({
            'href': 'https://www.youtube.com/watch?v=r44RKWyfcFw&fbclid=IwAR21beSJORalzmzokxDRcGfkZA1AtRTE__l5N4r09HcGS5Y6vOluyouM9EM',
            'type': 'video',
            'source': 'youtube', //vimeo, youtube or local
            'width': 900,
            'autoplayVideos': true,
        });
    </script>
</body>

</html>