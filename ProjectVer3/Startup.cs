using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProjectVer3.Startup))]
namespace ProjectVer3
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
