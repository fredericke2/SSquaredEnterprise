using Adapters.Ef.EfModels;
using Adapters.Ef.Model;
using BusinessLogic;
using Microsoft.AspNetCore.Mvc;
using S_SquaredEnterprise.Models;
using System.Diagnostics;

namespace S_SquaredEnterprise.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IEmployeeService _employeeService;
        private readonly IRoleService _roleService;

        public HomeController(ILogger<HomeController> logger, IEmployeeService employeeService, IRoleService roleService)
        {
            _logger = logger;
            _employeeService = employeeService;
            _roleService = roleService;
        }

        public async Task<IActionResult> Index([FromQuery] IndexModel modelreq)
        {
            var model = new IndexModel();
            model.Employees = await _employeeService.GetAllEmployeeAsync(modelreq.ManagerId);
            model.Managers = await _employeeService.GetAllManagersAsync();
            return View(model);
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        [HttpGet]
        public async Task<IActionResult> AddEmployee()
        {
            var model = new AddEmployeeModel();
            model.Employees = await _employeeService.GetAllEmployeeAsync(0);
            model.Managers = await _employeeService.GetAllManagersAsync();
            model.Roles = await _roleService.GetAllRolesAsync();
            return View(model);
        }

        [HttpPost]
        public async Task<IActionResult> AddEmployee(AddEmployeeModel model)
        {
            var employee = new EmployeeModel
            {
                EmployeeId = model.EmployeeId,
                FirstName = model.Firstname,
                LastName = model.Lastname,
                ManagerId = model.ManagerId,
                EmployeeRoleIds = model.RoleIds,
            };

            await _employeeService.SaveEmployee(employee);
            return RedirectToAction("Index");
        }
    }
}
