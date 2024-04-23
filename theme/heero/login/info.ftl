<#import "template.ftl" as layout>
<@layout.registrationLayout displayMessage=false; section>
    <#if section="header">
        <#if messageHeader??>
            ${messageHeader}
        </#if>
    <#elseif section="form">
        <div>
            <p class="p-4 font-montserrat text-center">
                ${message.summary}
                <#if requiredActions??>
                    <#list requiredActions>: 
                        <b><#items as reqActionItem>${kcSanitize(msg("requiredAction.${reqActionItem}"))?no_esc}<#sep>, 
                        </#items></b>
                    </#list>
                </#if>
            </p>
            <#if skipLink??>
            <#else>
                <p>
                <#if pageRedirectUri?has_content>
                    <@link.kw color="primary" href=pageRedirectUri>${kcSanitize(msg("backToApplication"))?no_esc}</@link.kw>
                <#elseif actionUri?has_content>
                    <@link.kw color="primary" href=actionUri>${kcSanitize(msg("proceedWithAction"))?no_esc}</@link.kw>
                <#elseif (client.baseUrl)?has_content>
                    <@link.kw color="primary" href=client.baseUrl>${kcSanitize(msg("backToApplication"))?no_esc}</@link.kw>
                </#if>
                </p>
            </#if>
        </div>
    </#if>
</@layout.registrationLayout>