//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RestaurantManagement
{
    using System;
    using System.Collections.Generic;
    
    public partial class FoodItemOrder
    {
        public int FoodItem_Id { get; set; }
        public int Orders_Id { get; set; }
        public string Note { get; set; }
    
        public virtual FoodItem FoodItem { get; set; }
        public virtual Order Order { get; set; }
    }
}