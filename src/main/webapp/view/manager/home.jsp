<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vehicle Hub</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .navbar {
            background-color: #000;
        }
        .navbar-brand, .nav-link {
            color: #fff !important;
            font-size: 18px;
        }
        .hero {
            background-image: url('https://cdn.pixabay.com/photo/2017/09/09/12/17/auto-2730375_1280.jpg'); /* Banner xe ô tô */
            background-size: cover;
            background-position: center;
            height: 20vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }
        .hero h1 {
            font-size: 48px;
            font-weight: bold;
            text-transform: uppercase;
            color: red; /* Đổi màu chữ thành đỏ */
        }
        .vehicle-section {
            padding: 60px 0;
        }
        .vehicle {
            display: flex;
            flex-direction: column;
            align-items: center; /* Căn giữa hình ảnh và tiêu đề */
            margin-bottom: 30px;
        }
        .vehicle img {
            width: 100%; /* Chiếm toàn bộ chiều rộng của cột */
            max-height: 250px; /* Chiều cao tối đa */
            object-fit: cover; /* Đảm bảo hình ảnh đều nhau */
            border-radius: 8px;
        }
        .vehicle h4 {
            text-align: center;
            margin-top: 15px;
            font-weight: bold;
        }
        .footer {
            background-color: #000;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        .footer a {
            color: white;
            text-decoration: none;
        }
        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="d-flex justify-content-between align-items-center my-3">
            <h1>Welcome, <%= request.getAttribute("username") != null ? request.getAttribute("username") : "Guest" %>!</h1>
            <div class="d-flex">
                <a class="btn btn-light mr-2" href="<%=request.getContextPath()%>/manager/updateprofile">Profile</a>
                <a class="btn btn-light mr-2" href="<%=request.getContextPath()%>/admin/updateprofile">Profile2</a>
                <a class="btn btn-danger" href="<%=request.getContextPath()%>/logout">Logout</a>
            </div>
        </div>
        <p>Chúc bạn ngày mới vui vẻ.</p>
    </div>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Vehicle Hub</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">Mercedes</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Bugatti</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Rolls-Royce</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Ferrari</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <h1>Khám phá thế giới siêu xe</h1>
    </section>

    <!-- Vehicle Section -->
    <section class="vehicle-section container">
        <div class="row">
            <div class="col-md-4 vehicle">
                <img src="https://heyoto.vn/wp-content/uploads/2021/07/dau-xe-lamborghini-aventador.jpg" alt="Lamborghini Aventador">
                <h4>Lamborghini Aventador</h4>
            </div>
            <div class="col-md-4 vehicle">
                <img src="https://p.turbosquid.com/ts-thumb/mp/x2PqfL/Lb/pagani_huayra_codalunga_2023_0000/jpg/1657569994/600x600/fit_q87/704b595b66678c56dd8e171bccec1799a7160e61/pagani_huayra_codalunga_2023_0000.jpg" alt="Pagani Codalunga">
                <h4>Pagani Codalunga</h4>
            </div>
            <div class="col-md-4 vehicle">
                <img src="https://cdn.tuoitre.vn/zoom/700_390/471584752817336320/2023/2/2/bugatti-chiron-profilee1-16753025152641570645157-0-0-1006-1920-crop-1675303156990715225308.jpg" alt="Bugatti Chiron">
                <h4>Bugatti Chiron</h4>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <p>&copy; 2024 Vehicle Hub | <a href="#">Privacy Policy</a></p>
    </footer>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
