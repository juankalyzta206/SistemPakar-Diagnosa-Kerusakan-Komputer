<title>Beranda - Sistem Pakar</title>
<?php 
  $htgejala=mysqli_query($conn,"SELECT count(*) as total from gejala");
	$dtgejala=mysqli_fetch_assoc($htgejala); ?>
	<div class='row'>
        <div class='col-lg-3 col-xs-6'>
          <!-- small box -->
          <div class='small-box bg-aqua'>
            <div class='inner'>
              <h3> <?php echo $dtgejala["total"]; ?></h3>
              <p>Total Gejala</p>
            </div>
            <div class='icon'>
              <i class='ion ion-thermometer'></i>
            </div>
          </div>
        </div>
        <!-- ./col -->
<?php 
	$htkerusakan=mysqli_query($conn,"SELECT count(*) as total from kerusakan");
	  $dtkerusakan=mysqli_fetch_assoc($htkerusakan); ?>
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3> <?php echo $dtkerusakan["total"]; ?></h3>

              <p>Total Kerusakan</p>
            </div>
            <div class="icon">
              <i class="ion ion-bug"></i>
            </div>
          </div>
        </div>
        <!-- ./col -->
<?php 
	$htpengetahuan=mysqli_query($conn,"SELECT count(*) as total from basis_pengetahuan");
	  $dtpengetahuan=mysqli_fetch_assoc($htpengetahuan); ?>
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3><?php echo $dtpengetahuan["total"]; ?></h3>

              <p>Total Pengetahuan</p>
            </div>
            <div class="icon">
              <i class="ion ion-erlenmeyer-flask"></i>
            </div>
          </div>
        </div>
        <!-- ./col -->
<?php 
	$htadmin=mysqli_query($conn,"SELECT count(*) as total from admin");
	  $dtadmin=mysqli_fetch_assoc($htadmin); ?>
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
             <h3> <?php echo $dtadmin["total"]; ?></h3>
              <p>Total Admin Pakar</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
          </div>
        </div>
        <!-- ./col -->
      </div>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                  <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                  <li data-target="#carousel-example-generic" data-slide-to="2" class="active"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="aset/banner/BANNER1.png" alt="First slide">
                    <div class="carousel-caption">
                    </div>
                  </div>
                  <div class="item">
                    <img src="aset/banner/BANNER2.png" alt="Second slide" >
                    <div class="carousel-caption">
                    </div>
                  </div><!--
                  <div class="item active">
                    <img src="aset/banner/daging.jpg" alt="Third slide">
                    <div class="carousel-caption">
                    </div>
                  </div>-->
                </div> 
                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                  <span class="fa fa-angle-left"></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                  <span class="fa fa-angle-right"></span>
                </a>
              </div>
			  <br>
        <div></div>