<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "title">
        ${msg("registerWithTitle",(realm.name!''))}
    <#elseif section = "header">
         ${msg("Register",(realm.name!''))}
    <#elseif section = "form">
        <form id="kc-register-form" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
          <#if !realm.registrationEmailAsUsername>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('username',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="username" class="${properties.kcLabelClass!}">${msg("username")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input required type="text" id="username" class="${properties.kcInputClass!}" name="username" value="${(register.formData.username!'')}" />
                </div>
            </div>
          </#if>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
                <#--  <div class="${properties.kcLabelWrapperClass!}">
                    <label for="firstName" class="${properties.kcLabelClass!}">${msg("firstName")}</label>
                </div>  -->
                <div class="${properties.kcInputWrapperClass!}">
                    <input required placeholder="${msg("firstName")}" type="text" id="firstName" class="${properties.kcInputClass!}" name="firstName" value="${(register.formData.firstName!'')}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">
                <#--  <div class="${properties.kcLabelWrapperClass!}">
                    <label for="lastName" class="${properties.kcLabelClass!}">${msg("lastName")}</label>
                </div>  -->
                <div class="${properties.kcInputWrapperClass!}">
                    <input required placeholder="${msg("lastName")}" type="text" id="lastName" class="${properties.kcInputClass!}" name="lastName" value="${(register.formData.lastName!'')}" />
                </div>
            </div>

            <#--  <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('name',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="name" class="${properties.kcLabelClass!}">${msg("name")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="name" class="${properties.kcInputClass!}" name="name" value="${(register.formData.name!'')}" />
                </div>
            </div>  -->

            <#--  <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('country',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="user.attributes.country" class="${properties.kcLabelClass!}">${msg("country")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <select
                        required
                        name="user.attributes.country"
                        id="user.attributes.country"class="${properties.kcInputClass!}"
                        value="${(register.formData['user.attributes.country']!'')}"
                    >
                        <option disabled selected value>Select a country</option>

                        <#list ["AD", "AE", "AF", "AG", "AI", "AL", "AM", "AN", "AO", "AQ", "AR", "AS", "AT", "AU", "AW", "AX", "AZ", "BA", "BB", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BL", "BM", "BN", "BO", "BQ", "BR", "BS", "BT", "BV", "BW", "BY", "BZ", "CA", "CC", "CD", "CF", "CG", "CH", "CI", "CK", "CL", "CM", "CN", "CO", "CR", "CS", "CU", "CV", "CW", "CX", "CY", "CZ", "DE", "DJ", "DK", "DM", "DO", "DZ", "EC", "EE", "EG", "EH", "ER", "ES", "ET", "FI", "FJ", "FK", "FM", "FO", "FR", "GA", "GB", "GD", "GE", "GF", "GG", "GH", "GI", "GL", "GM", "GN", "GP", "GQ", "GR", "GS", "GT", "GU", "GW", "GY", "HK", "HM", "HN", "HR", "HT", "HU", "ID", "IE", "IL", "IM", "IN", "IO", "IQ", "IR", "IS", "IT", "JE", "JM", "JO", "JP", "KE", "KG", "KH", "KI", "KM", "KN", "KP", "KR", "KW", "KY", "KZ", "LA", "LB", "LC", "LI", "LK", "LR", "LS", "LT", "LU", "LV", "LY", "MA", "MC", "MD", "ME", "MF", "MG", "MH", "MK", "ML", "MM", "MN", "MO", "MP", "MQ", "MR", "MS", "MT", "MU", "MV", "MW", "MX", "MY", "MZ", "NA", "NC", "NE", "NF", "NG", "NI", "NL", "NO", "NP", "NR", "NU", "NZ", "OM", "PA", "PE", "PF", "PG", "PH", "PK", "PL", "PM", "PN", "PR", "PS", "PT", "PW", "PY", "QA", "RE", "RO", "RS", "RU", "RW", "SA", "SB", "SC", "SD", "SE", "SG", "SH", "SI", "SJ", "SK", "SL", "SM", "SN", "SO", "SR", "SS", "ST", "SV", "SX", "SY", "SZ", "TC", "TD", "TF", "TG", "TH", "TJ", "TK", "TL", "TM", "TN", "TO", "TR", "TT", "TV", "TW", "TZ", "UA", "UG", "UM", "US", "UY", "UZ", "VA", "VC", "VE", "VG", "VI", "VN", "VU", "WF", "WS", "XK", "YE", "YT", "YU", "ZA", "ZM", "ZW"] as country>
                            <option value="${country}">${msg(country)}</option>
                        </#list>

                    </select>
                </div>
            </div>  -->

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                <#--  <div class="${properties.kcLabelWrapperClass!}">
                    <label for="email" class="${properties.kcLabelClass!}">${msg("email")}</label>
                </div>  -->
                <div class="${properties.kcInputWrapperClass!}">
                    <input required placeholder="${msg("email")}" type="text" id="email" class="${properties.kcInputClass!}" name="email" value="${(register.formData.email!'')}" />
                </div>
            </div>

            <#if passwordRequired>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('password',properties.kcFormGroupErrorClass!)}">
                <#--  <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password" class="${properties.kcLabelClass!}">${msg("password")}</label>
                </div>  -->
                <div class="${properties.kcInputWrapperClass!}">
                    <input placeholder="${msg("password")}" required type="password" id="password" class="${properties.kcInputClass!}" name="password" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('password-confirm',properties.kcFormGroupErrorClass!)}">
                <#--  <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password-confirm" class="${properties.kcLabelClass!}">${msg("passwordConfirm")}</label>
                </div>  -->
                <div class="${properties.kcInputWrapperClass!}">
                    <input required placeholder="${msg("passwordConfirm")}" type="password" id="password-confirm" class="${properties.kcInputClass!}" name="password-confirm" />
                </div>
            </div>
            </#if>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('privacyAccepted',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcInputWrapperClass!} checbkoxGroup">
                    <input
                        required
                        type="checkbox"
                        name="user.attributes.privacyAccepted"
                        id="user.attributes.privacyAccepted"
                        value="true"
                    >
                    <label for="user.attributes.privacyAccepted" style="display: inline">
                        ${msg("UserIndex.register.agreePolicy")?no_esc}
                        <span class="asterisk" title="This is a required field">*</span>
                    </label>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('termsAccepted',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcInputWrapperClass!} checbkoxGroup">
                    <input
                        required
                        type="checkbox"
                        name="user.attributes.termsAccepted"
                        id="user.attributes.termsAccepted"
                        value="true"
                    />
                    <label for="user.attributes.termsAccepted" style="display: inline">
                        ${msg("UserIndex.register.agreeService")?no_esc}
                        <span class="asterisk" title="This is a required field">*</span>
                    </label>
                </div>
            </div>

            <#--  <div class="${properties.kcFormGroupClass!} checbkoxGroup ${messagesPerField.printIfExists('publishEmail',properties.kcFormGroupErrorClass!)}">
                <input
                    type="checkbox"
                    name="user.attributes.publishEmail"
                    id="user.attributes.publishEmail"
                    value="true"
                />
                <label for="user.attributes.publishEmail">
                    ${msg("UserIndex.register.agreeEmail")}
                </label>
            </div>  -->

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('subscribeNewsletter',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcInputWrapperClass!} checbkoxGroup">
                    <input
                        type="checkbox"
                        name="user.attributes.subscribeNewsletter"
                        id="user.attributes.subscribeNewsletter"
                        value="true"
                    />
                    <label for="user.attributes.subscribeNewsletter">
                        ${msg("UserIndex.register.subscribe")}
                    </label>
                </div>
            </div>

            <#if recaptchaRequired??>
            <div class="form-group">
                <div class="${properties.kcInputWrapperClass!}">
                    <div class="g-recaptcha" data-size="compact" data-sitekey="${recaptchaSiteKey}"></div>
                </div>
            </div>
            </#if>

            <div class="${properties.kcFormGroupClass!}">
                <div id="kc-form-options" class="${properties.kcFormOptionsClass!}">
                    <div class="${properties.kcFormOptionsWrapperClass!}">
                        <span><a href="${url.loginUrl}">${msg("backToLogin")?no_esc}</a></span>
                    </div>
                </div>

                <div id="kc-form-buttons" class="${properties.kcFormButtonsClass!}">
                    <input class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" type="submit" value="${msg("doRegister")}"/>
                </div>
            </div>
        </form>        
    </#if>
</@layout.registrationLayout>
