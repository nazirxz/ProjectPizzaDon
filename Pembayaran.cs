//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class Pembayaran
    {
        public int Id { get; set; }
        public int id_pelanggan { get; set; }
        public Nullable<int> id_pizza { get; set; }
        public string nama_pizza { get; set; }
        public string ukuran_pizza { get; set; }
        public string topping_pizza { get; set; }
        public string jumlah_pizza { get; set; }
        public string harga_pizza { get; set; }
    
        public virtual pelanggan pelanggan { get; set; }
        public virtual pizza pizza { get; set; }
    }
}