<?php
header("Content-Type: text/html; charset=UTF-8");
header("Cache-Control: public, must-revalidate, proxy-revalidate");
?>{CCMS_DB_PRELOAD:all}<!DOCTYPE html>
<html id="no-fouc" dir="{CCMS_LIB:_default.php;FUNC:ccms_lng_dir}" lang="{CCMS_LIB:_default.php;FUNC:ccms_lng}" style="opacity: 0;">
	<head>
		<meta charset="utf-8">
		<title dir="{CCMS_LIB:_default.php;FUNC:ccms_lng_dir}">SEG Magnetics, Inc. - {CCMS_DB:all,search}</title>
		<meta name="description" content="" />

		{CCMS_TPL:header-head.html}
		<script>
			var navActiveArray = ["lng-{CCMS_LIB:_default.php;FUNC:ccms_lng}"];
			/*var navActiveArray = ["searl-effect-generator","searl-effect-generator_research"]; */
		</script>
		<style type="text/css">
			.gsc-adBlock { opacity: .3 !important;}
			
			input.gsc-input {
				outline: none !important;
				display: block !important;
				width: 99% !important;
				height: 34px !important;
				margin: 0px 2px 0px 0px !important;
				font-size: 14px !important;
				line-height: 1.42857143 !important;
				color: #555 !important;
				background-color: #fff !important;
				background-image: none !important;
				border: 1px solid #ccc !important;
				border-radius: 4px !important;
			}
			
			input.gsc-search-button {
				color: #fff !important;
				background-color: #337ab7 !important;
				border-color: #2e6da4 !important;
				display: inline-block !important;
				padding: 6px 12px !important;
				/* margin-bottom: 10px !important; */
				font-size: 14px !important;
				font-weight: 400 !important;
				line-height: 1.42857143 !important;
				text-align: center !important;
				white-space: nowrap !important;
				vertical-align: middle !important;
				-ms-touch-action: manipulation !important;
				touch-action: manipulation !important;
				cursor: pointer !important;
				-webkit-user-select: none !important;
				-moz-user-select: none !important;
				-ms-user-select: none !important;
				user-select: none !important;
				background-image: none !important;
				border: 1px solid transparent !important;
				border-radius: 4px !important;
				height: auto !important;
			}
			
			input.gsc-search-button:hover {
				color: #fff !important;
				background-color: #286090 !important;
				border-color: #204d74 !important;
			}
		</style>
	</head>
	<body id="top">
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
								<a href="https://{CCMS_LIB:_default.php;FUNC:ccms_cfgDomain}/{CCMS_LIB:_default.php;FUNC:ccms_lng}/">
									{CCMS_DB:all,homepage}
								</a>
							</li>
							<li class="active" dir="{CCMS_DB_DIR:all,search}">
								{CCMS_DB:all,search}
							</li>
						</ol>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-12" dir="{CCMS_LIB:_default.php;FUNC:ccms_lng_dir}">
					<h1 dir="{CCMS_DB_DIR:all,search:1}">{CCMS_DB:all,search}</h1>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
<?if($CFG["GOOGLE_CUSTOM_SEARCH_ENGINE_CODE"] != ""):?>

	
<script>
	var gcsForm = function() {
		var element = google.search.cse.element.getElement('gcsForm');
		element.execute('<?=htmlspecialchars($_REQUEST["search"]);?>');
	};
	var myCallback = function() {
		if (document.readyState == 'complete') {
			gcsForm();
		} else {
			google.setOnLoadCallback(gcsForm, true);
		}
	};
	window.__gcse = {
		callback: myCallback
	};
	(function() {
		var cx = '<?=$CFG["GOOGLE_CUSTOM_SEARCH_ENGINE_CODE"];?>';
		var gcse = document.createElement('script');
		gcse.type = 'text/javascript';
		gcse.async = true;
		gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//cse.google.com/cse.js?cx=' + cx + '&language=<?=$CLEAN["ccms_lng"];?>';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(gcse, s);
	})();
</script>
<gcse:search enableAutoComplete="true" gname="gcsForm"></gcse:search>


<?else:?>
	<p>
		Google Search Results / Custom Search Engine (CSE)<br />
		<br />
		To add Google Custom Search results to this page visit <a href="//cse.google.com/cse/">cse.google.com/cse/</a> and create a new CSE code.  Copy the code (e.g.: 010508916976745981301:bdscggyxyle) into the $CFG["GOOGLE_CUSTOM_SEARCH_ENGINE_CODE"] variable in your config file and you are done.
		</p>
<?endif;?>
				</div>
			</div>
		</div>
		{CCMS_TPL:footer-1.html}
		<script>
			function loadFirst(e,t){var a=document.createElement("script");a.async = true;a.readyState?a.onreadystatechange=function(){("loaded"==a.readyState||"complete"==a.readyState)&&(a.onreadystatechange=null,t())}:a.onload=function(){t()},a.src=e,document.body.appendChild(a)}

			var cb = function() {
				var l = document.createElement('link'); l.rel = 'stylesheet';
				l.href = '//d22d9mrn42f6vf.cloudfront.net/ccmstpl/_css/styles.min.css';
				var h = document.getElementsByTagName('head')[0]; h.parentNode.insertBefore(l, h);

				var l = document.createElement('link'); l.rel = 'stylesheet';
				l.href = '//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css';
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
