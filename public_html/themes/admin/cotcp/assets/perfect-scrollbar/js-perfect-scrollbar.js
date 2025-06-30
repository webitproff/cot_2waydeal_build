/* document.addEventListener("DOMContentLoaded", function () {
  const el = document.querySelector('.ps-container-breadcrumb');
  if (el) {
    el.style.height = '100%'; // важно для корректной высоты скроллбара
    new PerfectScrollbar(el, {
      suppressScrollY: true,
      wheelPropagation: true
    });
  }
}); */

document.addEventListener("DOMContentLoaded", function () {
  const el = document.querySelector('.ps-container-breadcrumb');
  if (el) {
    new PerfectScrollbar(el, {
      suppressScrollY: true
    });
  }
});


document.addEventListener('DOMContentLoaded', function () {
    const container = document.querySelector('.ps-container');
    if (container) {
        container.addEventListener('wheel', function (e) {
            e.preventDefault();
            container.scrollTop += e.deltaY;
        }, { passive: false });
    }
});