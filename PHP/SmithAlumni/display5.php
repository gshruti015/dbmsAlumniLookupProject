
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
			<title>Smith Alumni</title>


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
					      <div id="logo" class="text-white";>
					        <a href="search.html">

	                      <i> 
	                      		<h3 class="text-white"; style='font-style: italic;'> Smith Alumni Search Engine</p> </font> </b> </i> </h1>
					      </div>
					      <nav id="nav-menu-container">
					        <ul class="nav-menu">				         
					          <li class="menu-active"><a href="index.html">Search</a></li>				         
					          <li><a href="category.html">Advanced Search</a></li>
					          <li><a href="about-us.html">About Us</a></li>
					            </ul>
					          </li>
					          			          				          
					        </ul>
					      </nav>		    		
				    	</div>
				    </div>
				  </header>

				   <section class="banner-area relative" id="home">	
					<div class="overlay overlay-bg"></div>
					<div class="container">
						<div class="row search-page-top d-flex align-items-center justify-content-center">
							<div class="banner-content col-lg-9">
								<h4 class="text-white"; style='font-style: italic;'>
									Search Results				
								</h1>
								<p class="text-white link-nav">
						       <a href="search.html"> Alumni details page</a>
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



try {
    $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        $stmt = $conn->prepare('SELECT AVG(salary) AS "AVERAGE SALARY" FROM WorkFullTime'); 
       $stmt->execute();
 

    // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC); 
    
        if($stmt->rowCount()>0)
    {

    //echo "Result";
      
    echo "<br><b><font color = white> <center> <table padding-top: 12px; padding-bottom: 12px; text-align: left;background-color: white; color: orange;'></center></font></b>";

    echo "<tr style='border-collapse:collapse;border: 1pt solid black;padding-top: 12px;padding-bottom: 12px;text-align: center;background-color: #b6b6ff; color: white;'><th>The Average salary of Alumni</th></tr>";
    
    foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v)
    { 
        echo  $v ;
        
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