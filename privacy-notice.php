<?php 
$pageTitle = "Privacy notice";
include('includes/header.php'); 
?>

<div class="banner">
    <div class="container text-center">
        <h4 class="banner-heading">Privacy Notice</h4>
    </div>
</div>

<div class="py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h4>About <?= webSetting('title') ?? 'AvailableCar'; ?></h4>
                <div class="underline"></div>
                <p>
                    Welcome to <?= webSetting('title') ?? 'AvailableCar'; ?>, the gateway to your next journey! Whether you're looking for the perfect ride to elevate your travel experience or seeking a trusted platform to rent out your car, we've got you covered. Discover convenience, flexibility, and peace of mind, all in one place. Let's hit the road together!
                </p>
                
                <!-- Privacy Notice Section -->
                <div class="privacy-notice my-5">
                    <h4>Privacy Notice</h4>
                    <p>
                        At <?= webSetting('title') ?? 'AvailableCar'; ?>, we are committed to protecting the privacy and security of our customers. This Privacy Notice outlines the types of personal information we collect, how we use it, and the steps we take to ensure it is kept secure.
                    </p>
                    <p>
                        We collect personal information when you register with us, book a vehicle, or interact with our services. This information may include your name, contact details, and payment information. We use this information to process your bookings, manage your account, and provide you with customer support.
                    </p>
                    <p>
                        We may also use your information to send you promotional materials or notifications about <?= webSetting('title') ?? 'AvailableCar'; ?> updates, unless you have opted out of receiving such communications.
                    </p>
                    <p>
                        Your personal information is not shared with third parties without your consent, except to provide you with the services you have requested, comply with the law, or protect the rights, property, or safety of <?= webSetting('title') ?? 'AvailableCar'; ?> or our customers.
                    </p>
                    <p>
                        You have the right to access the personal information we hold about you and request correction or deletion as appropriate. For more information on how to do this, please contact us.
                    </p>
                    <p>
                        This Privacy Notice may be updated from time to time, and we will notify you of any significant changes. By using our services, you agree to be bound by the terms of this Privacy Notice.
                    </p>
                    <p>
                        If you have any questions about how we handle your personal information, please contact us.
                    </p>
                </div>
                <!-- End of Privacy Notice Section -->
            </div>
        </div>
    </div>
</div>

<?php include('includes/footer.php'); ?>
