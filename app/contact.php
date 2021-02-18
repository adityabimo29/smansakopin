<?php $this->layout('template') ?>
    <!-- Google Map -->
	<div class="map">
	    <?= $deskrip[81] ?>
	</div>
	<!-- Google Map end -->

	<!-- Contact section  -->
	<section class="contact-section">
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-4">
	                <div class="contact-text">
	                    <h3>Get in touch</h3>
	                    <?=$deskrip[80]?>
	                </div>
	            </div>
	            <div class="col-lg-8">
	                <form method="POST" action="contact" class="contact-form">
	                    <div class="row">
	                        <div class="col-lg-6">
                                <?=$csrf->input('contact-csrf');?>
	                            <input name="name" type="text" placeholder="Your Name" required>
	                        </div>
	                        <div class="col-lg-6"> 
	                            <input name="email" type="email" placeholder="Your Email" required>
	                        </div>
	                        <div class="col-lg-4">
	                        </div>
	                        <div class="col-lg-12">
	                            <input type="text" name="subject" placeholder="Subject">
	                            <textarea class="text-msg" name="message" placeholder="Message"></textarea>
	                            <button class="site-btn" type="submit">send message</button>
	                        </div>
	                    </div>
	                </form>
	            </div>
	        </div>
	    </div>
	</section>
	<!-- Contact section end  -->
    <style>
    .table td, .table th {
        padding: .75rem;
        vertical-align: top;
        border-top: 1px solid transparent;
    }
    </style>