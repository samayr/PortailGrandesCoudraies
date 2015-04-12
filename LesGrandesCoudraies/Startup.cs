using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LesGrandesCoudraies.Startup))]
namespace LesGrandesCoudraies
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
