<!DOCTYPE html>
<html lang="en">

<head>
    <!-- META DATA -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- CSS and JavaScript includes -->
    <?php include("assets/cssjs.php"); ?>
</head>

<body>
    <?php include("assets/header.php"); ?>

    <!-- Car Rental Section -->
    <section id="carspack" class="packages">
        <!-- Your existing car rental code goes here -->
        <div class="container">
                            <div class="gallary-header text-center">
                                <h2>Our Cars Section</h2>
                                <p>Introducing you to our Popular Cars.</p>
                            </div>
                            <div class="packages-content">
                                <div class="row">
                                    <?php
                                    include ("assets/connection.php");
                                    $sql = "SELECT * FROM cars ORDER BY car_id";
                                    $result = mysqli_query($con, $sql);
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $imageURL = 'ADMIN/caradmin/uploads/' . $row["car_image"];
                                        if ($row["car_availability"] == 1) {
                                            ?>
                                            <div class="col-md-4 col-sm-6">
                                                <div class="single-package-item">
                                                    <img id="taj" src="<?php echo $imageURL; ?>" alt="package-place" />
                                                    <div class="single-package-item-txt">
                                                        <h3>
                                                            <?php echo $row["car_name"]; ?>
                                                            <span class="pull-right">
                                                                <?php echo '₹' . $row["car_price"] . '/Day'; ?>
                                                            </span>
                                                        </h3>
                                                        <div class="packages-para">
                                                            <p>
                                                                <i class="fa fa-angle-right"></i>
                                                                <?php echo $row["car_seats"]; ?>
                                                                <!-- Additional car details can be added here -->
                                                            </p>

                                                            </p>
                                                            <span>
                                                                <i class="fa fa-angle-right"></i>
                                                                <?php echo $row["fuel_type"]; ?>
                                                            </span><br>
                                                        </div>
                                                        <!--/.packages-para-->
                                                        <div class="packages-review">
                                                            <p>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                                <i class="fa fa-star"></i>
                                                            </p>
                                                        </div>
                                                        <!--/.packages-review-->
                                                        <div class="about-btn">
                                                            <?php
                                                            if (isset($_SESSION['user_id'])) {
                                                                $encryptedId = encryptId($row['car_id']); ?>
                                                                <a href="booking.php?id=<?php echo urlencode($encryptedId); ?>&mych=cars"><button
                                                                        type="submit" class="about-view packages-btn">book now</button></a>
                                                                <?php
                                                            } else { ?>
                                                                <button type="submit" class="about-view packages-btn"
                                                                    onclick="userlogin();">book now</button>
                                                                <!--/.about-btn-->
                                                            <?php } ?>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <?php
                                        }
                                    }
                                    ?>
                                </div>
                            </div>
                        </div>
    </section>

    <!-- Train Section -->
    <!-- Train Section -->
<section id="trainspack" class="packages">
    <div class="container">
        <div class="gallary-header text-center">
            <h2>Our Trains Section</h2>
            <p>Explore our Train Services.</p>
        </div>
        <div class="packages-content">
            <div class="row">
                <?php
                // Replace with your actual connection and query details
                $sql_trains = "SELECT * FROM trains ORDER BY train_id";
                $result_trains = mysqli_query($con, $sql_trains);
                while ($row_train = mysqli_fetch_assoc($result_trains)) {
                    // Replace with your actual image path
                    $imageTrainURL = 'ADMIN/trainadmin/uploads/' . $row_train["train_image"];
                    ?>
                    <div class="col-md-4 col-sm-6">
                        <div class="single-package-item">
                            <img src="<?php echo $imageTrainURL; ?>" alt="train-image" />
                            <div class="single-package-item-txt">
                                <h3>
                                    <?php echo $row_train["train_name"]; ?>
                                    <span class="pull-right">
                                        <?php echo '₹' . $row_train["train_price"] . '/Ticket'; ?>
                                    </span>
                                </h3>
                                <div class="packages-para">
                                    <p>
                                        <i class="fa fa-angle-right"></i>
                                        <?php echo $row_train["train_seats"]; ?> Seats
                                    </p>
                                    <p>
                                        <span>
                                            <i class="fa fa-angle-right"></i>
                                            <?php echo $row_train["train_class"]; ?> Class
                                        </span>
                                    </p>
                                </div>
                                <!--/.packages-para-->
                                <div class="packages-review">
                                    <p>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                    </p>
                                </div>
                                <!--/.packages-review-->
                                <div class="about-btn">
                                    <?php
                                    if (isset($_SESSION['user_id'])) {
                                        // Encrypt the train ID before sending it through the URL
                                        $encryptedTrainId = encryptId($row_train['train_id']); ?>
                                        <a href="train_booking.php?id=<?php echo urlencode($encryptedTrainId); ?>&mych=trains">
                                            <button type="submit" class="about-view packages-btn">book now</button>
                                        </a>
                                        <?php
                                    } else { ?>
                                        <button type="submit" class="about-view packages-btn" onclick="userlogin();">book now</button>
                                        <!--/.about-btn-->
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php
                }
                ?>
            </div>
        </div>
    </div>
</section>


    <!-- Flight Section -->
    <section id="flightspack" class="packages" style="display: none;">
        <!-- Your flight section content goes here -->
    </section>

    <?php include("assets/footer.php"); ?>

    <script>
        function showSection(sectionId) {
            var sections = document.querySelectorAll('.packages');
            sections.forEach(function (section) {
                section.style.display = 'none';
            });
            document.getElementById(sectionId).style.display = 'block';
        }
    </script>
</body>

</html>
