function onWindowClose() {
    Neutralino.app.exit();
}

Neutralino.init();

Neutralino.events.on("windowClose", onWindowClose);
Neutralino.events.on("clientDisconnect", onWindowClose);

window.addEventListener('beforeunload', function (e) {
    onWindowClose();
});
