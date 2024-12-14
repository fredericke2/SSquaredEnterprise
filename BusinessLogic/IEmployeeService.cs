using Adapters.Ef.EfModels;
using Adapters.Ef.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public interface IEmployeeService
    {
        Task<List<Employee>> GetAllEmployeeAsync(int managerId);
        Task<Employee> GetEmployeeByIdAsync(int id);
        Task<List<Employee>> GetAllManagersAsync();
        Task SaveEmployee(EmployeeModel model);
    }
}
