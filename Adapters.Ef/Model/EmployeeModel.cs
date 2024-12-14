using Adapters.Ef.EfModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Adapters.Ef.Model
{
    public class EmployeeModel
    {
        public string EmployeeId { get; set; }
        public string FirstName { get; set; } = null!;

        public string LastName { get; set; } = null!;

        public long? ManagerId { get; set; }

        public List<int> EmployeeRoleIds { get; set; } = new List<int>();
    }
}
