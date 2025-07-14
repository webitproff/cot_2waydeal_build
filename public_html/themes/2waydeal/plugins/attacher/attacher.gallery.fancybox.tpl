<!-- BEGIN: MAIN -->
<style>
  a[data-fancybox="gallery"] {
    display: block;
    text-decoration: none;
  }
  a[data-fancybox="gallery"]:hover {
    cursor: zoom-in; /* Курсор "лупа с плюсом" */
  }
  a[data-fancybox="gallery"]:hover img {
    transform: scale(1.05);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    filter: brightness(1.1);
    transition: transform 0.3s ease, box-shadow 0.3s ease, filter 0.3s ease;
  }
  a[data-fancybox="gallery"] img {
    transition: transform 0.3s ease, box-shadow 0.3s ease, filter 0.3s ease;
  }
#container-carousel .carousel-item {
  height: 420px;
  position: relative;
  overflow: hidden;
}
#container-carousel .carousel-item img {
  width: 100%;
  height: 420px;
  object-fit: contain;
  object-position: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.fancybox-image {
    border-radius: 15px;
}
</style>

<div id="container-carousel" class="carousel slide " data-bs-ride="true">
  <div class="carousel-inner rounded-5 shadow-bottom">
<!-- BEGIN: FILES_ROW -->
    <div class="carousel-item <!-- IF {FILES_ROW_NUM} == '1' --> active<!-- ENDIF -->">
      	<a data-fancybox="gallery" data-src="{FILES_ROW_URL}" data-caption="{FILES_ROW_TITLE} {PHP.pag.page_title}">
	  <img src="{FILES_ROW_URL}" alt="{PHP.pag.page_title}" class="img-fluid rounded" style="aspect-ratio: 1/1; object-fit: cover;">
	</a>
    </div>
  <!-- END: FILES_ROW -->

  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#container-carousel" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#container-carousel" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


    <script>
      Fancybox.bind('[data-fancybox="gallery"]', {
        Toolbar: {
          display: {
            left: ["infobar"],
            middle: [
              "zoomIn",
              "zoomOut",
              "toggle1to1",
              "rotateCCW",
              "rotateCW",
              "flipX",
              "flipY",
            ],
            right: ["slideshow", "thumbs", "close"],
          },
        },
      });    
    </script>

<!-- END: MAIN -->

https://fancyapps.com/fancybox/plugins/toolbar/
    <script>
      Fancybox.bind('[data-fancybox="gallery"]', {
        Slideshow: {
          progressParentEl: (slideshow) => {
            return slideshow.instance.container;
          }
        }
      });    
    </script>
<script>
document.addEventListener('DOMContentLoaded', function() {
    Fancybox.bind("[data-fancybox='gallery']", {
        infinite: true,
        keyboard: true,
        hideScrollbar: true,
        Toolbar: {
            display: ["counter", "zoom", "slideshow", "download", "close"]
        },
        Thumbs: {
            autoStart: false
        }
    });
});
</script>
