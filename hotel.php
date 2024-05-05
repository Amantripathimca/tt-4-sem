<!DOCTYPE html>
                <html lang="en">

                <head>
                    <!-- META DATA -->
                    <meta charset="utf-8" />
                    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                    <meta name="viewport" content="width=device-width, initial-scale=1" />
                    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
                </head>

                <body>
                    <?php
                    include ("assets/cssjs.php");
                    include ("assets/header.php")
                        ?>
                    <section id="hotelspack" class="packages">
                        <div class="container">
                            <div class="gallary-header text-center">
                                <h2>Our Hotels Section</h2>
                                <p>Introducing you to our Hotel Section.</p>
                            </div>
                            <div class="packages-content">
                                <div class="row">
                                    <?php
                                    include ("assets/connection.php");

                                    $sql = "SELECT * FROM hotels ORDER BY hotel_id";
                                    $result = mysqli_query($con, $sql);
                                    while ($row = mysqli_fetch_assoc($result)) {
                                        $imageURL = 'ADMIN/hoteladmin/uploads/' . $row["hotel_image"];
                                        if ($row["hotel_availability"] == 1) {
                                            ?>
                                            <div class="col-md-4 col-sm-6">
                                                <div class="single-package-item">
                                                    <img id="taj" src="<?php echo $imageURL; ?>" alt="hotel-image" />
                                                    <div class="single-package-item-txt">
                                                        <h3>
                                                            <?php echo $row["hotel_name"]; ?>
                                                            <span class="pull-right">
                                                                <?php echo '₹' . $row["hotel_price"] . '/Day'; ?>
                                                            </span>
                                                        </h3>
                                                        <div class="packages-para">
                                                            <p>
                                                                <i class="fa fa-angle-right"></i>
                                                                <?php echo $row["hotel_location"]; ?>
                                                                <!-- Additional car details can be added here -->
                                                            </p>

                                                            </p>
                                                            <span>
                                                                <i class="fa fa-angle-right"></i>
                                                                <?php echo $row["hotel_email"]; ?>
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
                                                                $encryptedId = encryptId($row['hotel_id']); ?>
                                                                <a href="booking.php?id=<?php echo urlencode($encryptedId); ?>&mych=hotels"><button
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
                    <?php
                    include ("assets/footer.php");
                    ?>
                </body>

                </html>