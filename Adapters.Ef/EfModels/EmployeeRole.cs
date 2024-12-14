using System;
using System.Collections.Generic;

namespace Adapters.Ef.EfModels;

public partial class EmployeeRole
{
    public long Id { get; set; }

    public long EmployeeId { get; set; }

    public int RoleId { get; set; }

    public virtual Employee Employee { get; set; } = null!;

    public virtual Role Role { get; set; } = null!;
}
