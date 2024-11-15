<?php
function navLngList() {
	global $CFG, $CLEAN;
	// this line of code produces the wrong output on GoDaddy servers.
	//$tpl = htmlspecialchars(preg_replace('/^\/([\pL\pN-]*)\/?(.*)\z/i', '${2}', $_SERVER['REDIRECT_URL']));
	$tpl = htmlspecialchars(preg_replace('/^\/([\pL\pN-]*)\/?(.*)\z/i', '${2}', $_SERVER['REQUEST_URI']));
	$qry = $CFG["DBH"]->prepare("SELECT * FROM `ccms_lng_charset` WHERE `status` = 1 ORDER BY lngDesc ASC;");
	if($qry->execute()) {
		while($row = $qry->fetch()) {
			if($row["ptrLng"]) {
				echo "<li id=\"lng-" . $row["lng"] . "\" onclick=\"lcu('" . $row["ptrLng"] . "');\"><a href=\"/" . $row["ptrLng"] . "/" . $tpl . "\">" . $row["lngDesc"] . "</a></li>\n";
			} else {
				echo "<li id=\"lng-" . $row["lng"] . "\" onclick=\"lcu('" . $row["lng"] . "');\"><a href=\"/" . $row["lng"] . "/" . $tpl . "\">" . $row["lngDesc"] . "</a></li>\n";
			}
		}
	}
}

function lng_dir_left_to_right() {
	global $CFG;
	if($CFG["CCMS_LNG_DIR"] == "ltr") {
		echo "right";
	} else {
		echo "left";
	}
}

function lng_dir_to_text() {
	global $CFG;
	if($CFG["CCMS_LNG_DIR"] == "ltr") {
		echo "left";
	} else {
		echo "right";
	}
}

/*
function pt_to_ptbz() {
	global $CFG, $CLEAN;
	$qry = $CFG["DBH"]->prepare("SELECT id, pt FROM `ccms_ins_db`;");
	if($qry->execute()) {
		while($row = $qry->fetch()) {
			$derp = $CFG["DBH"]->prepare("UPDATE `ccms_ins_db` SET `pt-bz` = :content WHERE `id` = :id LIMIT 1;");
			$derp->execute(array(':content' => $row["pt"], ':id' => $row["id"]));
		}
	}
	echo "Done prot to pt-bz.";
}
*/