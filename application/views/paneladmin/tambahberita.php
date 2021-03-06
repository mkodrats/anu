<div id="notif">
            
</div>
<div class="main-content-container container-fluid px-4">
            <!-- Page Header -->
            <div class="page-header row no-gutters py-4">
              <div class="col-12 col-sm-4 text-center text-sm-left mb-0">
                <span class="text-uppercase page-subtitle">Berita</span>
                <h3 class="page-title">Tambah Berita</h3>
              </div>
            </div>
            <!-- End Page Header -->
            <div class="row">
              <div class="col-lg-12 col-md-12">
                <!-- Add New Post Form -->
                <div class="card card-small mb-3">
                  <div class="card-body">
                    <form class="add-new-post" method="POST" enctype="multipart/form-data">
                      <input type="hidden" name="kategori" value="berita">
                      <div class="form-row">
                        <div class="form-group col-md-6">
                          <label for="feFirstName">Judul berita</label>
                          <input type="text" class="form-control" id="judul" name="judul" placeholder="Judul berita" required autofocus> 
                        </div>
                        <div class="form-group col-md-6">
                          <label for="feLastName">Cover berita</label>
                          <input type="file" class="form-control" id="cover" name="cover" placeholder="File cover" accept="image/*" required> 
                        </div>
                      </div>
                      <div id="quillEditor" class="add-new-post__editor mb-1"></div>
                      <button type="submit" id="btn-submit" class="btn btn-sm btn-accent ml-auto"><i class="material-icons">file_copy</i> Submit</button>
                    </form>
                  </div>
                </div>
                <!-- / Add New Post Form -->
              </div>
            </div>
          </div>
          <script>
              $('#tambahberita').addClass("active")
          </script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
          <script src="https://unpkg.com/shards-ui@latest/dist/js/shards.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/Sharrre/2.0.1/jquery.sharrre.min.js"></script>
          <script src="<?php echo base_url() ?>assets/js/extras.1.0.0.min.js"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/quill/1.3.6/quill.min.js"></script>
          <!-- <script src="<?php //echo base_url() ?>assets/js/app/app-blog-new-post.1.0.0.js"></script> -->

          <script type="text/javascript">
            $(function(){
              $(document).ready(function () {
                var options = {
                    modules: {
                      toolbar: [
                        [{ size: [ 'small', 'medium', 'large', 'huge' ]}, { header: [1,2,3,4] }, 'bold', 'italic', 'underline', 'strike', { align: '' }, { align: 'center' }, { align: 'right' }, { align: 'justify' }, { 'list': 'ordered'}, { 'list': 'bullet' }, 'link', 'video']
                      ]
                    },
                    placeholder: 'Isi pos di sini....',
                    theme: 'snow'
                };

                var editor = new Quill('#quillEditor', options);

                $('.add-new-post').on('submit', function(e) {
                      e.preventDefault();
                      $("#btn-submit").attr('disabled', 'disabled');
                      $("#btn-submit").html("Proses <i class='material-icons'>donut_large</i>");
                      var formData = new FormData($(".add-new-post")[0]);
                      var isi = editor.root.innerHTML;
                      formData.append("isi", isi);
                      $.ajax({
                          url     : "<?= base_url() ?>processing/addPost",
                          type    : "POST",
                          data    : formData,
                          contentType : false,
                          processData : false,
                          success : function(data) {
                              $('.add-new-post')[0].reset();
                              editor.setContents([{ insert: '\n' }]);
                              $('#notif').html('<div class="alert alert-success alert-dismissible fade show mb-0" role="alert">'
                                                +'<button type="button" class="close" data-dismiss="alert" aria-label="Close">'
                                                +'<span aria-hidden="true">×</span>'
                                                +'</button>'
                                                +'<i class="fa fa-check mx-2"></i>'
                                                +'<strong>Sukses!</strong> Berita berhasil di publish! '
                                                +'</div>');
                          },
                          error : function() {
                            $('#notif').html('<div class="alert alert-danger alert-dismissible fade show mb-0" role="alert">'
                                                +'<button type="button" class="close" data-dismiss="alert" aria-label="Close">'
                                                +'<span aria-hidden="true">×</span>'
                                                +'</button>'
                                                +'<i class="fa fa-check mx-2"></i>'
                                                +'<strong>Gagal!</strong> Terjadi kesalahan, berita gagal dipublish! '
                                                +'</div>');
                          },
                          complete : function(){
                            $('#btn-submit').removeAttr('disabled');
                            $("#btn-submit").html('<i class="material-icons">file_copy</i> Submit');
                          }
                      });
                      return false;
                })
            });
          });
          </script>