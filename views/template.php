<html>
    <head>
        <meta charset="UTF-8">
        <title>Painel - <?php echo $viewData['company_name']; ?></title>
        <link href="<?php echo BASE_URL; ?>/assets/css/template.css" rel="stylesheet" />
        <script type="text/javascript" src="<?php echo BASE_URL; ?>/assets/js/jquery-1.7.1.min.js"></script>
        <script type="text/javascript">var BASE_URL = '<?php echo BASE_URL; ?>';</script>
        <script type="text/javascript" src="<?php echo BASE_URL; ?>/assets/js/script.js"></script>
    </head>
    <body>
        <?php 
        $this->loadViewInTemplate($viewName, $viewData);
        ?>
    	<div class="leftmenu">
    		<div class="company_name">
    			<?php echo $viewData['company_name']; ?>
    		</div>
            
    	</div>
    	<div class="container">
    		<div class="top">
    			<div class="top_right"><a href="<?php echo BASE_URL.'/login/logout'; ?>">Sair</a></div>
    			<div class="top_right"><?php echo $viewData['user_email']; ?></div>    			
    		</div>
            <div class="area">
                <?php $this->loadViewInTemplate($viewName, $viewData); ?>
            </div> 
    	</div>
    </body>
</html>
