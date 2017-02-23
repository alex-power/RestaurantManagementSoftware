using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(RestaurantManagement.Startup))]
namespace RestaurantManagement
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
