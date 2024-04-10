<#import "template.ftl" as layout>
<#import "components/atoms/button.ftl" as button>
<#import "components/atoms/button-group.ftl" as buttonGroup>
<#import "components/atoms/form.ftl" as form>
<#import "components/atoms/user-code-input.ftl" as userCodeInput>

<@layout.registrationLayout; section>
  <#if section="header">
    ${msg("verifyAirisDeviceTitle")}
  <#elseif section="form">
    <h3 class="font-montserrat">${msg("verifyOAuth2DeviceUserCode")}</h3>
    <@form.kw action=url.oauth2DeviceVerificationAction method="post">
      <div class="py-4">
        <@userCodeInput.kw />
      </div>
      <@button.kw color="airisBlue" name="accept" type="submit">
          ${msg("doSubmit")}
      </@button.kw>
    </@form.kw>
  </#if>
</@layout.registrationLayout>
