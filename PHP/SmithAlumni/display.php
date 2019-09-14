
	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="codepixer">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Band Alumni</title>


		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/nice-select.css">					
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">
			<link rel="stylesheet" href="css/main.css">
		</head>

		<body>
		 <header id="header" id="home">
			    <div class="container">
			    	<div class="row align-items-center justify-content-between d-flex">
				      <div id="logo">
				        <a href="index.html"><img src="img/logo.png" alt="" title="" /></a>
				      </div>
				      <nav id="nav-menu-container">
				        <ul class="nav-menu">
				          <li class="menu-active"><a href="index.html">Home</a></li>
				          <li class="menu-active"><a href="Search.html">Search</a></li>				         
				          <li><a href="category.html">Advanced Search</a></li>
				          <li><a href="about-us.html">About Us</a></li>
				          <li><a href="contact.html">Contact</a></li>
				            </ul>
				          </li>
				          			          				          
				        </ul>
				      </nav><!-- #nav-menu-container -->		    		
			    	</div>
			    </div>
			  </header>

			   <section class="banner-area relative" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">
					<div class="row search-page-top d-flex align-items-center justify-content-center">
						<div class="banner-content col-lg-9">
							<h1 class="text-white"; style='font-style: italic;'>
								Search Results				
							</h1>
							<p class="text-white link-nav">
								<a href="index.html">Home </a> <span class="lnr lnr-arrow-right"></span> <a href="search.html"> Alumni details page</a>
							</p>	
						
<?php
class TableRows extends RecursiveIteratorIterator { 
    function __construct($it) { 
        parent::__construct($it, self::LEAVES_ONLY); 
    }

    function current() {
        return "<td style='width:150px;border:1px solid black;'>" . parent::current(). "</td>";
    }

    function beginChildren() { 
        echo "<tr>"; 
    } 

    function endChildren() { 
        echo "</tr>" . "\n";
    } 
} 

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "smith_alumni";
$firstname = $_POST['firstname'];
$company = $_POST['comapnyname'];
$visastatus = $_POST['Visa'];

if($visastatus == 1)
{
	$visastatus = '';
}

//echo "Visa status is  " .$visastatus;


try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
     if (empty($_POST['firstname']) AND empty($_POST['comapnyname']) AND !empty($_POST['Visa']))
    {
       $stmt = $conn->prepare("SELECT * from SMITH_UC where initialVisaStatus = '$visastatus'"); 
    }
    if (empty($_POST['firstname']) AND !empty($_POST['comapnyname']) AND empty($_POST['Visa']))
    {
        $stmt = $conn->prepare("SELECT ALMFNAME, ALMLNAME,PHONE,JOBTITLE,COMNAME from SMITH_UC where COMNAME = '$company'");
    }  
    if (empty($_POST['firstname']) AND !empty($_POST['comapnyname']) AND !empty($_POST['Visa']))
    {
       $stmt = $conn->prepare("SELECT * from SMITH_UC where initialVisaStatus = '$visastatus' AND COMNAME = '$company'"); 
    }
     if (!empty($_POST['firstname']) AND empty($_POST['comapnyname']) AND empty($_POST['Visa']))
    {
       $stmt = $conn->prepare("SELECT * from SMITH_UC where ALMFNAME = '$firstname'"); 
    }
    if (!empty($_POST['firstname']) AND empty($_POST['comapnyname']) AND !empty($_POST['Visa']))
    {
        $stmt = $conn->prepare("SELECT * from SMITH_UC where ALMFNAME = '$firstname' AND initialVisaStatus = '$visastatus'"); 
    }
     if (!empty($_POST['firstname']) AND !empty($_POST['comapnyname']) AND empty($_POST['Visa']))
    {
        $stmt = $conn->prepare("SELECT * from SMITH_UC where ALMFNAME = '$firstname' AND COMNAME = '$company'"); 
    }
    if (!empty($_POST['firstname']) AND !empty($_POST['comapnyname']) AND !empty($_POST['Visa']))
    {
        $stmt = $conn->prepare("SELECT * from SMITH_UC where ALMFNAME = '$firstname' AND COMNAME = '$company' AND initialVisaStatus = '$visastatus'"); 
    }
    if (empty($_POST['firstname']) AND empty($_POST['comapnyname']) AND empty($_POST['Visa']))
    {
        echo "Please enter values in the field";
    }
    $stmt->execute();

    // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC); 
    
        if($stmt->rowCount()>0)
    {

    //echo "Result";
      
    echo "<br><center><table style='border-collapse:collapse; padding-top: 12px; padding-bottom: 12px; text-align: left;background-color: white; color: black;'></center>";

    echo "<tr style='border-collapse:collapse;padding-top: 12px;padding-bottom: 12px;text-align: left;background-color: #b6b6ff;
    color: white;'><th>First Name</th><th>Last Name</th><th>Contact Number</th><th>Position</th><th>Company</th></tr>";
    
    foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v)
    { 
        echo $v;
        
    }
    }

   // else 
    //{
      //  echo "No result";

   // }
}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}
$conn = null;
echo "</table>";
?>

					</div>
									<br>
						
							
						</div>											
					</div>
				</div>
			</section>

			<section class="callto-action-area section-gap">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content col-lg-9">
							<div class="title text-center">
								<h1 class="mb-10 text-white">Join us today without any hesitation</h1>
								<a class="primary-btn" href="#">I am an Alumni</a>
								<a class="primary-btn" href="#">I am a Recruiter</a>
							</div>
						</div>
					</div>	
				</div>	
			</section>
			<!-- End calto-action Area -->			
		
			<!-- start footer Area -->		
			<footer class="footer-area section-gap">
				<div class="container">
					<div class="row">
						<div class="col-lg-3  col-md-12">
							<div class="single-footer-widget">
								<h6>Top Products</h6>
								<ul class="footer-nav">
									<li><a href="#">Alumni Database</a></li>
									<li><a href="#">Job Listings</a></li>
									<li><a href="#">Job Search Tools</a></li>
								</ul>
							</div>
						</div>
						<div class="col-lg-6  col-md-12">
							<div class="single-footer-widget newsletter">
								<h6>Newsletter</h6>
								<p>You can trust us. we only send promo offers, not a single spam.</p>
								<div id="mc_embed_signup">
									<form target="_blank" novalidate="true" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="form-inline">

										<div class="form-group row" style="width: 100%">
											<div class="col-lg-8 col-md-12">
												<input name="EMAIL" placeholder="Enter Email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email '" required="" type="email">
												<div style="position: absolute; left: -5000px;">
													<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
												</div>
											</div> 
										
											<div class="col-lg-4 col-md-12">
												<button class="nw-btn primary-btn">Subscribe<span class="lnr lnr-arrow-right"></span></button>
											</div> 
										</div>		
										<div class="info"></div>
									</form>
								</div>		
							</div>
						</div>
											
					
					</div>
					<div class="row footer-bottom d-flex justify-content-between">
						<p class="col-lg-8 col-sm-12 footer-text m-0 text-white">
							
						</p>
						

					
						<div class="col-lg-4 col-sm-12 footer-social">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							
						</div>
					</div>
				</div>
			</footer>
			<!-- End footer Area -->		

			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>	
			<script src="js/owl.carousel.min.js"></script>			
			<script src="js/jquery.sticky.js"></script>
			<script src="js/jquery.nice-select.min.js"></script>			
			<script src="js/parallax.min.js"></script>		
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
		</body>

	</html>