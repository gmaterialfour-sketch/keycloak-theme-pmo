document.addEventListener('DOMContentLoaded', () => {
    // Splash Screen Logic
    const splash = document.getElementById('splash-screen');
    if (splash) {
        // After 1.5 seconds, transition to phase 2 (unfolding)
        setTimeout(() => {
            splash.classList.add('splash-phase-2');
        }, 1500);

        // After 4 seconds, hide splash screen and reveal login page
        setTimeout(() => {
            splash.classList.add('splash-hidden');
            // Enable scrolling after splash is gone if needed
            document.body.style.overflow = 'auto';
        }, 4000);
    }

    const inputs = document.querySelectorAll('input');
    
    inputs.forEach(input => {
        input.addEventListener('focus', () => {
            input.parentElement.classList.add('focused');
        });
        
        input.addEventListener('blur', () => {
            if (input.value === '') {
                input.parentElement.classList.remove('focused');
            }
        });
    });
    
    const form = document.querySelector('form');
    if (form) {
        form.addEventListener('submit', (e) => {
            const btn = form.querySelector('button');
            btn.innerHTML = 'Signing in...';
            btn.style.opacity = '0.7';
            btn.disabled = true;
        });
    }
});
