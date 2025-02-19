<?php

include('../config/function.php');

if(isset($_POST['saveCar']))
{
    $name = validate($_POST['name']);
    $car_cid = rand(11111111,99999999);
    $car_reg_no = validate($_POST['car_reg_no']);

    $model = validate($_POST['model']);
    $brand_id = validate($_POST['brand_id']);
    $body_type_id = validate($_POST['body_type_id']);

    $transmission = validate($_POST['transmission']);
    $fuel = validate($_POST['fuel']);
    $seating_capacity = validate($_POST['seating_capacity']);
    $fastag = validate($_POST['fastag']);
    $kms_driven = validate($_POST['kms_driven']);
    $price_per_hour = validate($_POST['price_per_hour']);

    $sun_roof = validate($_POST['sun_roof']);
    $cruise_control = validate($_POST['cruise_control']);
    $camera360 = validate($_POST['360_camera']);
    $home_delivery = validate($_POST['home_delivery']);
    $airbags = validate($_POST['airbags']);

    $description = validate($_POST['description']);
    $owner_id = $_SESSION['loggedInUser']['user_id'];

    if($_FILES['image']['size'] > 0)
    {
        $image = $_FILES['image'];
        $fileResult = uploadImage('cars',$image);
        $finalImage = 'assets/uploads/cars/'.$fileResult;
    }
    else{
        $finalImage = NULL;
    }

    $status = isset($_POST['status']) == true ? 1:0;

    $query = "INSERT INTO cars (brand_id,body_type_id,name,car_cid,car_reg_no,model,transmission,fuel,seating_capacity,fastag,kms_driven,sun_roof,cruise_control,360_camera,price_per_hour,home_delivery,airbags,description,status,image, owner_id) 
            VALUES ('$brand_id','$body_type_id','$name','$car_cid','$car_reg_no','$model','$transmission','$fuel','$seating_capacity','$fastag','$kms_driven','$sun_roof','$cruise_control',
                    '$camera360','$price_per_hour','$home_delivery','$airbags','$description','$status','$finalImage', '$owner_id')";

    $result = mysqli_query($conn, $query);

    if($result){
        redirect('cars.php','Car Saved Successfully');
    }else{
        redirect('cars.php','Something Went Wrong');
    }
}

if(isset($_POST['updateCar']))
{
    $carId = validate($_POST['carId']);

    $name = validate($_POST['name']);
    $car_reg_no = validate($_POST['car_reg_no']);

    $model = validate($_POST['model']);
    $brand_id = validate($_POST['brand_id']);
    $body_type_id = validate($_POST['body_type_id']);

    $transmission = validate($_POST['transmission']);
    $fuel = validate($_POST['fuel']);
    $seating_capacity = validate($_POST['seating_capacity']);
    
    $fastag = validate($_POST['fastag']);
    $kms_driven = validate($_POST['kms_driven']);
    $price_per_hour = validate($_POST['price_per_hour']);

    $sun_roof = validate($_POST['sun_roof']);
    $cruise_control = validate($_POST['cruise_control']);
    $camera360 = validate($_POST['360_camera']);
    $home_delivery = validate($_POST['home_delivery']);
    $airbags = validate($_POST['airbags']);

    $description = validate($_POST['description']);

    $carData = getById('cars',$carId);

    if($_FILES['image']['size'] > 0)
    {
        $image = $_FILES['image'];
        $fileResult = uploadImage('cars',$image);
        $finalImage = 'assets/uploads/cars/'.$fileResult;

        $deleteImage = "../".$carData['data']['image'];
        if(file_exists($deleteImage)){
            unlink($deleteImage);
        }
    }
    else{
        $finalImage = $carData['data']['image'];
    }

    $status = isset($_POST['status']) == true ? 1:0;

    $query = "UPDATE cars SET
                brand_id='$brand_id',
                body_type_id='$body_type_id',
                name='$name',
                car_reg_no='$car_reg_no',
                model='$model',
                transmission='$transmission',
                fuel='$fuel',
                seating_capacity='$seating_capacity',
                fastag='$fastag',
                kms_driven='$kms_driven',
                sun_roof='$sun_roof',
                cruise_control='$cruise_control',
                360_camera='$camera360',
                price_per_hour='$price_per_hour',
                home_delivery='$home_delivery',
                airbags='$airbags',
                description='$description',
                status='$status',
                image='$finalImage'
                WHERE id='$carId' ";

    $result = mysqli_query($conn, $query);

    if($result){
        redirect('cars.php','Car Updated Successfully');
    }else{
        redirect('cars.php','Something Went Wrong');
    }
}

