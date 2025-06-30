

<!-- BEGIN: FOOTER -->
		</main>
    </div>
    <footer class="text-center py-2 border-top mt-auto" style="background-color: var(--bs-sidebar-bg)">
      <div class="container-fluid">
        <div class="row g-3 justify-content-md-end justify-content-center">
          <div class="col-md-6 col-12 text-center">
            <p class="my-0">{PHP.cfg.maintitle} © 2012 - {PHP.sys.now|cot_date('d/m/Y', $this)}</p>
          </div>
          <div class="col-md-6 col-12 text-center">
            <a href="https://github.com/Cotonti/Cotonti" target="_blank" class="text-decoration-none" data-bs-toggle="tooltip" data-bs-title="{PHP.L.footer_cotonti_tooltip}">
              <span class="me-2">{PHP.L.footer_engine}</span>
              <img src="favicon.ico" alt="Cotonti CMF">
              <span class="ms-2">{PHP.out.copyright} {PHP.cfg.version}</span>
            </a>
          </div>
        </div>
        <!-- back-to-top -->
        <button type="button" data-bs-toggle="tooltip" data-bs-title="back to top" class="btn btn-outline position-fixed bottom-0 end-0 m-3" id="btn-back-to-top">
          <i class="fa-solid fa-square-caret-up fa-lg"></i>
        </button>
      </div>
    </footer>


	<!-- JavaScript -->
	<script>
		let backToTopButton = document.getElementById("btn-back-to-top");

		// Скролл наверх при клике
		backToTopButton.addEventListener("click", function() {
			window.scrollTo({ top: 0, behavior: "smooth" });
		});
	</script>	




<!-- Footer resources (scripts, etc.) -->
{FOOTER_RC}

</body>
</html>
<!-- END: FOOTER -->
