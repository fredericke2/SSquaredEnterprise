using Adapters.Ef.EfModels;

namespace S_SquaredEnterprise.Models
{
    public class AddEmployeeModel
    {
        public List<Employee> Employees { get; set; }
        public List<Employee> Managers { get; set; }
        public List<Role> Roles { get; set; }
        public int ManagerId { get; set; }
        public string EmployeeId { get; set; }
        public string Firstname { get; set; }
        public string Lastname { get; set; }
        public List<int> RoleIds { get; set; }
    }
}
