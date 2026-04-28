<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "header">
        ${msg("loginTitle", (realm.displayName!''))}
    <#elseif section = "form">
        <div id="kc-form" class="tilt-element">
            <div id="kc-form-wrapper">
                <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                    <div class="form-group depth-1">
                        <label for="username" class="depth-2">${msg("usernameOrEmail")}</label>
                        <input id="username" class="depth-2" name="username" value="${(login.username!'')}"  type="text" autofocus autocomplete="off" />
                    </div>

                    <div class="form-group depth-1">
                        <label for="password" class="depth-2">${msg("password")}</label>
                        <input id="password" class="depth-2" name="password" type="password" autocomplete="off" />
                    </div>

                    <div id="kc-form-buttons" class="form-group depth-2">
                        <button name="login" id="kc-login" type="submit">${msg("doLogIn")}</button>
                    </div>
                </form>
            </div>
        </div>

        <#if realm.password && social.providers??>
            <div id="kc-social-providers" class="social-login depth-1">
                <#list social.providers as p>
                    <a href="${p.loginUrl}" class="social-btn depth-2">
                        <span class="kc-social-icon-${p.alias}"></span>
                        <span class="kc-social-provider-name">${p.displayName!}</span>
                    </a>
                </#list>
            </div>
        </#if>
    </#if>
</@layout.registrationLayout>
