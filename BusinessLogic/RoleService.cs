using Adapters.Ef.EfModels;
using Microsoft.EntityFrameworkCore;

namespace BusinessLogic
{
    public class RoleService : IRoleService
    {
        private readonly SsquaredEnterpriseContext _conn;
        public RoleService(SsquaredEnterpriseContext conn)
        {
            _conn = conn;
        }

        public async Task<List<Role>> GetAllRolesAsync()
        {
            var roles = await _conn.Roles.ToListAsync();
            return roles;
        }

    }
}
