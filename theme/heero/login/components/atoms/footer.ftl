<#import "link.ftl" as link>
<#macro kw>
    <footer class="w-full bg-secondary-100/75 mt-16">
        <div class="flex justify-center py-4">
            <@link.kw color="secondary" href="https://shop.airis.fit"><span class="text-sm">&copy; ${.now?string('yyyy')} ${msg("shopLinkTitle")}</span></@link.kw>
        </div>
    </footer>
</#macro>