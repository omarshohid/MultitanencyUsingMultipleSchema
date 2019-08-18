namespace MultiTanenetWithMultipleSchema.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AspNetUsers : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "Database", c => c.String());
            AddColumn("dbo.AspNetUsers", "AccountId", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "AccountId");
            DropColumn("dbo.AspNetUsers", "Database");
        }
    }
}
