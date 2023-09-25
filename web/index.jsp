<!DOCTYPE html>
<html lang="en">

    <head>
        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@include file="/include/navbar.jsp" %>
        <title>MEDINOVA - Hospital Website</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">  
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/home.css">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <script>
            if (window.performance && window.performance.navigation.type === 2) {
                // Trang được chuyển hướng từ servlet LogoutServlet
                history.replaceState(null, '', 'login.jsp');
                window.addEventListener('popstate', function (event) {
                    window.location.href = 'login.jsp';
                });
            }
            //scroll
            document.addEventListener("DOMContentLoaded", function () {
                // Lấy thẻ <a> có liên kết đến "Appointment"
                var appointmentLink = document.querySelector("a[href='#appointment']");

                // Kiểm tra xem liên kết có tồn tại không
                if (appointmentLink) {
                    // Gán sự kiện click cho liên kết
                    appointmentLink.addEventListener("click", function (event) {
                        event.preventDefault(); // Ngăn chặn chuyển hướng trình duyệt mặc định
                        scrollToAppointment(); // Gọi hàm cuộn màn hình xuống "Appointment"
                    });
                }

                // Hàm cuộn màn hình xuống "Appointment"
                function scrollToAppointment() {
                    var appointmentSection = document.getElementById("appointment");
                    if (appointmentSection) {
                        // Sử dụng phương thức scrollIntoView để cuộn màn hình đến phần "Appointment" một cách mượt mà
                        appointmentSection.scrollIntoView({behavior: "smooth"});
                    }
                }
            });

        </script>
    </head>

    <body>

        <!-- Hero Start -->
        <div class="container-fluid bg-primary py-5 mb-5 hero-header">
            <div class="container py-5">
                <div class="row justify-content-start">
                    <div class="col-lg-8 text-center text-lg-start">
                        <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5" style="border-color: rgba(256, 256, 256, .3) !important;">Xin chào đã đến với Medinova</h5>
                        <h1 class="display-1 text-white mb-md-4">Chuyên nghiệp – Tận tâm – Thân thiện</h1>
                        <div class="pt-2">
                            <a href="#appointment" class="btn btn-light rounded-pill py-md-3 px-md-5 mx-2">Tìm kiếm bác sĩ</a>
                            <a href="#appointment" class="btn btn-outline-light rounded-pill py-md-3 px-md-5 mx-2">Appointment</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero End -->


        <!-- About Start -->
        <div class="container-fluid py-5">
            <div class="container">
                <div class="row gx-5">
                    <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 500px;">
                        <div class="position-relative h-100">
                            <img class="position-absolute w-100 h-100 rounded" src="img/about.jpg" style="object-fit: cover;">
                        </div>
                    </div>
                    <div class="col-lg-7">
                        <div class="mb-4">
                            <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">About Us</h5>
                            <h1 class="display-4">Chăm sóc y tế tốt nhất cho bản thân và gia đình bạn</h1>
                        </div>
                        <p>Lấy cảm hứng từ nước Pháp, một trong những quốc gia có nền y tế phát triển, nơi mà các công trình kiến trúc y tế và con người luôn hòa quyện với nhau. Khi đến với Bệnh viện Medinova, quý khách sẽ luôn cảm được sự gần gũi như chính ngôi nhà của mình qua phong cách kiến trúc, văn hóa thân thiện và sự chăm sóc ân cần. Bên cạnh cơ sở vật chất khang trang, tiện nghi cao cấp, trang thiết bị y tế hiện đại, không gian thông thoáng, giúp bệnh nhân được điều trị trong một môi trường trong sạch và hiệu quả, là đội ngũ bác sĩ giỏi chuyên môn và giàu kinh nghiệm, luôn đặt tiêu chí chất lượng thăm khám, điều trị và chăm sóc bệnh nhân lên hàng đầu.</p>
                        <div class="row g-3 pt-3">
                            <div class="col-sm-3 col-6">
                                <div class="bg-light text-center rounded-circle py-4">
                                    <i class="fa fa-3x fa-user-md text-primary mb-3"></i>
                                    <h6 class="mb-0">Qualified<small class="d-block text-primary">Doctors</small></h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-6">
                                <div class="bg-light text-center rounded-circle py-4">
                                    <i class="fa fa-3x fa-procedures text-primary mb-3"></i>
                                    <h6 class="mb-0">Emergency<small class="d-block text-primary">Services</small></h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-6">
                                <div class="bg-light text-center rounded-circle py-4">
                                    <i class="fa fa-3x fa-microscope text-primary mb-3"></i>
                                    <h6 class="mb-0">Accurate<small class="d-block text-primary">Testing</small></h6>
                                </div>
                            </div>
                            <div class="col-sm-3 col-6">
                                <div class="bg-light text-center rounded-circle py-4">
                                    <i class="fa fa-3x fa-ambulance text-primary mb-3"></i>
                                    <h6 class="mb-0">Free<small class="d-block text-primary">Ambulance</small></h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Services Start -->
        <div class="container-fluid py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Services</h5>
                    <h1 class="display-4">Excellent Medical Services</h1>
                </div>
                <div class="row g-5">
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                            <div class="service-icon mb-4">
                                <i class="fa fa-2x fa-user-md text-white"></i>
                            </div>
                            <h4 class="mb-3">Chăm sóc khẩn cấp</h4>
                            <p class="m-0">Chuyên nghiệp – Tận tâm – Thân thiện- Nhanh chóng- Uy tín </p>
                            <a class="btn btn-lg btn-primary rounded-pill" href="">
                                <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                            <div class="service-icon mb-4">
                                <i class="fa fa-2x fa-procedures text-white"></i>
                            </div>
                            <h4 class="mb-3">Hoạt động & Phẫu thuật</h4>
                            <p class="m-0">///</p>
                            <a class="btn btn-lg btn-primary rounded-pill" href="">
                                <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                            <div class="service-icon mb-4">
                                <i class="fa fa-2x fa-stethoscope text-white"></i>
                            </div>
                            <h4 class="mb-3">Tham khám tại gia</h4>
                            <p class="m-0">Chúng tôi cung cấp dịch vụ tham khám tại gia
                                cho bệnh nhân của chúng tôi.</p>
                            <a class="btn btn-lg btn-primary rounded-pill" href="">
                                <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                            <div class="service-icon mb-4">
                                <i class="fa fa-2x fa-ambulance text-white"></i>
                            </div>
                            <h4 class="mb-3">Dịch vụ xe cứu thương</h4>
                            <p class="m-0">Dịch vụ vận chuyển cấp cứu nhanh chóng, giá rẻ</p>
                            <a class="btn btn-lg btn-primary rounded-pill" href="">
                                <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                            <div class="service-icon mb-4">
                                <i class="fa fa-2x fa-pills text-white"></i>
                            </div>
                            <h4 class="mb-3">Y Dược</h4>
                            <p class="m-0">Chúng tôi cung cấp Hỗ trợ Nhà thuốc tốt nhất
                                cho bệnh nhân của chúng tôi</p>
                            <a class="btn btn-lg btn-primary rounded-pill" href="">
                                <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="service-item bg-light rounded d-flex flex-column align-items-center justify-content-center text-center">
                            <div class="service-icon mb-4">
                                <i class="fa fa-2x fa-microscope text-white"></i>
                            </div>
                            <h4 class="mb-3">xét nghiệm máu</h4>
                            <p class="m-0">cơ sở có thiết bị máy móc hiện đại, điều kiện tốt, cho ra kết quả xét nghiệm  có độ chính xác cao nhất</p>
                            <a class="btn btn-lg btn-primary rounded-pill" href="">
                                <i class="bi bi-arrow-right"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Services End -->


        <!-- Appointment Start -->
        <div id="appointment" class="container-fluid bg-primary my-5 py-5">
            <div  class="container py-5">
                <div class="row gx-5">
                    <div class="col-lg-6 mb-5 mb-lg-0">
                        <div class="mb-4">
                            <h5 class="d-inline-block text-white text-uppercase border-bottom border-5">Appointment</h5>
                            <h1 class="display-4">Đặt lịch khám cho gia đình bạn</h1>
                        </div>
                        <p class="text-white mb-5">Những cải thiện đối với Khoa Các Dịch Vụ Phẫu Thuật gồm có bổ sung hai phòng mổ mới và tân trang hoàn chỉnh bốn phòng mổ hiện có. Kết quả: Khu Phẫu Thuật hiện đại có sáu phòng. Khu này sẽ gồm có các dụng cụ phẫu thuật robot hiện đại của chúng tôi, gồm có Hệ Thống Navigator để tiến hành thay hông và đầu gối xâm nhập tối thiểu và Hệ Thống da Vinci duy nhất của South Shore để tiến hành các thủ thuật phẫu thuật tiết niệu và sản khoa xâm nhập tối thiểu. Các phòng cá nhân sẽ đẩy nhanh tiến độ phỏng vấn "vào ngày tiến hành thủ thuật" và các khu vực nghỉ mới trước và sau phẫu thuật sẽ được bố trí để đảm bảo sự riêng tư và thoải mái cho khách thăm và gia đình.</p>
                        <a class="btn btn-dark rounded-pill py-3 px-5 me-3" href="">Tìm kiếm bác sĩ</a>
                        <a class="btn btn-outline-dark rounded-pill py-3 px-5" href="">Đọc thêm</a>
                    </div>
                    <div  class="col-lg-6">
                        <div  class="bg-white text-center rounded p-5">
                            <h1 class="mb-4">Đặt lịch khám</h1>
                            <form >
                                <div class="row g-3">
                                    <div class="col-12 col-sm-6">
                                        <select class="form-select bg-light border-0" style="height: 55px;">
                                            <option selected>Chọn Phòng</option>
                                            <option value="1">Department 1</option>
                                            <option value="2">Department 2</option>
                                            <option value="3">Department 3</option>
                                        </select>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <select class="form-select bg-light border-0" style="height: 55px;">
                                            <option selected>Chọn Bác Sĩ</option>
                                            <option value="1">Doctor 1</option>
                                            <option value="2">Doctor 2</option>
                                            <option value="3">Doctor 3</option>
                                        </select>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="text" class="form-control bg-light border-0" placeholder="Tên của bạn" style="height: 55px;">
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <input type="email" class="form-control bg-light border-0" placeholder="Email" style="height: 55px;">
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <div class="date" id="date" data-target-input="nearest">
                                            <input type="text"
                                                   class="form-control bg-light border-0 datetimepicker-input"
                                                   placeholder="Date" data-target="#date" data-toggle="datetimepicker" style="height: 55px;">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-6">
                                        <div class="time" id="time" data-target-input="nearest">
                                            <input type="text"
                                                   class="form-control bg-light border-0 datetimepicker-input"
                                                   placeholder="Thời gian" data-target="#time" data-toggle="datetimepicker" style="height: 55px;">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="btn btn-primary w-100 py-3" type="submit">Make An Appointment</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Appointment End -->


        <!-- Pricing Plan Start -->
        <div class="container-fluid py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Gói Y Tế</h5>
                    <h1 class="display-4">Các Chương Trình Y Tế Đáng Chú Ý</h1>
                </div>
                <div class="owl-carousel price-carousel position-relative" style="padding: 0 45px 45px 45px;">
                    <div class="bg-light rounded text-center">
                        <div class="position-relative">
                            <img class="img-fluid rounded-top" src="img/price-1.jpg" alt="">
                            <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center" style="background: rgba(29, 42, 77, .8);">
                                <h3 class="text-white">Chăm Sóc Thai Kỳ</h3>
                                <h1 class="display-4 text-white mb-0">
                                    <small class="align-top fw-normal" style="font-size: 22px; line-height: 45px;">$</small>49<small class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/ Year</small>
                                </h1>
                            </div>
                        </div>
                        <div class="text-center py-5">
                            <p>Điều trị y tế khẩn cấp</p>
                            <p>Bác sĩ giàu kinh nghiệm</p>
                            <p>Tỷ lệ thành công cao nhất</p>
                            <p>Dịch vụ điện thoại</p>
                            <a href="" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                        </div>
                    </div>
                    <div class="bg-light rounded text-center">
                        <div class="position-relative">
                            <img class="img-fluid rounded-top" src="img/price-2.jpg" alt="">
                            <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center" style="background: rgba(29, 42, 77, .8);">
                                <h3 class="text-white">Khám sức khỏe đình kì</h3>
                                <h1 class="display-4 text-white mb-0">
                                    <small class="align-top fw-normal" style="font-size: 22px; line-height: 45px;">$</small>99<small class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/ Year</small>
                                </h1>
                            </div>
                        </div>
                        <div class="text-center py-5">
                            <p>Điều trị y tế khẩn cấp</p>
                            <p>Bác sĩ giàu kinh nghiệm</p>
                            <p>Tỷ lệ thành công cao nhất</p>
                            <p>Dịch vụ điện thoại</p>
                            <a href="" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                        </div>
                    </div>
                    <div class="bg-light rounded text-center">
                        <div class="position-relative">
                            <img class="img-fluid rounded-top" src="img/price-3.jpg" alt="">
                            <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center" style="background: rgba(29, 42, 77, .8);">
                                <h3 class="text-white">Nha Khoa</h3>
                                <h1 class="display-4 text-white mb-0">
                                    <small class="align-top fw-normal" style="font-size: 22px; line-height: 45px;">$</small>149<small class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/ Year</small>
                                </h1>
                            </div>
                        </div>
                        <div class="text-center py-5">
                            <p>Điều trị y tế khẩn cấp</p>
                            <p>Bác sĩ giàu kinh nghiệm</p>
                            <p>Tỷ lệ thành công cao nhất</p>
                            <p>Dịch vụ điện thoại</p>
                            <a href="" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                        </div>
                    </div>
                    <div class="bg-light rounded text-center">
                        <div class="position-relative">
                            <img class="img-fluid rounded-top" src="img/price-4.jpg" alt="">
                            <div class="position-absolute w-100 h-100 top-50 start-50 translate-middle rounded-top d-flex flex-column align-items-center justify-content-center" style="background: rgba(29, 42, 77, .8);">
                                <h3 class="text-white">Phẫu Thuật</h3>
                                <h1 class="display-4 text-white mb-0">
                                    <small class="align-top fw-normal" style="font-size: 22px; line-height: 45px;">$</small>199<small class="align-bottom fw-normal" style="font-size: 16px; line-height: 40px;">/ Year</small>
                                </h1>
                            </div>
                        </div>
                        <div class="text-center py-5">
                            <p>Điều trị y tế khẩn cấp</p>
                            <p>Bác sĩ giàu kinh nghiệm</p>
                            <p>Tỷ lệ thành công cao nhất</p>
                            <p>Dịch vụ điện thoại</p>
                            <a href="" class="btn btn-primary rounded-pill py-3 px-5 my-2">Apply Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Pricing Plan End -->


        <!-- Team Start -->
        <div class="container-fluid py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Our Doctors</h5>
                    <h1 class="display-4">Qualified Healthcare Professionals</h1>
                </div>
                <div class="owl-carousel team-carousel position-relative">
                    <div class="team-item">
                        <div class="row g-0 bg-light rounded overflow-hidden">
                            <div class="col-12 col-sm-5 h-100">
                                <img class="img-fluid h-100" src="img/team-1.jpg" style="object-fit: cover;">
                            </div>
                            <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                                <div class="mt-auto p-4">
                                    <h3>Doctor Name</h3>
                                    <h6 class="fw-normal fst-italic text-primary mb-4">Cardiology Specialist</h6>
                                    <p class="m-0">Dolor lorem eos dolor duo eirmod sea. Dolor sit magna rebum clita rebum dolor</p>
                                </div>
                                <div class="d-flex mt-auto border-top p-4">
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#"><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="team-item">
                        <div class="row g-0 bg-light rounded overflow-hidden">
                            <div class="col-12 col-sm-5 h-100">
                                <img class="img-fluid h-100" src="img/team-2.jpg" style="object-fit: cover;">
                            </div>
                            <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                                <div class="mt-auto p-4">
                                    <h3>Doctor Name</h3>
                                    <h6 class="fw-normal fst-italic text-primary mb-4">Cardiology Specialist</h6>
                                    <p class="m-0">Dolor lorem eos dolor duo eirmod sea. Dolor sit magna rebum clita rebum dolor</p>
                                </div>
                                <div class="d-flex mt-auto border-top p-4">
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#"><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="team-item">
                        <div class="row g-0 bg-light rounded overflow-hidden">
                            <div class="col-12 col-sm-5 h-100">
                                <img class="img-fluid h-100" src="img/team-3.jpg" style="object-fit: cover;">
                            </div>
                            <div class="col-12 col-sm-7 h-100 d-flex flex-column">
                                <div class="mt-auto p-4">
                                    <h3>Doctor Name</h3>
                                    <h6 class="fw-normal fst-italic text-primary mb-4">Cardiology Specialist</h6>
                                    <p class="m-0">Dolor lorem eos dolor duo eirmod sea. Dolor sit magna rebum clita rebum dolor</p>
                                </div>
                                <div class="d-flex mt-auto border-top p-4">
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#"><i class="fab fa-twitter"></i></a>
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle me-3" href="#"><i class="fab fa-facebook-f"></i></a>
                                    <a class="btn btn-lg btn-primary btn-lg-square rounded-circle" href="#"><i class="fab fa-linkedin-in"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->


        <!-- Search Start -->
        <div class="container-fluid bg-primary my-5 py-5">
            <div class="container py-5">
                <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                    <h5 class="d-inline-block text-white text-uppercase border-bottom border-5">Find A Doctor</h5>
                    <h1 class="display-4 mb-4">Tìm chuyên gia chăm sóc sức khỏe</h1>
                    <h5 class="text-white fw-normal">Chuyên gia chăm sóc sức khỏe có thể chẩn đoán các triệu chứng và căn bệnh của bạn, sau đó đề xuất các phương pháp điều trị thích hợp. Điều này có thể bao gồm việc kê đơn thuốc, chỉ định các xét nghiệm hay thủ thuật cần thiết</h5>
                </div>
                <div class="mx-auto" style="width: 100%; max-width: 600px;">
                    <div class="input-group">
                        <select class="form-select border-primary w-25" style="height: 60px;">
                            <option selected>Phòng</option>
                            <option value="1">Phòng 1</option>
                            <option value="2">Phòng 2</option>
                            <option value="3">Phòng 3</option>
                        </select>
                        <input type="text" class="form-control border-primary w-50" placeholder="Từ khóa"
                               style="height: 60px;">
                        <button class="btn btn-dark border-0 w-25">Tìm Kiếm</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- Search End -->



        <!-- Blog Start -->
        <div class="container-fluid py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5" style="max-width: 500px;">
                    <h5 class="d-inline-block text-primary text-uppercase border-bottom border-5">Blog Post</h5>
                    <h1 class="display-4">Our Latest Medical Blog Posts</h1>
                </div>
                <div class="row g-5">
                    <div class="col-xl-4 col-lg-6">
                        <div class="bg-light rounded overflow-hidden">
                            <img class="img-fluid w-100" src="img/blog-1.jpg" alt="">
                            <div class="p-4">
                                <a class="h3 d-block mb-3" href="">Tham khám và tư vấn miễn phí cho bà bầu</a>
                                <p class="m-0">...........................</p>
                            </div>
                            <div class="d-flex justify-content-between border-top p-4">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt="">
                                    <small>John Doe</small>
                                </div>
                                <div class="d-flex align-items-center">
                                    <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small>
                                    <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6">
                        <div class="bg-light rounded overflow-hidden">
                            <img class="img-fluid w-100" src="img/blog-2.jpg" alt="">
                            <div class="p-4">
                                <a class="h3 d-block mb-3" href="">Dịch vụ thăm khám xuất khỏe định kì luôn cho kết quả chính xác nhất</a>
                                <p class="m-0">..............................</p>
                            </div>
                            <div class="d-flex justify-content-between border-top p-4">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt="">
                                    <small>John Doe</small>
                                </div>
                                <div class="d-flex align-items-center">
                                    <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small>
                                    <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-6">
                        <div class="bg-light rounded overflow-hidden">
                            <img class="img-fluid w-100" src="img/blog-3.jpg" alt="">
                            <div class="p-4">
                                <a class="h3 d-block mb-3" href="">Đội ngũ bác sĩ chuyên nghiệp, tận tâm....</a>
                                <p class="m-0">......</p>
                            </div>
                            <div class="d-flex justify-content-between border-top p-4">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle me-2" src="img/user.jpg" width="25" height="25" alt="">
                                    <small>John Doe</small>
                                </div>
                                <div class="d-flex align-items-center">
                                    <small class="ms-3"><i class="far fa-eye text-primary me-1"></i>12345</small>
                                    <small class="ms-3"><i class="far fa-comment text-primary me-1"></i>123</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Blog End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


    </body>

</html>
<%@ include file="/include/footer.jsp" %>