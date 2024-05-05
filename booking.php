<?php
include("assets/connection.php");
session_start();
if ($_SERVER['HTTP_REFERER'] == null) {
    header("Location: http://localhost/tt");
}
// Check if 'id' is set in the request
if (!isset($_REQUEST['id'])) {
    header('location: http://localhost/tt');
}
// Decrypt the ID from the request
if ($_REQUEST['id'] && $_REQUEST['mych']) {
    $decryptedId = decryptId($_REQUEST['id']);
    $mych = $_REQUEST['mych'];
}
// Check user session and decrypted ID
if (!isset($_SESSION['user_id']) || $decryptedId === null) {
    header('location: http://localhost/tt');
}
if (!isset($_SESSION['user_id']) ||  $_REQUEST['mych'] === null) {
    header('location: http://localhost/tt');
}
if ($decryptedId == null) {
    header('location: http://localhost/tt');
}
function encryptId($id)
{
    $key = "your_secret_key";  // Replace with a strong secret key
    $cipher = "aes-256-cbc";   // AES encryption with a 256-bit key in CBC mode

    $iv = openssl_random_pseudo_bytes(openssl_cipher_iv_length($cipher));
    $encryptedId = openssl_encrypt($id, $cipher, $key, 0, $iv);

    // Encode the encrypted data and IV for URL safety
    $encryptedId = base64_encode($iv . $encryptedId);

    return $encryptedId;
}
function decryptId($encryptedId)
{
    $key = "your_secret_key";  // Replace with the same secret key used for encryption
    $cipher = "aes-256-cbc";   // AES encryption with a 256-bit key in CBC mode

    // Decode the encrypted data and IV
    $data = base64_decode($encryptedId);
    $iv = substr($data, 0, openssl_cipher_iv_length($cipher));
    $encryptedId = substr($data, openssl_cipher_iv_length($cipher));

    // Decrypt the id
    $decryptedId = openssl_decrypt($encryptedId, $cipher, $key, 0, $iv);

    return $decryptedId;
} ?>

