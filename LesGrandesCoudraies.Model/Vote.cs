//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LesGrandesCoudraies.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Vote
    {
        public int Id { get; set; }
        public int ContributionId { get; set; }
        public int UserId { get; set; }
        public string Rate { get; set; }
    
        public virtual Contribution Contribution { get; set; }
        public virtual User User { get; set; }
    }
}
