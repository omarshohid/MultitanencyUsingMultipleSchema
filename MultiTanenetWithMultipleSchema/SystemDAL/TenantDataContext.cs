using MultiTanenetWithMultipleSchema.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Web;

namespace MultiTanenetWithMultipleSchema.SystemDAL
{
    public class TenantDataCtx : DbContext, IDbModelCacheKeyProvider
    {
        #region Construction

        public static TenantDataCtx Create(string tanent) //string databaseServer, string databaseName, string databaseUserName, string databasePassword, Guid tenantId
        {
            //var connectionStringBuilder = new System.Data.SqlClient.SqlConnectionStringBuilder();
            //connectionStringBuilder.DataSource = databaseServer;
            //connectionStringBuilder.InitialCatalog = databaseName;
            //connectionStringBuilder.UserID = databaseUserName;
            //connectionStringBuilder.Password = databasePassword;

            var connectionStringBuilder = new System.Data.SqlClient.SqlConnectionStringBuilder();
            connectionStringBuilder.DataSource = "SCIBDDHKICT22\\SQLEXPRESS";
            connectionStringBuilder.InitialCatalog = "Company1";
            connectionStringBuilder.UserID = "sa";
            connectionStringBuilder.Password = "sapassword";

            string connectionString = connectionStringBuilder.ToString();
            return new TenantDataCtx(connectionString, tanent);
        }

        // Used for EF migrations
        public TenantDataCtx()
        {
            Database.SetInitializer<TenantDataCtx>(null);
        }

        internal TenantDataCtx(string connectionString, string tenant) //Guid tenantId
            : base(connectionString)
        {
            Database.SetInitializer<TenantDataCtx>(null);
            this.SchemaName = tenant; //tenantId.ToString("D");
        }

        public string SchemaName { get; private set; }

        #endregion

        #region DataSet Properties

        public DbSet<Job> Job { get { return this.Set<Job>(); } }

        #endregion

        #region Overrides

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            if (this.SchemaName != null)
            {
                modelBuilder.HasDefaultSchema(this.SchemaName);
            }

            base.OnModelCreating(modelBuilder);
        }

        #endregion

        #region IDbModelCacheKeyProvider Members

        public string CacheKey
        {
            get { return this.SchemaName; }
        }

        #endregion
    }
}