if(isset($_POST['saveImageUpload']))
{
    $carId = validate($_POST['car_id']);
    $status = isset($_POST['status']) == true ? 1:0;

    $error=array();
    $extension=array("jpeg","jpg","png","gif");

    foreach($_FILES["files"]["tmp_name"] as $key=>$tmp_name) {

        $file_name=$_FILES["files"]["name"][$key];
        $file_tmp=$_FILES["files"]["tmp_name"][$key];
        $ext=pathinfo($file_name,PATHINFO_EXTENSION);

        $path = "../assets/uploads/cars/";
        if(in_array($ext,$extension)) {
            
            $filename=basename($file_name,$ext);
            $newFileName=$filename.time().".".$ext;

            $finalFileName = 'assets/uploads/cars/'.$newFileName;
            move_uploaded_file($file_tmp=$_FILES["files"]["tmp_name"][$key],$path.$newFileName);

            $query = "INSERT INTO car_images (car_id,image,status) VALUES ('$carId','$finalFileName','$status')";
            $result = mysqli_query($conn, $query);
        }
        else {
            array_push($error,"$file_name, ");
        }
    }

    if($result){
        redirect('car-images-create.php?id='.$carId,'Car Image Uploaded Successfully');
    }else{
        redirect('car-images-create.php?id='.$carId,'Something Went Wrong');
    }
}

if(isset($_POST['updateImageUpload']))
{
    $car_image_id = validate($_POST['car_image_id']);
    $is_thumbnail = isset($_POST['is_thumbnail']) == true ? 1:0;
    $status = isset($_POST['status']) == true ? 1:0;
    
    $carImageData = getById('car_images',$car_image_id);
    if($_FILES['image']['size'] > 0)
    {
        $image = $_FILES['image'];
        $fileResult = uploadImage('cars',$image);
        $finalImage = 'assets/uploads/cars/'.$fileResult;

        $deleteImage = "../".$carImageData['data']['image'];
        if(file_exists($deleteImage)){
            unlink($deleteImage);
        }
    }
    else{
        $finalImage = $carImageData['data']['image'];
    }

    $query = "UPDATE car_images SET image='$finalImage', is_thumbnail='$is_thumbnail', status='$status' WHERE id='$car_image_id'";
    $result = mysqli_query($conn, $query);
    
    if($result){
        redirect('car-images-edit.php?id='.$car_image_id,'Car Image Updated Successfully');
    }else{
        redirect('car-images-edit.php?id='.$car_image_id,'Something Went Wrong');
    }
}


if(isset($_POST['update_booking_btn'])){

    $bStatus = validate($_POST['booking_status']);
    $bookingId = validate($_POST['booking_id']);

    $cancel_reason = validate($_POST['cancel_reason']);
    $payment_status = validate($_POST['payment_status']);

    if($bStatus == "cancelled"){

        $cancel_status = "1";
        
    }else{

        $cancel_status = "0";
    }

    $query = "UPDATE bookings SET 
            payment_status='$payment_status',
            cancel_status='$cancel_status',
            cancel_reason='$cancel_reason', 
            booking_status='$bStatus' 
            WHERE booking_no='$bookingId' ";
    $result = mysqli_query($conn, $query);

    if($result){
        redirect('booking-view.php?booking_id='.$bookingId,'Booking status updated Successfully');
    }else{
        redirect('booking-view.php?booking_id='.$bookingId,'Something Went Wrong');
    }
}

?>
