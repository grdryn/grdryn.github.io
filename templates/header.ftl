<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title><#if (content.title)??><#escape x as x?xml>${content.title}</#escape><#else>blog.grdryn.me</#if></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <meta name="keywords" content="" />
    <meta name="generator" content"JBake" />

    <!-- Le styles -->
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/css/asciidoctor.css" rel="stylesheet" />
    <link href="/css/base.css" rel="stylesheet" />
    <link href="/css/bootstrap-responsive.min.css" rel="stylesheet" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!--<link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">-->
    <link rel="shortcut icon" href="favicon.ico" />

    <link rel="alternate" type="application/atom+xml" href="https://blog.grdryn.me/feed.xml" title="Gerard Ryan's blog (All)" />
    <link rel="alternate" type="application/atom+xml" href="https://blog.grdryn.me/customfeeds/fedora.xml" title="Gerard Ryan's blog (Fedora-related)" />

    <link rel="webmention" href="https://webmention.herokuapp.com/api/webmention" />

    <!-- Matomo -->
    <script type="text/javascript">
      var _paq = window._paq || [];
      /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
      _paq.push(['trackPageView']);
      _paq.push(['enableLinkTracking']);
      (function() {
          var u="//blog.grdryn.me/matomo/";
          _paq.push(['setTrackerUrl', u+'matomo.php']);
          _paq.push(['setSiteId', '1']);
          var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
          g.type='text/javascript'; g.async=true; g.defer=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
      })();
    </script>
    <!-- End Matomo Code -->
  </head>
  <body>
    <div id="wrap">