<link rel="stylesheet" href="styles.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        margin: 0;
        padding: 0;
    }

    form {
        max-width: 400px;
        margin: 10px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    input[type="text"],
    input[type="file"],
    input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin: 8px 0;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #4caf50;
        color: white;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    h2 {
        color: #333;
    }

    img {
        max-width: 100%;
        height: auto;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
    }

    label.image-label {
        display: block;
        text-align: left;
        margin-top: 10px;
        font-weight: bold;
        color: #333;
    }

    label.image-label small {
        color: #777;
        display: block;
        margin-top: 5px;
    }
</style>

<?php
// Retrieve parameters from the URL
$id = $decryptedId;

// Fetch package details from the database
if ($mych == 'cars') {
    $sql = "SELECT * FROM $mych WHERE car_id = $id";
    $result = mysqli_query($con, $sql);
    if ($result) {
        $rec = mysqli_fetch_array($result, MYSQLI_BOTH);

        // Check if a record was found
        if ($rec) {
            $name = $rec['car_name'];
            $price = $rec['car_price'];
            $duration = $rec['car_seats'];
            $accommodation = $rec['fuel_type'];
            $transportation = $rec['car_availability'];
            if ($transportation == 1)
                $transportation = 'Yes';
            else
                $transportation = 'No';
        } else {
            // Redirect to http://localhost/tt if no record found
            header('location: http://localhost/tt');
            exit();
        }
    } else {
        // Handle the case where the query fails
        // Redirect to http://localhost/tt or display an error message
        header('location: http://localhost/tt');
        exit();
    } ?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Booking Details</title>
        <!-- Add a link to your CSS file for styling -->
    </head>

    <body>
        <h1>Booking Car</h1>

        <!-- Display package details in the booking form -->
        <form action="process_booking.php" method="POST">

            <!-- Now you can use these variables to display dynamic content on the booking page -->
            <p></p>
            <p> </p>

            <!-- Add any additional content or booking form as needed -->
            <input type="HIDDEN" name="carid" value="<?php echo $id; ?>" readonly>

            <label for="name">Name:</label>
            <input type="text" name="package_name" value="<?php echo $name; ?>" readonly>

            <label for="price">Price:</label>
            <input type="text" name="price" value="<?php echo $price; ?>" readonly>

            <label for="duration">Seats:</label>
            <input type="text" name="duration" value="<?php echo $duration; ?>" readonly>

            <label for="accommodation:">Fuel type:</label>
            <input type="text" name="accommodation:" value="<?php echo $accommodation; ?>" required>

            <label for="transportation:">Car available:</label>
            <input type="text" name="transportation:" value="<?php echo $transportation; ?>" required>

            <input type="submit" name="submit_booking" value="Submit Booking">
        </form>

        <!-- Add a link or button to go back to the previous page -->
        <a href="javascript:history.go(-1)">Go Back</a>

    </body>

    </html>
<?php
} else if ($mych == 'hotels') {
    $sql = "SELECT * FROM $mych WHERE hotel_id = $id";
    $result = mysqli_query($con, $sql);
    if ($result) {
        $rec = mysqli_fetch_array($result, MYSQLI_BOTH);

        // Check if a record was found
        if ($rec) {
            $name = $rec['hotel_name'];
            $price = $rec['hotel_price'];
            $duration = $rec['hotel_location'];
            $accommodation = $rec['hotel_address'];
            $transportation = $rec['hotel_email'];
            $food_facilities = $rec['hotel_availability'];
            if ($food_facilities == 1)
                $food_facilities = 'Yes';
            else
                $food_facilities = 'No';
        } else {
            // Redirect to http://localhost/tt if no record found
            header('location: http://localhost/tt');
            exit();
        }
    } else {
        // Handle the case where the query fails
        // Redirect to http://localhost/tt or display an error message
        header('location: http://localhost/tt');
        exit();
    } ?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Booking Details</title>
        <!-- Add a link to your CSS file for styling -->
    </head>

    <body>
        <h1>Booking Hotel</h1>

        <!-- Display package details in the booking form -->
        <form action="process_booking.php" method="POST">

            <!-- Now you can use these variables to display dynamic content on the booking page -->
            <p></p>
            <p> </p>

            <!-- Add any additional content or booking form as needed -->
            <input type="HIDDEN" name="carid" value="<?php echo $id; ?>" readonly>

            <label for="name">Name:</label>
            <input type="text" name="package_name" value="<?php echo $name; ?>" readonly>

            <label for="price">Price:</label>
            <input type="text" name="price" value="<?php echo $price; ?>" readonly>

            <label for="duration">Location:</label>
            <input type="text" name="duration" value="<?php echo $duration; ?>" readonly>

            <label for="accommodation:">Hotel Address:</label>
            <input type="text" name="accommodation:" value="<?php echo $accommodation; ?>" required>

            <label for="transportation:">Hotel Email:</label>
            <input type="text" name="transportation:" value="<?php echo $transportation; ?>" required>

            <label for="transportation:">Hotel Available:</label>
            <input type="text" name="transportation:" value="<?php echo $food_facilities; ?>" required>

            <input type="submit" name="submit_booking" value="Submit Booking">
        </form>

        <!-- Add a link or button to go back to the previous page -->
        <a href="javascript:history.go(-1)">Go Back</a>

    </body>

    </html>


<?php
} else {
    $sql = "SELECT * FROM $mych WHERE id = $id";
    $result = mysqli_query($con, $sql);
    // Check if the query was successful
    if ($result) {
        $rec = mysqli_fetch_array($result, MYSQLI_BOTH);

        // Check if a record was found
        if ($rec) {
            $name = $rec['name'];
            $price = $rec['price'];
            $duration = $rec['duration'];
            $accommodation = $rec['accommodation'];
            $transportation = $rec['transportation'];
            $food_facilities = $rec['food_facilities'];
        } else {
            // Redirect to http://localhost/tt if no record found
            header('location: http://localhost/tt');
            exit();
        }
    } else {
        // Handle the case where the query fails
        // Redirect to http://localhost/tt or display an error message
        header('location: http://localhost/tt');
        exit();
    }
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Booking Details</title>
        <!-- Add a link to your CSS file for styling -->
    </head>

    <body>
        <h1>Booking Details for <?php echo $name; ?></h1>

        <!-- Display package details in the booking form -->
        <form action="process_booking.php" method="POST">

            <!-- Now you can use these variables to display dynamic content on the booking page -->
            <p></p>
            <p> </p>

            <!-- Add any additional content or booking form as needed -->
            <input type="HIDDEN" name="carid" value="<?php echo $id; ?>" readonly>

            <label for="name">Name:</label>
            <input type="text" name="package_name" value="<?php echo $name; ?>" readonly>

            <label for="price">Price:</label>
            <input type="text" name="price" value="<?php echo $price; ?>" readonly>

            <label for="duration">Duration:</label>
            <input type="text" name="duration" value="<?php echo $duration; ?>" readonly>

            <label for="accommodation:">Accommodation:</label>
            <input type="text" name="accommodation:" value="<?php echo $accommodation; ?>" required>

            <label for="transportation:">Transportation:</label>
            <input type="text" name="transportation:" value="<?php echo $transportation; ?>" required>

            <label for="food_facilities:">Food Facilities:</label>
            <input type="text" name="food_facilities:" value="<?php echo $food_facilities; ?>" required>

            <input type="submit" name="submit_booking" value="Submit Booking">
        </form>

        <!-- Add a link or button to go back to the previous page -->
        <a href="javascript:history.go(-1)">Go Back</a>

    </body>

    </html>
<?php
}
?>