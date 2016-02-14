System.register(['angular2/platform/browser', './components/app.copyright', './components/app.version', './components/app.index.banner'], function(exports_1) {
    var browser_1, app_copyright_1, app_version_1, app_index_banner_1;
    return {
        setters:[
            function (browser_1_1) {
                browser_1 = browser_1_1;
            },
            function (app_copyright_1_1) {
                app_copyright_1 = app_copyright_1_1;
            },
            function (app_version_1_1) {
                app_version_1 = app_version_1_1;
            },
            function (app_index_banner_1_1) {
                app_index_banner_1 = app_index_banner_1_1;
            }],
        execute: function() {
            browser_1.bootstrap(app_copyright_1.CopyRightComponent);
            browser_1.bootstrap(app_version_1.VersionComponent);
            browser_1.bootstrap(app_index_banner_1.CarouselComponent);
        }
    }
});
//# sourceMappingURL=index.js.map