using Adapters.Ef.EfModels;

namespace S_SquaredEnterprise.Models
{
    public class IndexModel
    {
        public List<Employee> Employees { get; set; }
        public List<Employee> Managers { get; set; }
        public int ManagerId { get; set; }
    }
}
