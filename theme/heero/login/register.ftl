<#import "template.ftl" as layout>
<#import "components/atoms/button.ftl" as button>
<#import "components/atoms/button-group.ftl" as buttonGroup>
<#import "components/atoms/form.ftl" as form>
<#import "components/atoms/input.ftl" as input>
<#import "components/atoms/link.ftl" as link>
<#import "components/atoms/checkbox.ftl" as checkbox>

<@layout.registrationLayout
  displayMessage=!messagesPerField.existsError("firstName", "lastName", "email", "username", "password", "password-confirm")
  ;
  section
>
  <#if section="header">
    ${msg("registerTitle")}
  <#elseif section="form">
    <@form.kw action=url.registrationAction method="post">
      <@input.kw
        autocomplete="given-name"
        autofocus=true
        invalid=messagesPerField.existsError("firstName")
        label=msg("firstName")
        message=kcSanitize(messagesPerField.get("firstName"))
        name="firstName"
        type="text"
        value=(register.formData.firstName)!''
      />
      <@input.kw
        autocomplete="family-name"
        invalid=messagesPerField.existsError("lastName")
        label=msg("lastName")
        message=kcSanitize(messagesPerField.get("lastName"))
        name="lastName"
        type="text"
        value=(register.formData.lastName)!''
      />
      <@input.kw
        autocomplete="email"
        invalid=messagesPerField.existsError("email")
        label=msg("email")
        message=kcSanitize(messagesPerField.get("email"))
        name="email"
        type="email"
        value=(register.formData.email)!''
      />
      <#if !realm.registrationEmailAsUsername>
        <@input.kw
          autocomplete="username"
          invalid=messagesPerField.existsError("username")
          label=msg("username")
          message=kcSanitize(messagesPerField.get("username"))
          name="username"
          type="text"
          value=(register.formData.username)!''
        />
      </#if>
      <#if passwordRequired??>
        <@input.kw
          autocomplete="new-password"
          invalid=messagesPerField.existsError("password", "password-confirm")
          label=msg("password")
          message=kcSanitize(messagesPerField.getFirstError("password", "password-confirm"))
          name="password"
          type="password"
        />
        <@input.kw
          autocomplete="new-password"
          invalid=messagesPerField.existsError("password-confirm")
          label=msg("passwordConfirm")
          message=kcSanitize(messagesPerField.get("password-confirm"))
          name="password-confirm"
          type="password"
        />
      </#if>
      <#if recaptchaRequired??>
        <div class="g-recaptcha" data-sitekey="${recaptchaSiteKey}" data-size="compact"></div>
      </#if>
      <#if termsAcceptanceRequired??>
        <p class="text-sm">${msg("termsText")}</p>
        <ul style="list-style: none;">
          <li>
            <@link.kw href="https://shop.airis.fit/pages/agb" size="small">${msg("termsLink")}</@link.kw>
          </li>
          <li>
            <@link.kw href="https://shop.airis.fit/pages/datenschutz" size="small">${msg("privacyLink")}</@link.kw>
          </li>
        </ul>
        <@checkbox.kw 
          label=msg("acceptTerms")
          id="termsAccepted"
          name="termsAccepted"
          required=true
        />
        
      </#if>
      <@buttonGroup.kw>
        <@button.kw type="submit">
          ${msg("doRegister")}
        </@button.kw>
      </@buttonGroup.kw>
    </@form.kw>
  <#elseif section="nav">
    <@link.kw color="secondary" component="a" href=url.loginUrl>
      ${kcSanitize(msg("backToLogin"))?no_esc}
    </@link.kw>
  </#if>
</@layout.registrationLayout>
