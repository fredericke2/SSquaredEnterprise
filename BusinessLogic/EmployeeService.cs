using Adapters.Ef.EfModels;
using Adapters.Ef.Model;
using Microsoft.EntityFrameworkCore;

namespace BusinessLogic
{
    public class EmployeeService : IEmployeeService
    {
        private readonly SsquaredEnterpriseContext _conn;
        public EmployeeService(SsquaredEnterpriseContext conn)
        { 
            _conn = conn;
        }

        public async Task<List<Employee>> GetAllEmployeeAsync(int managerId)
        {
            var employees = await _conn.Employees.Where(e => managerId == 0 || e.ManagerId == managerId).ToListAsync();
            return employees;
        }

        public async Task<Employee> GetEmployeeByIdAsync(int id)
        {
            var employee = await _conn.Employees.FirstOrDefaultAsync(e => e.Id == id);
            return employee;
        }

        public async Task<List<Employee>> GetAllManagersAsync()
        {
            var managers = await _conn.Employees.Include(e => e.Manager).Where(e => e.Manager != null).Select(s => s.Manager).Distinct().ToListAsync();
            return managers;
        }

        public async Task SaveEmployee(EmployeeModel model)
        {
            if (!string.IsNullOrEmpty(model.FirstName) && !string.IsNullOrEmpty(model.LastName) && !string.IsNullOrEmpty(model.EmployeeId))
            {
                var employee = new Employee()
                {
                    EmployeeId = model.EmployeeId,
                    ManagerId = model.ManagerId == 0 ? null : model.ManagerId,
                    FirstName = model.FirstName,
                    LastName = model.LastName
                };
                await _conn.Employees.AddAsync(employee);
                await _conn.SaveChangesAsync();

                await InsertEmployeeRole(employee.Id, model.EmployeeRoleIds);
            }
        }

        private async Task InsertEmployeeRole(long employeeId, List<int> roleIds)
        {
            var bulkEmployeeRoleInsert = new List<EmployeeRole>();

            if (roleIds != null && roleIds.Any())
            {
                var existingRoles = await _conn.Roles.Select(r => r.Id).ToListAsync();
                foreach (var role in roleIds)
                {
                    if (existingRoles.Contains(role))
                    {
                        bulkEmployeeRoleInsert.Add(new EmployeeRole
                        {
                            EmployeeId = employeeId,
                            RoleId = role
                        });
                    }
                }
                await _conn.EmployeeRoles.AddRangeAsync(bulkEmployeeRoleInsert);
                await _conn.SaveChangesAsync();
            }
        }
    }
}
