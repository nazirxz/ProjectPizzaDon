﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ProjectDonPizza
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PizzaDonEntities2 : DbContext
    {
        public PizzaDonEntities2()
            : base("name=PizzaDonEntities2")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<pelanggan> pelanggans { get; set; }
        public virtual DbSet<Pembayaran> Pembayarans { get; set; }
        public virtual DbSet<pizza> pizzas { get; set; }
        public virtual DbSet<ukuran> ukurans { get; set; }
    }
}
