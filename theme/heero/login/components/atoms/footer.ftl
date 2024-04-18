<#import "link.ftl" as link>
<#macro kw>
    <footer class="portrait:absolute portrait:inset-x-0 portrait:bottom-0 landscape:w-full landscape:mt-4 bg-secondary-100/75">
        <div class="flex justify-center py-4">
            <@link.kw color="secondary" href="https://shop.airis.fit">${msg("shopLinkTitle")}</@link.kw>
        </div>
    </footer>
</#macro>