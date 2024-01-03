using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Excel_Upload.Startup))]
namespace Excel_Upload
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
