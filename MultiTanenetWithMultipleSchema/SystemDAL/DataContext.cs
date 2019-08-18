using MultiTanenetWithMultipleSchema.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Reflection;
using System.Web;

namespace MultiTanenetWithMultipleSchema.SystemDAL
{
    public class DataContext : DbContext
    {
        public string TanentName { get; set; }
        public DataContext(string database, string schema)
          : base("Data Source=SCIBDDHKICT22\\SQLEXPRESS;Initial Catalog=" + database + ";user id=sa; password=sapassword")
        //Initial Catalog=Accounts;user id=sa; password=sapassword" providerName="System.Data.SqlClient" 
        {
            Database.SetInitializer<DataContext>(null);
            this.TanentName = schema;
            //DbModelBuilder builder = new DbModelBuilder();
            //this.OnModelCreating(builder);
        }

        public DbSet<Job> Jobs { get; set; }


        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
           

            //modelBuilder.Entity<Job>().ToTable("Job", currentTanent);
            //modelBuilder.Types().Configure(x =>
            //{
            //    x.ToTable(x.ClrType.Name, schemaName: this.TanentName);
            //});
            modelBuilder.HasDefaultSchema(this.TanentName);
            //modelBuilder.Entity<Job>().ToTable("Job", this.TanentName);
            base.OnModelCreating(modelBuilder);

            //modelBuilder.Entity<Job>()
            //   .ToTable("Job",);


        }

        
    }
}