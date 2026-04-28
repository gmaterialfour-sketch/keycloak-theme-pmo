<#import "template.ftl" as layout>
<@layout.registrationLayout displayInfo=social.displayInfo; section>
    <#if section = "header">
        ${msg("loginTitle", (realm.displayName!''))}
    <#elseif section = "form">
        <div id="kc-form">
            <div id="kc-form-wrapper">
                <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
                    <div class="form-group">
                        <label for="username">User Name or Email</label>
                        <input id="username" name="username" value="${(login.username!'')}" type="text" autofocus autocomplete="off" />
                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" name="password" type="password" autocomplete="off" />
                    </div>

                    <div class="form-options">
                        <div class="remember-me">
                            <input type="checkbox" id="rememberMe" name="rememberMe">
                            <label for="rememberMe" style="margin-bottom: 0;">Remember me</label>
                        </div>
                        <a href="${url.loginResetCredentialsUrl}" class="forgot-password">Forgot Password?</a>
                    </div>

                    <div id="kc-form-buttons" class="form-group">
                        <button name="login" id="kc-login" type="submit">Log in</button>
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
