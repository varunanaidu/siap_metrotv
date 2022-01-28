<?php if ( !defined('BASEPATH' ) )exit('No direct script access allowed');?>
<div id="content" style="padding:20px;background:#FCFCFC;">
	<?php 
	if ( isset($email) ) {
		echo $email['content'];
	}
	 ?>
</div>