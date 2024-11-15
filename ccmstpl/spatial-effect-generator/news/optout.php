<?php
header("Content-Type: text/html; charset=UTF-8");
header("Cache-Control: public, must-revalidate, proxy-revalidate");
header("Pragma: no-cache");
?>{CCMS_DB_PRELOAD:all,news}<!DOCTYPE html>
<html id="no-fouc" dir="{CCMS_LIB:_default.php;FUNC:ccms_lng_dir}" lang="{CCMS_LIB:_default.php;FUNC:ccms_lng}" style="opacity: 0;">
	<head>
		<meta charset="utf-8">
		<title dir="{CCMS_LIB:_default.php;FUNC:ccms_lng_dir}">SEG Magnetics, Inc. - {CCMS_DB:all,news} | Optout</title>
		<meta name="description" content="" />

		{CCMS_TPL:header-head.html}
		<script>
			var navActiveArray = ["spatial-effect-generator_news","spatial-effect-generator","lng-{CCMS_LIB:_default.php;FUNC:ccms_lng}"];
			var navActiveFooterArray = [];
		</script>
	</head>
	<body>
		{CCMS_TPL:header-body.html}
		<div class="topic">
			<div class="container">
				<div class="row">
					<div class="col-sm-12" dir="{CCMS_DB_DIR:all,location}">
						<h3 dir="{CCMS_DB_DIR:all,location:1}">
							{CCMS_DB:all,location}:
						</h3>
						<ol class="breadcrumb pull-{CCMS_LIB:_default.php;FUNC:ccms_lng_dir_left_to_right}">
							<li>
								<a href="https://{CCMS_LIB:_default.php;FUNC:ccms_cfgDomain}/{CCMS_LIB:_default.php;FUNC:ccms_lng}/" dir="{CCMS_DB_DIR:all,homepage}">
									{CCMS_DB:all,homepage}
								</a>
							</li>
							<li>
								<a href="https://{CCMS_LIB:_default.php;FUNC:ccms_cfgDomain}/{CCMS_LIB:_default.php;FUNC:ccms_lng}/spatial-effect-generator/" dir="{CCMS_DB_DIR:all,special-effect-generator}">
									{CCMS_DB:all,special-effect-generator}
								</a>
							</li>
							<li>
								<a href="https://{CCMS_LIB:_default.php;FUNC:ccms_cfgDomain}/{CCMS_LIB:_default.php;FUNC:ccms_lng}/spatial-effect-generator/news/" dir="{CCMS_DB_DIR:all,news}">
									{CCMS_DB:all,news}
								</a>
							</li>
							<li class="active">
								Optout
							</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<main>
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<h2 class="headline-lg" dir="{CCMS_DB_DIR:news,header1:1}">{CCMS_DB:news,header1}</h2>
<?
if($CLEAN["cuEmail"] == "") {
	$json['error']['cuEmail'] = "Email address missing.<br /><br /><br />";
} elseif($CLEAN["cuEmail"] == "MAXLEN") {
	$json['error']['cuEmail'] = "'Email' field exceeded its maximum size of 256 character.<br /><br /><br />";
} elseif($CLEAN["cuEmail"] == "INVAL") {
	$json['error']['cuEmail'] = "'Email' field contains invalid characters.  ( > < & # )  You have used characters in this field which are either not supported by this field or we do not permitted on this system.";
}

if(!isset($json['error'])) {
	$qry = $CFG["DBH"]->prepare("SELECT * FROM `newsletter` WHERE `email` = CONVERT(_utf8 :cuEmail USING utf8mb4) COLLATE utf8mb4_general_ci LIMIT 1;");
	$qry->execute(array(':cuEmail' => $CLEAN["cuEmail"]));
	$row = $qry->fetch(PDO::FETCH_ASSOC);
	if($row) {
		if($row["optout"] == "1") {
			$json['error']['cuEmail'] = "This email address has already opted out of our mailing list.  Please contact SEG Magnetics Inc. via <a href='mailto:info@segmagnetics.com'>info@segmagnetics.com</a> if you feel this message is in error.<br /><br />";
		} else {
			$a = time();
			$qry = $CFG["DBH"]->prepare("UPDATE `newsletter` SET `optout` = '1', `optoutDate` = :optoutDate WHERE `id` = :id LIMIT 1;");
			$qry->execute(array(':id' => $row["id"], ':optoutDate' => $a));
		}
	} else {
		$json['error']['cuEmail'] = "No records in the database where found using the supplied values.  Please contact SEG Magnetics Inc. via <a href='mailto:info@segmagnetics.com'>info@segmagnetics.com</a> if you feel this message is in error.<br /><br />";
	}
}
?>
<?if($json['error']):?>
						<h1>OPTOUT ERROR</h1>
						<p><?=$json['error']['cuEmail'];?></p>
<?else:?>

						<h1>OPTED OUT</h1>
						<p>Thank you for opting in, we can also be found on Twitter at <a href="https://twitter.com/SegMagneticsInc" style="color: #1155cc;" target="_blank">https://twitter.com/SegMagneticsInc</a> which may be more up-to-date because we try to translate all anouncements here before they go live.<br /><br /></p>
<?endif;?>
					</div>
				</div>
			</div>
		</main>
		{CCMS_TPL:footer-1.html}
		<script>
			function loadFirst(e,t){var a=document.createElement("script");a.async = true;a.readyState?a.onreadystatechange=function(){("loaded"==a.readyState||"complete"==a.readyState)&&(a.onreadystatechange=null,t())}:a.onload=function(){t()},a.src=e,document.body.appendChild(a)}

			var cb = function() {
				var l = document.createElement('link'); l.rel = 'stylesheet';
				l.href = '//d22d9mrn42f6vf.cloudfront.net/ccmstpl/_css/styles.min.css';
				var h = document.getElementsByTagName('head')[0]; h.parentNode.insertBefore(l, h);

				var l = document.createElement('link'); l.rel = 'stylesheet';
				l.href = '//maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css';
				var h = document.getElementsByTagName('head')[0]; h.parentNode.insertBefore(l, h);

				var l = document.createElement('link'); l.rel = 'stylesheet';
				l.href = '//fonts.googleapis.com/css?family=Open+Sans:300';
				var h = document.getElementsByTagName('head')[0]; h.parentNode.insertBefore(l, h);
			};
			var raf = requestAnimationFrame || mozRequestAnimationFrame || webkitRequestAnimationFrame || msRequestAnimationFrame;
			if (raf) raf(cb);
			else window.addEventListener('load', cb);

			function loadJSResources() {
				loadFirst("//ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js", function(){ /* JQuery is loaded */
					loadFirst("//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js", function(){ /* Bootstrap is loaded */
						loadFirst("//d22d9mrn42f6vf.cloudfront.net/ccmstpl/_js/javascript.min.js", function(){ /* main JavaScript for the site */

							navActiveArray.forEach(function(s) {$("#"+s).addClass("active");});
							/*navActiveFooterArray.forEach(function(s) {$("#"+s).addClass("active");}); */

							/* Fade in web page. */
							$("#no-fouc").delay(100).animate({"opacity": "1"}, 500);
						});
					});
				});
			}
			
			if (window.addEventListener)
				window.addEventListener("load", loadJSResources, false);
			else if (window.attachEvent)
				window.attachEvent("onload", loadJSResources);
			else window.onload = loadJSResources;
		</script>
	</body>
</html>
