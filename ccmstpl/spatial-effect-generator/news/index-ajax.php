<?
header("Content-Type: application/json; charset=UTF-8");
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");

include $_SERVER["DOCUMENT_ROOT"] . "/" . $CFG["LIBDIR"] . "/_default.php";

$json = array();

if(!strstr($_SERVER["HTTP_REFERER"], $CFG["DOMAIN"])) {
	$json['error']['invalid_referer'] = "Invalid submission, your POST does not appeared to have been submitted from the " . $CFG["DOMAIN"] . " website.";
}

if(!ccms_badIPCheck($_SERVER["REMOTE_ADDR"])) {
	$json['error']['invalid_badIPCheck'] = "There is a problem with your message, it can not be posted using this form from your current IP Address.  Please contact the website administrators directly by either phone or email if you feel this message is in error for more information.";
}

if($CLEAN["cuEmail"] == "") {
	$json['error']['cuEmail'] = "Please include your email address.";
} elseif($CLEAN["cuEmail"] == "MAXLEN") {
	$json['error']['cuEmail'] = "'Email' field exceeded its maximum number of 256 character.";
} elseif($CLEAN["cuEmail"] == "INVAL") {
	$json['error']['cuEmail'] = "'Email' field contains invalid characters.  ( > < & # )  You have used characters in this field which are either not supported by this field or we do not permitted on this system.";
}

if(!bad_word_check($CLEAN["cuEmail"])) {
	$json['error']['cuEmail'] = "There is a problem with your message, it contains words or phrase which can not be posted using this form.  Please contact the website administrators directly by either phone or email if you feel this message is in error for more information.";
}

// Checking reCaptcha
if($_POST["g-recaptcha-response"]) {
	$resp = file_get_contents( "https://www.google.com/recaptcha/api/siteverify?secret={$CFG['GOOGLE_RECAPTCHA_PRIVATEKEY']}&response={$_POST['g-recaptcha-response']}&remoteip={$_SERVER['REMOTE_ADDR']}" );
	$resp = json_decode($resp);
	if($resp->success == false) {
		$json['error']['g-recaptcha'] = 'Incorrect code. Please try again.';
	}
} else {
    $json['error']['g-recaptcha'] = 'Please prove that you are not a robot.';
}

$qry = $CFG["DBH"]->prepare("SELECT *  FROM `newsletter` WHERE `email` LIKE CONVERT(_utf8 :cuEmail USING utf8mb4) COLLATE utf8mb4_general_ci LIMIT 1;");
$qry->execute(array(':cuEmail' => $CLEAN["cuEmail"]));
$row = $qry->fetch(PDO::FETCH_ASSOC);
if($row) {
	$json['error']['cuEmail'] = "This email address is already found in our newslettter database.  Please contact the website administrators directly by either phone or email if you feel this message is in error for more information.";
}

// If no errors
if(!isset($json['error'])) {
	$a = time();

	$qry = $CFG["DBH"]->prepare("INSERT INTO `newsletter` (`id`, `email`, `lng`, `suDate`) VALUES (NULL, :cuEmail, :lng, :suDate);");
	$qry->execute(array(':cuEmail' => $CLEAN["cuEmail"], ':lng' => $CLEAN["ccms_lng"], ':suDate' => $a));

	// Email text
	$mail_message = "<p style='font-size: 1.6em;'>This email was requested by someone (" . $_SERVER["REMOTE_ADDR"] . ") using the Newsletter Signup Form on the <a href=\"" . $_SERVER["HTTP_REFERER"] . "\">SEG Magnetics Inc.</a> website.  If you did not request to be added to the SEG Newsletter we recommend you delete this email now.</p>";
	
	
	
	
	$mail_message .= "<p style='font-size: 1.6em;'>If you did request this verification email <a href='https://segmagnetics.com/" . $CLEAN["ccms_lng"] . "/spatial-effect-generator/news/optin.html?cuEmail=" .  $CLEAN["cuEmail"] . "&suDate=" . $a . "' style='color: #1155cc;' target='_blank'>CLICK HERE</a> to confirm your wish to optin.</p>
	<p>You can optout at anytime using the following link: <a href='https://segmagnetics.com/" . $CLEAN["ccms_lng"] . "/spatial-effect-generator/news/optout.html?cuEmail=" .  $CLEAN["cuEmail"] . "' style='color: #1155cc;' target='_blank'>optout</a>.</p>";
	
	
	
	
	$mail_message .= "<br />
	Regards,<br />
	<a href='https://segmagnetics.com/' target='_blank'><img src='https://d22d9mrn42f6vf.cloudfront.net/ccmstpl/_img/logo-full-01.png' style='border: none' alt='' ></a>
	<div style='color: #222222; margin: 10px 0px; overflow: auto;'>
		<div style='float: left; margin-right: 30px;'>
			<strong>SEG Magnetics, Inc.</strong><br />
			PO Box 1291, 10174 Austin Dr<br />
			Spring Valley, CA 91977
		</div>
		<div style='float: left;'>
			Email: <a href='mailto:info@segmagnetics.com' style='color: #1155cc;'>info@segmagnetics.com</a><br />
			Twitter: <a href='https://twitter.com/SegMagneticsInc' style='color: #1155cc;' target='_blank'>https://twitter.com/SegMagneticsInc</a><br />
			Web: <a href='https://segmagnetics.com/' style='color: #1155cc;' target='_blank'>https://segmagnetics.com/</a>
		</div>
	</div>
	<hr style='color: gray;' />
	<p style='color: gray; font-size: .9em;'>This e-mail may be privileged and/or confidential, and the sender does not waive any related rights and obligations. Any distribution, use or copying of this e-mail or the information it contains by other than an intended recipient is unauthorized. If you received this e-mail in error, please advise me (by return e-mail or otherwise) immediately.</p>";

	$mail_headers = "MIME-Version: 1.0\n";
	$mail_headers .= "Content-type: text/html; charset=UTF-8\r\n";
	$mail_headers .= "From: no-reply@" . $_SERVER["HTTP_HOST"] . "\r\n";
	$mail_headers .= "Reply-To: no-reply@" . $_SERVER["HTTP_HOST"] . "\r\n";
	// Sending email
	mail( $CLEAN["cuEmail"], ucfirst($CFG["DOMAIN"]) . " Newsletter Optin Verification Email", $mail_message, $mail_headers, "-f" . $CFG["EMAIL_BOUNCES_RETURNED_TO"] );
	$json['success'] = 'Email address received, please check your inbox for confirmation email now.';
}
echo json_encode($json);
