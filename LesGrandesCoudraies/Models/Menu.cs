//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LesGrandesCoudraies.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Menu
    {
        public Menu()
        {
            this.Article = new HashSet<Article>();
        }
    
        public int Id { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }
    
        public virtual ICollection<Article> Article { get; set; }
    }
}
