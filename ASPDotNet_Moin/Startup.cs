using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ASPDotNet_Moin.Startup))]
namespace ASPDotNet_Moin
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
