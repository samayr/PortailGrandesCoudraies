var Article = (function () {
    function Article(data) {
        this.Title = ko.observable("");
        this.Summary = ko.observable("");
        this.Content = ko.observable("");
        this.Id = data["Id"];
        this.Counter = data["Counter"];
        this.Class = data["Class"];
        this.Title = data["Title"];
        this.Summary = data["Summary"];
        this.Content = data["Content"];
    }
    return Article;
})();
//# sourceMappingURL=Article.js.map
