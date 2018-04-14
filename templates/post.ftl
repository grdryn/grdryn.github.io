<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="page-header">
		<h1><#escape x as x?xml>${content.title}</#escape></h1>
	</div>

	<p><em>${content.date?string("dd MMMM yyyy")}</em></p>

	<p>${content.body}</p>

	<hr>

        <div class="responses">
                <h3>Responses</h3>
                <script id="webmention-hosted">
                        (function () {
                                var sn = document.createElement("script"), s = document.getElementsByTagName("script")[0], url;
                                url = document.querySelectorAll ? document.querySelectorAll("link[rel~=canonical]") : false;
                                url = url && url[0] ? url[0].href : false;
                                sn.type = "text/javascript"; sn.async = true;
                                sn.src = "https://webmention.herokuapp.com/api/embed?url=" + encodeURIComponent(url || window.location);
                                s.parentNode.insertBefore(sn, s);
                        }());
                </script>
        </div>

<#include "footer.ftl">
