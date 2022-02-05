using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFProject
{
    public class EfDbContext : DbContext
    {
        public EfDbContext() : base("educEntities")
        {

        }

        public DbSet<User> Users { get; set; }
    }
}
