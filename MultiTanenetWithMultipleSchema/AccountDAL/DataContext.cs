using MultiTanenetWithMultipleSchema.Models;
using MultiTanenetWithMultipleSchema.SystemDAL;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace MultiTanenetWithMultipleSchema.AccountDAL
{
    public class DataContext : DbContext
    {
        public DataContext() : base("accountContext")
        {
            Database.SetInitializer<DataContext>(null);
        }

        public DbSet<Account> Accounts { get; set; }
        public DbSet<AspNetUsers> Users { get; set; }

        //protected override void OnModelCreating(DbModelBuilder modelBuilder)
        //{
        //    //var currentTenant = TanentConfiguration.GetCurrentTenantId();
        //    var currentTanent = "abc";
        //    modelBuilder.Types().Configure(x =>
        //    {
        //        x.ToTable(x.ClrType.Name, currentTanent);
        //    });

        //    base.OnModelCreating(modelBuilder);
        //}
    }
}