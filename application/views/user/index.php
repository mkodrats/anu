
    <!-- END nav -->
    
    <div class="hero-wrap">
      <div class="overlay"></div>
      <div class="circle-bg"></div>
      <div class="circle-bg-2"></div>
      <div class="container-fluid">
        <div class="slider-text d-md-flex align-items-center" data-scrollax-parent="true">

          <div class="one-forth pr-md-4 ftco-animate align-self-md-center" data-scrollax=" properties: { translateY: '70%' }">
          	<h1 class="mb-4" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Desa Wisata<br> Kakilangit.</h1>
            <p class="mb-md-5 mb-sm-3" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Menjelajah Keindahan dan Kearifan Negeri Diatas Awan</p>
            <!-- <p data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><a href="#" class="btn btn-primary px-4 py-3">Get started</a></p> -->
          </div>
          <div class="one-half align-self-md-end align-self-sm-center">
          	<div class="slider-carousel owl-carousel">
          		<div class="item">
			          <img src="<?= base_url() ?>assets/images/slides/person_4.jpg" class="img-fluid img"alt="">
		          </div>
		          <div class="item">
			          <img src="<?= base_url() ?>assets/images/slides/7Oen0H7.jpg" class="img-fluid img"alt="">
		          </div>
              <div class="item">
			          <img src="<?= base_url() ?>assets/images/slides/OumbysN.jpg" class="img-fluid img"alt="">
		          </div>
              <div class="item">
			          <img src="<?= base_url() ?>assets/images/slides/QFRgQi2.jpg" class="img-fluid img"alt="">
		          </div>
              <div class="item">
			          <img src="<?= base_url() ?>assets/images/slides/RZkMuCY.jpg" class="img-fluid img"alt="">
		          </div>
              <div class="item">
			          <img src="<?= base_url() ?>assets/images/slides/VsGb7gQ.jpg" class="img-fluid img"alt="">
		          </div>
              <div class="item">
			          <img src="<?= base_url() ?>assets/images/slides/X65deUi.jpg" class="img-fluid img"alt="">
		          </div>
              <div class="item">
			          <img src="<?= base_url() ?>assets/images/slides/yAoOolz.png" class="img-fluid img"alt="">
		          </div>
              <div class="item">
			          <img src="<?= base_url() ?>assets/images/slides/zgYPsBl.jpg" class="img-fluid img"alt="">
		          </div>
	          </div>
          </div>
        </div>
      </div>
    </div>

    <section class="ftco-section bg-light">
      <div class="container">
        <div class="row justify-content-center mb-5 pb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <!-- <span class="subheading">Berita</span> -->
            <h2>Berita Terbaru</h2>
            <p>Berita paling baru yang kami punya.</p>
          </div>
        </div>
        <div class="row">
          <?php foreach ($berita as $key => $value): ?>
          <div class="col-md-4 ftco-animate">
            <div class="blog-entry">
              <a href="<?= base_url() ?>post/<?= $value->id.'/'.$value->slug ?>" class="block-20" style="background-image: url('<?php echo base_url()?>assets/uploads/<?= $value->cover ?>');">
              </a>
              <div class="text p-4 d-block">
                <div class="meta mb-3">
                  <div>
                    <a href="#">
                      <?php
                        $date=date_create($value->tgl_post);
                        echo date_format($date,"d M Y - H:i");
                      ?>
                    </a>
                  </div>
                  <div><a href="#">Admin</a></div>
                  <!-- <div><a href="#" class="meta-chat"><span class="icon-chat"></span> 3</a></div> -->
                </div>
                <h3 class="heading"><a href="<?= base_url() ?>post/<?= $value->id.'/'.$value->slug ?>"><?= $value->judul; ?></a></h3>
              </div>
            </div>
          </div>
          <?php endforeach ?>
        </div>
      </div>
    </section>

 