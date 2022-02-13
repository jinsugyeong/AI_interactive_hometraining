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
        var 
        $allCheck = $('#allCheck'),
        $checks = $('.checks'); 
        
     // 위시리스트 전체 체크박스
        $(document).on('click', '#allCheck', function(){
        	$('.checks').prop('checked', $(this).prop('checked'));
        	$('.checks').change();
        });
     
     	$(document).on({
		      //전체체크 박스 카운팅     
     		click: function(event){
     			var len = $('.checks').length,
    			checkLen = $('.checks:checked').length;
     			     				
    			if(len != checkLen)
    				$('#allCheck').prop('checked', false);
    			else
    				if($('#here td').length != null) {
    				$('#allCheck').prop('checked', true);
    				}

     		},
     		
     		//수강신청 목록, 결제 총액
     		change : function(event){
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
				
				$('#subjectList').html(addHtml);
				$('.meta-value span').text(sumPrice);
     		}    	
     		
     		
     	}, '.checks');
     	


        $(function() {	
			var
			$checksDel = $('#checksDel'),
			$sugangBtn = $('#sugangBtn'),
			userId = 'jinsugyeong',
			noData=function(){
				var textdata = '휑~';
				$('aside').css('display', 'none');
				$('.details-content').parent().attr('class', 'col-lg-10 col-12 offset-lg-1');
				$('.details-content').html(textdata).css({'text-align':'center','font-size':150+'px', 'font-family':'Kirang Haerang'});
				textdata = '<div class="button"><a href="JavaScript:Void(0);" class="btn">클래스 목록</a></div>'
				$('.details-content').append(textdata);
				$('.details-content .button').css('font-size', 25+'px');
				$('#subjectList').html('<li>강의를 선택해주세요.</li>');
				$('.meta-value span').text(0);
				
			}; 
			
			//wishlist db목록 ajax로 받아오기
			var request = $.ajax({
				url: "wishlist_db.jsp",
				method: "POST",
				data: { loginId : userId },
				dataType: "json"
			});	
			
			//wishlist 테이블에 넣기
			request.done(function(data){
			
				for(var i=0; i<data.length; i++){
					var
					subjectName = data[i].subjectName,
					teacherName = data[i].teacherName,
					subjectPrice = data[i].subjectPrice,
					html = '';
					
					html += '<tr><td><input class="form-check-input checks" type="checkbox" value="';
					html += subjectName;
					html += '"></td><td><div class="bg-secondary" style=" width: 100%; height: 70px;"></div></td>';
					html += '<td><ul><li class="subjectName">';
					html += subjectName+'</li>';
					html += '<li>'+teacherName+'</li></ul></td>';
					html += '<td><div class="subject-price"><span>'+subjectPrice+'</span> 원</div></td></tr>';
					
					$('#here').append(html);
					$allCheck.click();			
				}
			});
			
			request.fail(function() {
				noData();
			});
			
			//전체체크 박스 카운팅   
			/* $checks.click(function(){
			var len = $('.checks').length,
			checkLen = $('.checks:checked').length;
			
			if(len != checkLen)
				$allCheck.prop('checked', false);
			else
				$allCheck.prop('checked', true);
			}); */			
			
			
			//선택 삭제 버튼
			$checksDel.click(function() {
				if($('.checks:checked').length!=0){
				var delConfirm = confirm('선택한 강의를 삭제하시겠습니까?');
				if(delConfirm == true){
					$('.checks:checked').each(function() {
						$(this).parents('tr').remove();
					});
					
					if($allCheck.prop('checked')) {
						noData();
					}
					
					$('#allCheck').trigger('click');
					
				}
				}else{
					alert('삭제할 목록을 선택해주세요');
				}
			});
			
			//수강신청 목록, 결제 총액
			/* $checks.change(function() {
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
				
			}); */			
			
			
			//수강신청 버튼
			$sugangBtn.click(function() {
				var checkLen = $('.checks:checked').length;
				if(checkLen == 0){
					alert('수강 신청할 강의를 선택해주세요.')
				}else {
					var
					sugangConfirm = confirm('수강신청 하시겠습니까?');
					if(sugangConfirm == true){
						var checkboxValues = [];
					    $(".checks:checked").each(function(i) {
					        checkboxValues.push($(this).val());
					    });			
					    
					    var request = $.ajax({
							url: "account.jsp",
							method: "POST",
							data: { checkArray : checkboxValues },
							dataType: "html"
						});	
					    
					    request.done(function(data){
					    	var html='결제';
					    	$('#progressbar li:nth-child(2)').attr('class', 'active');
					    	$('.pageTitle h4').html(html);
					    	
					    	$('#contentRow').html(data);
					    });						
					}	
				}
			});
			
			
			
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