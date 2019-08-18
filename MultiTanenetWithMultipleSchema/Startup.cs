using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MultiTanenetWithMultipleSchema.Startup))]
namespace MultiTanenetWithMultipleSchema
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
