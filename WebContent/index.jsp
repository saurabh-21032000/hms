<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
<script src="js/script.js"></script>
<style>
	
	body{
	 background-color : #040303 !important;
	}
</style>
</head>
<body>
<%@ include file="Nav.jsp" %>
 <%@ include file="slide.jsp" %>
 
  <div class="container">
        <div class="row mt-5">
            <div class="col">
                <div class="card mb-3">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="img/med1.jpg" class="img-fluid rounded-start" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title">Complete Medical Solutions In One Place</h5>
                                <p class="card-text">Krishna Hospital holds a rich heritage of 56 years in providing top-notch healthcare services. Our journey began in 1967 as a 5-bed clinic in Ernakulam and has now evolved into a leading multi-specialty hospital with 49 beds. We pride ourselves on continuously improving our facilities and services to ensure the highest quality care for our patients.</p>
                                <p class="card-text">Our hospital is equipped with state-of-the-art operation theaters, a modern labor room, advanced ICU facilities, and a dedicated team of expert doctors and paramedical staff. We adhere to international quality standards and offer cashless treatment options through tie-ups with major insurance companies and TPAs.</p>
                                <p class="card-text">Krishna Hospital has been recognized by the Kerala Government for the treatment of their employees in the departments of General Surgery, Orthopedics, and Gastroenterology. We are committed to providing compassionate care and ensuring the well-being of our patients.</p>
                                <a href="#" class="btn btn-primary">View More Details</a>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

 <h1 style="text-align:center">Our Programs</h1>

    <div class="container mt-5">
        <div class="row">
            <div class="col">
                <div class="card mb-3">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="img/program.png" class="img-fluid rounded-start" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title">BEST PRACTICES</h5>
                                <p class="card-text">During the last ten years, renovated Operation Theatre and labor room along with well-equipped ICU was constructed.</p>
                                <p class="card-text">Current bed strength is 49 and our occupancy is 50-80%.</p>
                                <p class="card-text">Hospital is NABH Entry Level Accredited.</p>
                                <p class="card-text">Par with the required standards of the Insurance Sector.</p>
                                <p class="card-text">We have conducted 2 medical camps in Lakshadweep. Five specialist doctors along with paramedical staff stayed there for 3 days.</p>
                                <p class="card-text">We have tie-ups with almost all insurance companies for cashless treatment facilities.</p>
                                <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


<div class="container">
    <div class="row">
        <div class="col-12">
            <h2 style="text-align:center">Medical Specialties</h2>
            <div class="d-flex flex-wrap justify-content-center align-items-center">
                <div class="p-3 m-2 bg-primary text-light rounded">&#127891; Anaesthesiology</div>
                <div class="p-3 m-2 bg-success text-light rounded">&#127891; Rheumatology</div>
                <div class="p-3 m-2 bg-danger text-light rounded">&#127891; Cardiology</div>
                <div class="p-3 m-2 bg-warning text-dark rounded">&#127891; Gastroenterology</div>
                <div class="p-3 m-2 bg-info text-light rounded">&#127891; Paediatrics</div>
                <div class="p-3 m-2 bg-secondary text-light rounded">&#127891; General Medicine</div>
                <div class="p-3 m-2 bg-dark text-light rounded">&#127891; Psychological Medicine</div>
                <div class="p-3 m-2 bg-primary text-light rounded">&#127891; Oncology</div>
                <div class="p-3 m-2 bg-success text-light rounded">&#127891; Orthopedic</div>
                <div class="p-3 m-2 bg-danger text-light rounded">&#127891; General Surgery</div>
                <div class="p-3 m-2 bg-warning text-dark rounded">&#127891; Gynecology</div>
                <div class="p-3 m-2 bg-info text-light rounded">&#127891; Dental</div>
                <div class="p-3 m-2 bg-secondary text-light rounded">&#127891; Physiotherapy</div>
                <div class="p-3 m-2 bg-dark text-light rounded">&#127891; RMO</div>
                <div class="p-3 m-2 bg-primary text-light rounded">&#127891; Nutritionist</div>
                <div class="p-3 m-2 bg-success text-light rounded">&#127891; Allergy, Asthma</div>
            </div>
        </div>
    </div>
</div>


<h1 style="text-align:center">Our Medical Specialists</h1>
    <div class="container mt-4"> <!-- Added "mt-3" class for margin top -->
        <%@ include file="card.jsp" %> <!-- Including card.jsp -->
    </div>
    
        <h1 style="text-align:center">What Our say Patient</h1>
    <div class="review">
    
    <div class="row row-cols-1 row-cols-md-2 g-4">
  <div class="col">
    <div class="card">
      <img src="img/review.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
      <img src="img/review1.jpeg" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>
<div class="container">
  <div class="row">
    <div class="col">
      <h1 class="text-center"> <!-- Added text-center class to center align the text -->
        <button type="button" class="btn btn-primary">Read more</button>
      </h1>
    </div>
  </div>
</div>
<footer style="background-color: #f8f9fa; padding: 20px; bottom: 0; width: 100%;"> <!-- Added footer element with styling -->
        <div class="container">
            <div class="row justify-content-center"> <!-- Center aligning content -->
                <div class="col-auto">
                    <a href="#" style="text-decoration: none; color: #000; margin: 0 10px;"> <!-- Example social media link -->
                        <i class="fab fa-facebook-square"></i> <!-- Font Awesome Facebook icon -->
                    </a>
                    <a href="#" style="text-decoration: none; color: #000; margin: 0 10px;"> <!-- Example social media link -->
                        <i class="fab fa-twitter-square"></i> <!-- Font Awesome Twitter icon -->
                    </a>
                    <a href="#" style="text-decoration: none; color: #000; margin: 0 10px;"> <!-- Example social media link -->
                        <i class="fab fa-instagram-square"></i> <!-- Font Awesome Instagram icon -->
                    </a>
                    <!-- Add more social media icons and links as needed -->
                </div>
            </div>
        </div>
        <div class="container"> <!-- Location information -->
            <div class="row justify-content-center">
                <div class="col-auto">
                    <h5 style="margin-bottom: 0;">Location:</h5>
                    <address> <!-- Use the <address> element for location information -->
                        Krishna Hospital<br>
                        Chittoor/MG Road,<br>
                        Ernakulam, Kochi – 682011<br>
                        P: 0484 409 5888<br>
                        +91 484 409 5888
                    </address>
                </div>
            </div>
        </div>
    </footer>  

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"></script>


</body>
</html>