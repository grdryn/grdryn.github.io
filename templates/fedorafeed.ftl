<?xml version="1.0"?>
<rss version="2.0" xmlns:atom="http://www.w3.org/2005/Atom">
  <channel>
    <title>Posts by grdryn related to Fedora</title>
    <link>${config.site_host}</link>
    <atom:link href="${config.site_host}/customfeeds/fedora.xml" rel="self" type="application/rss+xml" />
    <description>This feed is for Fedora planet</description>
    <language>en-gb</language>
    <pubDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
    <lastBuildDate>${published_date?string("EEE, d MMM yyyy HH:mm:ss Z")}</lastBuildDate>

    <#list published_posts as post>
    <#if post.tags?seq_contains('fedora')>
    <item>
      <title><#escape x as x?xml>${post.title}</#escape></title>
      <link>${config.site_host}/${post.uri}</link>
      <pubDate>${post.date?string("EEE, d MMM yyyy HH:mm:ss Z")}</pubDate>
      <guid isPermaLink="false">${post.uri}</guid>
      <description>
        <#escape x as x?xml>
          ${post.body}
        </#escape>
      </description>
    </item>
    </#if>
    </#list>

  </channel>
</rss>
