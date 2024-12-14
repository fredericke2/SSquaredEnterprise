﻿using Adapters.Ef.EfModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogic
{
    public interface IRoleService
    {
        Task<List<Role>> GetAllRolesAsync();
    }
}
