﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HotelApp.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class HotelBaseEntities1 : DbContext
    {
        public HotelBaseEntities1()
            : base("name=HotelBaseEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<do_table> do_table { get; set; }
        public virtual DbSet<gender_table> gender_table { get; set; }
        public virtual DbSet<hardware_table> hardware_table { get; set; }
        public virtual DbSet<hotelroom_classes> hotelroom_classes { get; set; }
        public virtual DbSet<hotelrooms> hotelrooms { get; set; }
        public virtual DbSet<journal_table> journal_table { get; set; }
        public virtual DbSet<listresidents> listresidents { get; set; }
        public virtual DbSet<residents> residents { get; set; }
        public virtual DbSet<room_hardware> room_hardware { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<users> users { get; set; }
        public virtual DbSet<users_type> users_type { get; set; }
    }
}
