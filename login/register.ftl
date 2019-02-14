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
                    <input type="text" id="username" class="${properties.kcInputClass!}" name="username" value="${(register.formData.username!'')}" />
                </div>
            </div>
          </#if>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('firstName',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="firstName" class="${properties.kcLabelClass!}">${msg("firstName")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="firstName" class="${properties.kcInputClass!}" name="firstName" value="${(register.formData.firstName!'')}" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('lastName',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="lastName" class="${properties.kcLabelClass!}">${msg("lastName")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="lastName" class="${properties.kcInputClass!}" name="lastName" value="${(register.formData.lastName!'')}" />
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

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('country',properties.kcFormGroupErrorClass!)}">
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
                        <option value="DE">De</option>
                        <option value="FR">Fr</option>
                    </select>
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('email',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="email" class="${properties.kcLabelClass!}">${msg("email")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="text" id="email" class="${properties.kcInputClass!}" name="email" value="${(register.formData.email!'')}" />
                </div>
            </div>

            <#if passwordRequired>
            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('password',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password" class="${properties.kcLabelClass!}">${msg("password")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password" class="${properties.kcInputClass!}" name="password" />
                </div>
            </div>

            <div class="${properties.kcFormGroupClass!} ${messagesPerField.printIfExists('password-confirm',properties.kcFormGroupErrorClass!)}">
                <div class="${properties.kcLabelWrapperClass!}">
                    <label for="password-confirm" class="${properties.kcLabelClass!}">${msg("passwordConfirm")}</label>
                </div>
                <div class="${properties.kcInputWrapperClass!}">
                    <input type="password" id="password-confirm" class="${properties.kcInputClass!}" name="password-confirm" />
                </div>
            </div>
            </#if>

            <div class="${properties.kcFormGroupClass!} checbkoxGroup ${messagesPerField.printIfExists('privacyAccepted',properties.kcFormGroupErrorClass!)}">
                <input
                    required
                    type="checkbox"
                    name="user.attributes.privacyAccepted"
                    id="user.attributes.privacyAccepted"
                    value="true"
                >
                <label for="user.attributes.privacyAccepted">
                    <span>
                        By r/egistering, I agree to the terms of the privacy policy. I specifically agree to publish the information I provide, except for my password, which will be stored securely. Your activities within OER World Map will also be stored and processed for the purpose of improving the service as well as to prove your consent to specific activities
                        <span class="asterisk" title="This is a required field">*</span>
                    </span>
                </label>
            </div>

            <div class="${properties.kcFormGroupClass!} checbkoxGroup ${messagesPerField.printIfExists('termsAccepted',properties.kcFormGroupErrorClass!)}">
                <input
                    required
                    type="checkbox"
                    name="user.attributes.termsAccepted"
                    id="user.attributes.termsAccepted"
                    value="true"
                />
                <label for="user.attributes.termsAccepted">
                    <span>
                        I also agree to the Terms of the service. Especially, I will ensure, that no rights of others are violated by me publishing information through OER World Map. This includes the privacy and copyrights of others.
                        <span class="asterisk" title="This is a required field">*</span>
                    </span>
                </label>
            </div>

            <div class="${properties.kcFormGroupClass!} checbkoxGroup ${messagesPerField.printIfExists('publishEmail',properties.kcFormGroupErrorClass!)}">
                <input
                    type="checkbox"
                    name="user.attributes.publishEmail"
                    id="user.attributes.publishEmail"
                    value="true"
                />
                <label for="user.attributes.publishEmail">
                    I agree to having my email-address published as part of my profile
                </label>
            </div>

            <div class="${properties.kcFormGroupClass!} checbkoxGroup ${messagesPerField.printIfExists('subscribeNewsletter',properties.kcFormGroupErrorClass!)}">
                <input
                    type="checkbox"
                    name="user.attributes.subscribeNewsletter"
                    id="user.attributes.subscribeNewsletter"
                    value="true"
                />
                <label for="user.attributes.subscribeNewsletter">
                    I want to subscribe to the OER World Map Newsletter
                </label>
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