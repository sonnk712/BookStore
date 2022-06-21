
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->

<nav class="Menu1">
    <div class="container">
        <!--        <a class="Thuonghieu" href="home">Sách</a>-->
        <!-- Logo -->
        <div class="logo_agile">
            <!-- class="Thuonghieu" -->    
            <a  href="home" class="font-weight-bold font-italic">
                <img src="img/book-16.png" alt=" " class="img-fluid">

            </a>     
        </div>
        <!-- //Logo -->
        <div class="Luachon1">
            <ul class="Luachon2">

                <c:if test="${sessionScope.acc == null}">
                    <li class="nav-item">
                        <a class="linkdangnhap" href="Login.jsp">Đăng nhập</a>
                    </li>  
                    <li class="nav-item">
                        <a class="linkdangnhap" href="register.jsp">Đăng ký</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.acc.role == 1}">
                    <li class="nav-item">
                        <a class="linkdangnhap" href="homeadmin">Chức năng Admin</a>
                    </li>
                    <li class="nav-item">
                        <a class="linkdangnhap" href="${pageContext.request.contextPath}/history">Lịch sử mua hàng</a>
                    </li>
                </c:if> 


                <c:if test="${sessionScope.acc.role == 0}">
                    <li class="nav-item">
                        <a class="linkdangnhap" href="${pageContext.request.contextPath}/history">Lịch sử mua hàng</a>
                    </li>
                </c:if>    
                <c:if test="${sessionScope.acc != null}">
                    <li class="nav-item">
                        <a class="linkdangnhap" href="home">Xin chào ${sessionScope.acc.name}</a> 
                    </li> 
                    <li class="nav-item">
                        <a class="linkdangnhap" href="logout">Đăng xuất</a>
                    </li> 
                </c:if>     
            </ul>

            <form action="search" method="post" class="timkiemvagio">
                <div class="onhapten">
                    <input value="${txtS}" name="txt" type="text" class="nhapten" placeholder="Tìm...">
                    <div class="otimkiem">
                        <button type="submit" class="nuttimkiem">
                            <!--<i class="timkiemten">Tìm</i>-->
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
                <c:if test="${sessionScope.acc == null}">
                    <a href="Login.jsp" class="giohang"><i class="fa fa-shopping-cart"></i></a>
                    </c:if>
                    <c:if test="${sessionScope.acc.role != null}">
                    <a href="${pageContext.request.contextPath }/cart" class="giohang"><i class="fa fa-shopping-cart"></i></a>
                    </c:if>
                    <!--<a class="giohang" href="${pageContext.request.contextPath }/cart"><i class="fa fa-shopping-cart"></i></a>-->
            </form>
        </div>
    </div>
</nav>
<section class="Tieude">
    <div class="containertieude">
        <!--        <h1 class="manhinh-tieude">Cửa hàng sách uy tín</h1>
                <p class="khauhieu">Chất lượng, uy tín, đa dạng, luôn được cập nhật</p>-->
    </div>
</section>
<!--end of menu-->