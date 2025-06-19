<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html lang="ru" data-bs-theme="light">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{HEADER_TITLE}</title>
    <!-- IF {HEADER_META_DESCRIPTION} -->
    <meta name="description" content="{HEADER_META_DESCRIPTION}" />
    <!-- ENDIF -->
    <!-- IF {HEADER_META_KEYWORDS} -->
    <meta name="keywords" content="{HEADER_META_KEYWORDS}" />
    <!-- ENDIF -->
    <meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
<script>
	(function () {
		const storedTheme = localStorage.getItem('theme');
		const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
		const defaultTheme = storedTheme || (prefersDark ? 'dark' : 'light');
		document.documentElement.setAttribute('data-bs-theme', defaultTheme);
	})();
</script>
<script>
  (function() {
    const isDesktop = window.innerWidth >= 992;
    const sidebarState = localStorage.getItem('sidebarState');

    if (isDesktop && sidebarState === 'hidden') {
      document.documentElement.classList.add('sidebar-hidden');
    }
  })();
</script>
<style>
  .sidebar-hidden #sidebar {
    display: none !important;
  }
</style>
    <meta name="generator" content="Cotonti http://www.cotonti.com" />
    <link rel="canonical" href="{HEADER_CANONICAL_URL}" /> 
	{HEADER_BASEHREF} 
	{HEADER_HEAD}
    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="apple-touch-icon" href="apple-touch-icon.png" />
  </head>
  <body id="body" class="d-flex flex-column min-vh-100">

	<header class="navbar navbar-expand-lg sticky-top" data-bs-theme="inherit">
	  <div class="container-fluid">
		
		<!-- Кнопка сайдбара -->
		<button class="btn btn-outline-secondary ms-2 btn-toggle-sidebar" onclick="toggleSidebar()">
		  <i class="fa-solid fa-list"></i>
		</button>

		<!-- Логотип -->
		<a class="navbar-brand ms-2" href="{PHP.cfg.mainurl}">
		  {PHP.cfg.maintitle}
		</a>

		<div class="ms-auto d-flex align-items-center gap-2">
		  <!-- BEGIN: GUEST -->
		  <button class="btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#guestOffCanvas" aria-controls="guestOffCanvas" title="{PHP.L.Account}">
			<i class="fa-solid fa-user fa-lg"></i>
		  </button>
		  <!-- END: GUEST -->
			
		  
		  <!-- BEGIN: USER -->
		  <!-- IF {PHP|cot_modules('pm')} -->
		  <div class="position-relative">
			<a class="btn" href="{PHP|cot_url('pm')}">
			  <i class="fa-solid fa-envelope-open-text fa-2xl"></i>
			  <span class="position-absolute position-start-75 position-top-20 translate-middle badge badge-pm">{PHP.usr.newpm}</span>
			</a>
		  </div>
		  <!-- ENDIF -->
      <!-- IF {PHP|cot_plugin_active('userimages')} -->
	  <button class="btn p-0 text-white" type="button" data-bs-toggle="offcanvas" data-bs-target="#profileRightOffcanvas" aria-controls="profileRightOffcanvas" title="Аккаунт"> 
      <!-- IF {PHP.usr.profile.user_avatar} -->
      <img class="rounded-circle me-2 bg-white profile-img" src="{PHP.usr.profile.user_avatar}" alt="{PHP.usr.name}" width="36" height="36" style="object-fit: cover;">
      <!-- ELSE -->
      <img class="rounded-circle me-2 profile-img" src="{PHP.R.userimg_default_avatar}" alt="{PHP.usr.name}" width="36" height="36" style="object-fit: cover;">
      <!-- ENDIF -->
	  </button>
      <!-- ENDIF -->
		  <!-- END: USER -->
		</div>

	  </div>
	</header>
	<!-- IF {PHP.usr.id} > 0 -->
	<!-- Right Offcanvas Menu -->
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/header/profileRightOffcanvas.tpl"}
	<!-- ENDIF -->
    <div class="d-flex">
	  {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/header/sidebarMenuSections.tpl"}
      <!-- Left Offcanvas Menu -->
	  {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/header/infoLeftOffcanvas.tpl"}
      <main class="main-content container-fluid me-0 p-0">
        <!-- END: HEADER -->