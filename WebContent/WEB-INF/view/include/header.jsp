<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header navbar-area">
    <!-- Toolbar Start -->
    <div class="toolbar-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-6">
                    <div class="toolbar-social">
                        <ul>
                            <li><a href="javascript:void(0)"><i class="lni lni-facebook-original"></i></a></li>
                            <li><a href="javascript:void(0)"><i class="lni lni-twitter-original"></i></a></li>
                            <li><a href="javascript:void(0)"><i class="lni lni-instagram"></i></a></li>
                            <li><a href="javascript:void(0)"><i class="lni lni-linkedin-original"></i></a></li>
                            <li><a href="javascript:void(0)"><i class="lni lni-google"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-6">
                    <div class="toolbar-login">
                        <div class="button">
                            <a href="wishlist.jsp"><i class="lni lni-cart lni-xlg"></i></a>
                            <a href="login.html" class="btn">Log In</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Toolbar End -->
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-12">
            <div class="nav-inner">
                <nav class="navbar navbar-expand-lg">
                    <a class="navbar-brand" href="index.jsp">
                        <img src="${pageContext.request.contextPath}/resources/EduGrids-free-lite/assets/images/logo/logo_2.png" alt="Logo">
                    </a>
                    <button class="navbar-toggler mobile-menu-btn" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="toggler-icon"></span>
                        <span class="toggler-icon"></span>
                        <span class="toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                        <ul id="nav" class="navbar-nav ms-auto tw-bd" >
                            <li class="nav-item"><a class="active" href="index.jsp">Home</a></li>
                            <li class="nav-item"><a href="index.jsp">강의</a></li>
                            <li class="nav-item"><a href="javascript:void(0)">챌린지</a></li>
                            <li class="nav-item">
                                <a class="page-scroll dd-menu collapsed" href="javascript:void(0)"
                                    data-bs-toggle="collapse" data-bs-target="#submenu-1-4"
                                    aria-controls="navbarSupportedContent" aria-expanded="false"
                                    aria-label="Toggle navigation">멘토링</a>
                                <ul class="sub-menu collapse" id="submenu-1-4">
                                    <li class="nav-item"><a href="about-us.html">About Us</a></li>
                                </ul>
                            </li>
                            <li class="nav-item"><a href="javascript:void(0)">운동일지</a></li>
                            <li class="nav-item">
                            	 <a class="page-scroll dd-menu collapsed" href="javascript:void(0)"
                                    data-bs-toggle="collapse" data-bs-target="#submenu-1-5"
                                    aria-controls="navbarSupportedContent" aria-expanded="false"
                                    aria-label="Toggle navigation">마이페이지</a>
                                <ul class="sub-menu collapse" id="submenu-1-5">
                                    <li class="nav-item"><a href="adminindex.jsp">관리자페이지</a></li>
                                    <li class="nav-item"><a href="javascript:void(0)">대쉬보드</a></li>
                                    <li class="nav-item"><a href="wishlist.jsp">위시리스트</a></li>
                                </ul>
                            </li>
                        </ul>
                        <form class="d-flex search-form">
                            <input class="form-control me-2" type="search" placeholder="Search"
                                aria-label="Search">
                            <button class="btn btn-outline-success" type="submit">
                            	<i class="lni lni-search-alt"></i>
                            </button>
                              <a href="javascript:void(0)"><i class="bi alarm-fille"></i></a>
                              <a href="javascript:void(0)"><i class="bi alarm-fille"></i></a>
                        </form>
                    </div> <!-- navbar collapse -->
                </nav> <!-- navbar -->
            </div>
            </div>
        </div> <!-- row -->
    </div> <!-- container -->
</header>