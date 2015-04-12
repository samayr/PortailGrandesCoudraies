class Article {
    public Id: number;
    public Counter: number;
    public Class: string;
    public Title = ko.observable("");
    public Summary = ko.observable("");
    public Content = ko.observable("");

    constructor(data) {
        this.Id = data["Id"];
        this.Counter = data["Counter"];
        this.Class = data["Class"];
        this.Title = data["Title"];
        this.Summary = data["Summary"];
        this.Content = data["Content"];
    }
} 