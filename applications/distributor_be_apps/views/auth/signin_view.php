
<!DOCTYPE html>
<html>
<head>
  <title>Sign in</title>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/vendor.css">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/flat-admin.css">

</head>
<body>
  <div class="app app-default">

<div class="app-container app-login">
  <div class="flex-center">
    <div class="app-header"></div>
    <div class="app-body">
      <div class="app-block">
        <div class="app-form">
          <div class="form-header">
            <div class="app-brand"><span class="highlight">Simplio</span> Admin</div>
          </div>
          <form action="<?php echo base_url()."auth/validation" ?>" method="POST">
              <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">
                  <i class="fa fa-user" aria-hidden="true"></i></span>
                <input name="username" type="text" class="form-control" placeholder="Username" required>
              </div>
              <div class="input-group">
                <span class="input-group-addon" id="basic-addon2">
                  <i class="fa fa-key" aria-hidden="true"></i></span>
                <input name="password" type="password" class="form-control" placeholder="Password" required>
              </div>
              <div class="text-center">
                  <input type="submit" class="btn btn-success btn-submit" value="Login">
              </div>
          </form>
        </div>
      </div>
    </div>
    <div class="app-footer">
    </div>
  </div>
</div>
</body>
</html>