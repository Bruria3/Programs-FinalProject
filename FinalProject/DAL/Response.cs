//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Response
    {
        public int RSid { get; set; }
        public int RSprogramId { get; set; }
        public int RSuserId { get; set; }
        public string RSdescription { get; set; }
        public bool RSshown { get; set; }
    
        public virtual Program Program { get; set; }
        public virtual User User { get; set; }
    }
}
