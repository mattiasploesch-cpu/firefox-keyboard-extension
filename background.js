browser.runtime.onMessage.addListener((message, sender) => {
    if (message.action === "openTabliss") {
        browser.tabs.create({
            url: "https://web.tabliss.io",
            active: true,
            index: sender.tab ? sender.tab.index + 1 : undefined
        });
    } else if (message.action === "closeTab") {
        if (sender.tab) {
            browser.tabs.remove(sender.tab.id);
        }
    }
});
