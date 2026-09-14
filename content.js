window.addEventListener('keydown', function(e) {
    if (e.ctrlKey && e.key.toLowerCase() === 't') {
        e.preventDefault();
        e.stopPropagation();
        browser.runtime.sendMessage({ action: "openTabliss" });
    }
    
    if (e.ctrlKey && e.key.toLowerCase() === 'r') {
        e.preventDefault();
        window.location.reload();
    }
    
    if (e.ctrlKey && e.key.toLowerCase() === 'w') {
        e.preventDefault();
        browser.runtime.sendMessage({ action: "closeTab" });
    }
}, true);
