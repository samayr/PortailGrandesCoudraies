class ArticleViewModel {

    public articles = ko.observableArray<Article>();

    public GetIndexArticles() {
        this.articles.push(new Article({
            Id: 1,
            Counter: 0,
            Class: "active",
            Title: "Aménagement Espace vert",
            Summary: "Définition de l'état des arbres pour abatage et remplacement",
        }));
        this.articles.push(new Article({
            Id: 2,
            Counter: 1,
            Class: "",
            Title: "Aménagement des parkings",
            Summary: "Redécoupage des places de parking",
        }));
    }
} 