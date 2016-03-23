<?php
session_start();
session_destroy();
echo "<a href='index.php'> click to login</a>";
echo '<meta http-equiv=Refresh content="0;url=index.php">';
?>