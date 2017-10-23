<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<#include "${full_templates_path}/favicon.ftl" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">
<div class="background-image"></div>
<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">
	<header class="container-fluid-1100" id="banner" role="banner">
		<div class="row">
			<div class="navbar-header" id="heading">
		<#--<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="70" src="${site_logo}" width="120" />
			</a>-->

				<!--<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
				</#if>-->

				<#if is_setup_complete>
					<button aria-controls="navigation" aria-expanded="false" class="collapsed navbar-toggle" data-target="#navigationCollapse" data-toggle="collapse" type="button">
						<span class="icon-bar"></span>

						<span class="icon-bar"></span>

						<span class="icon-bar"></span>
					</button>

					<div class="pull-right user-personal-bar">
						<@liferay.user_personal_bar />
					</div>
				</#if>
			</div>

			<#include "${full_templates_path}/navigation.ftl" />
		</div>
	</header>

	<section class="container-fluid-1100" id="content">
		<h1 class="hide-accessible">${the_title}</h1>
		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<footer class="footer" id="footer" role="contentinfo">
		<div>
			<div>
				<h2 class="font_2" style="font-size:17px; text-align:center; margin: 0;"><span style="color:#FFFFFF;"><span style="font-size:17px;"><span style="letter-spacing:0em;">Address - 18-5 E Dundee Suite 200 Barrington IL 60010 </span></span></span></h2>
				<h2 class="font_2" style="font-size:17px; text-align:center; margin: 0;"><span style="color:#FFFFFF;"><span style="font-size:17px;"><span style="letter-spacing:0em;">Phone - <span style="text-decoration:underline;"><a href="tel:1-224-333-0911" data-content="1-224-333-0911" data-type="phone">1-224-333-0911</a></span> &nbsp;Email&nbsp;-<span style="text-decoration:underline;"><a href="mailto:info@rahabsdaughters.org?subject=Let's Connect" target="_self" data-content="info@rahabsdaughters.org" data-type="mail"> info@rahabsdaughters.org</a></span></span></span></span></h2>
			</div>
		</div>

		<div class="social-media-wrapper">
			<ul>
			    <li>
			        <div id="facebook"><a class="icon-facebook"
			        href="http://www.facebook.com/rahabsdaughters"
			        target="_blank"><span class="hide">Facebook</span></a></div>
			    </li>
			    <li>
			        <div id="twitter"><a class="icon-twitter"
			        href="http://www.twitter.com/rahabsdaughters"
			        target="_blank"><span class="hide">Twitter</span></a></div>
			    </li>
			    <li>
			        <div id="youtube"><a class="icon-youtube"
			        href="http://youtube.com/user/rahabsdaughters"
			        target="_blank"><span class="hide">YouTube</span></a></div>
			    </li>
			</ul>
		</div>
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>
