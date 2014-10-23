<?php

	$db_name = "admin";

	$db_username = "root";

	$db_password = "";

	$db_host = "localhost";

	mysql_connect($db_host, $db_username, $db_password, $db_name);

	mysql_select_db($db_name) or die (mysql_error());

	echo "Succesfully connected to database";

?> 