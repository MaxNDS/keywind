<#import "link.ftl" as link>
<#macro kw>
    <footer class="absolute inset-x-0 bottom-0 bg-secondary-100/75">
        <div class="flex justify-center py-4">
            <@link.kw color="secondary" href="https://shop.airis.fit">${msg("shopLinkTitle")}</@link.kw>
        </div>
    </footer>
</#macro>