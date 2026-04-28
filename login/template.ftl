<#macro registrationLayout displayInfo=false displayMessage=true>
<!DOCTYPE html>
<html class="${properties.kcHtmlClass!}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${msg("loginTitle",(realm.displayName!''))}</title>
    
    <link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />
    
    <#if properties.styles?has_content>
        <#list properties.styles?split(' ') as style>
            <link href="${url.resourcesPath}/${style}" rel="stylesheet" />
        </#list>
    </#if>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
</head>

<body>
    <canvas id="three-canvas"></canvas>
    
    <div class="login-container">
        <div class="glow-effect"></div>
        
        <div class="login-left">
            <div class="logo-container floating">
                <img src="${url.resourcesPath}/images/jakson-green-logo.svg" alt="Jakson Green">
            </div>
            <h1 class="depth-3">Welcome to PMO Portal</h1>
            <p class="depth-2" style="color: rgba(255,255,255,0.6);">Manage your solar projects with precision and insight.</p>
        </div>
        
        <div class="login-right">
            <div class="logo-container">
                <img src="${url.resourcesPath}/images/endrgxiq-logo.svg" alt="Endrgxiq">
            </div>
            <#nested "form">
        </div>
    </div>

    <#if properties.scripts?has_content>
        <#list properties.scripts?split(' ') as script>
            <script src="${url.resourcesPath}/${script}" type="text/javascript"></script>
        </#list>
    </#if>
</body>
</html>
</#macro>
