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
    
    <div class="top-bar">
        <div class="logo-left">
            <img src="${url.resourcesPath}/images/jakson-green-logo.svg" alt="Jakson Green">
        </div>
        <div class="logo-right">
            <img src="${url.resourcesPath}/images/endrgxiq-logo.svg" alt="Endrgxiq">
        </div>
    </div>

    <div class="login-container">
        <div class="login-left">
            <div class="pmo-badge">
                <div class="badge-icon">
                    <svg viewBox="0 0 24 24" width="24" height="24"><path fill="currentColor" d="M12,2L4.5,20.29L5.21,21L12,18L18.79,21L19.5,20.29L12,2Z"/></svg>
                </div>
                <span>PMO MASTER ACCESS</span>
            </div>
            <h1 class="depth-3">Precision in<br>Project Management.</h1>
            <p class="depth-2">Access the central hub for Daily Progress Reports, procurement tracking, and cross-functional commissioning for Phase II Infrastructure developments.</p>
        </div>
        
        <div class="login-right">
            <div class="login-card-wrapper tilt-element">
                <div class="card-header-icon">
                    <div class="shield-box">
                        <svg viewBox="0 0 24 24" width="16" height="16"><path fill="currentColor" d="M12,1L3,5V11C3,16.55 6.84,21.74 12,23C17.16,21.74 21,16.55 21,11V5L12,1M12,7C13.4,7 14.8,7.3 16,7.9V11C16,14.3 13.9,17.3 11,18.5C11,18.5 10.9,18.5 10.8,18.4C8,17.2 6,14.2 6,11V7.9C7.2,7.3 8.6,7 10,7H12Z"/></svg>
                    </div>
                </div>
                
                <h2 class="card-title">Log-In</h2>
                <p class="card-subtitle">Industrial Compliance & Safety Management</p>

                <#nested "form">

                <div class="card-footer">
                    <div class="separator">
                        <span>SECURE AREA</span>
                    </div>
                    <div class="footer-shield">
                        <svg viewBox="0 0 24 24" width="20" height="20" fill="none" stroke="currentColor" stroke-width="1"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/></svg>
                    </div>
                </div>
            </div>
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
