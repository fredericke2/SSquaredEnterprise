using BusinessLogic;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

builder.Services.AddScoped<IEmployeeService, EmployeeService>();
builder.Services.AddScoped<IRoleService, RoleService>();

var configuration = new ConfigurationBuilder().AddJsonFile("appsettings.json").Build();
builder.Services.AddDbContext<Adapters.Ef.EfModels.SsquaredEnterpriseContext>(options =>
    options.UseSqlServer(configuration.GetConnectionString("SSquaredEnterprise"), providerOptions =>
    {
        providerOptions.CommandTimeout(300);
        providerOptions.EnableRetryOnFailure();
    }
));
var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Home}/{action=Index}/{id?}");

app.Run();
