[#-------------- ASSIGNMENTS --------------]
[#assign pageNode = cmsfn.page(content)]
[#assign listLimit = content.listLimit]

[#-------------- RENDERING  --------------]
<div class="childPageList">
  [#if content.title?has_content]
    <h2>${content.title!}</h2>
  [/#if]

  <ul class="childPageList__list">

    [#assign navItems = navfn.navItems(pageNode)]
    [#list navItems as navItem]
        <li>
            <a href="${navfn.link(navItem)!"#"}">${navItem.navigationTitle!navItem.title!navItem.@name}</a>
        </li>
        [#if navItem?counter == listLimit]
          [#break]
        [/#if]
    [/#list]

  </ul>

</div>
