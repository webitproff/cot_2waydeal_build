$().ready(function() {


	
});

function toggleTheme() {
	const html = document.documentElement;
	const currentTheme = html.getAttribute('data-bs-theme') || 'light';
	const newTheme = currentTheme === 'light' ? 'dark' : 'light';

	html.setAttribute('data-bs-theme', newTheme);
	localStorage.setItem('theme', newTheme);

	updateThemeUI(newTheme);
}

function updateThemeUI(theme) {
	const link = document.querySelector('.nav-link[onclick="toggleTheme()"]');
	const icon = link.querySelector('.theme-icon');
	const text = link.querySelector('.theme-text');

	// Меняем иконку
	icon.className = 'theme-icon fa-solid ' + (theme === 'light' ? 'fa-moon' : 'fa-sun');

	// Меняем текст
	text.textContent = theme === 'light' ? link.dataset.dark : link.dataset.light;
}


document.addEventListener('DOMContentLoaded', function () {
	const storedTheme = localStorage.getItem('theme');
	const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
	const defaultTheme = storedTheme || (prefersDark ? 'dark' : 'light');

	document.documentElement.setAttribute('data-bs-theme', defaultTheme);
	updateThemeUI(defaultTheme);
});


function toggleSidebar() {
  const sidebar = document.getElementById('sidebar');
  const isDesktop = window.innerWidth >= 992;

  if (isDesktop) {
    sidebar.classList.toggle('hidden');
    const newState = sidebar.classList.contains('hidden') ? 'hidden' : 'visible';
    localStorage.setItem('sidebarState', newState);
  } else {
    sidebar.classList.toggle('show');
  }
}

document.addEventListener('DOMContentLoaded', function () {
  document.documentElement.classList.remove('sidebar-hidden');

  const sidebar = document.getElementById('sidebar');
  const isDesktop = window.innerWidth >= 992;

  if (isDesktop) {
    const savedState = localStorage.getItem('sidebarState');
    if (savedState === 'hidden') {
      sidebar.classList.add('hidden');
    } else {
      sidebar.classList.remove('hidden');
    }
  }
});

// Закрытие мобильного сайдбара по клику вне его
document.addEventListener('click', function (event) {
  const sidebar = document.getElementById('sidebar');
  const isMobile = window.innerWidth < 992;

  if (isMobile && sidebar.classList.contains('show')) {
    const toggleButton = document.querySelector('.btn-toggle-sidebar');
    if (!sidebar.contains(event.target) && !toggleButton.contains(event.target)) {
      sidebar.classList.remove('show');
    }
  }
});


// дропдаун в левом боковом меню слайдом (Offcanvas)
document.addEventListener('DOMContentLoaded', function () {
    // Находим все триггеры подменю
    const submenuToggles = document.querySelectorAll('.submenu-toggle');

    submenuToggles.forEach(function (toggle) {
        toggle.addEventListener('click', function (e) {
            e.preventDefault(); // Предотвращаем дефолтное поведение
            e.stopPropagation(); // Останавливаем всплытие для Offcanvas

            const parent = this.closest('.dropdown-submenu'); // Находим родителя
            const submenu = parent.querySelector('.submenu'); // Находим подменю

            // Переключаем состояние
            if (parent.classList.contains('active')) {
                parent.classList.remove('active');
            } else {
                // Закрываем все другие подменю
                document.querySelectorAll('.dropdown-submenu.active').forEach(function (item) {
                    item.classList.remove('active');
                });
                parent.classList.add('active');
            }
        });
    });

    // Закрываем подменю при закрытии Offcanvas
    const offcanvasElement = document.querySelector('#navbarOffcanvas');
    if (offcanvasElement) {
        offcanvasElement.addEventListener('hidden.bs.offcanvas', function () {
            document.querySelectorAll('.dropdown-submenu.active').forEach(function (item) {
                item.classList.remove('active');
            });
        });
    }

    // Отладка
    console.log('Submenu toggles found:', submenuToggles.length);
});

// запускаем "tooltip"
document.addEventListener('DOMContentLoaded', function () {
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'));
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl);
    });
  });
  