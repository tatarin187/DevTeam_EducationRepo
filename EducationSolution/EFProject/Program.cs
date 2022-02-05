using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EFProject
{
    class Program
    {
        static void Main(string[] args)
        {
            using (EfDbContext db = new EfDbContext())
            {
                var users = db.Users;
                foreach (User u in users)
                    Console.WriteLine("{0}.{1} - {2}", u.Id, u.FirstName, u.LastName);
            }
        }
    }
}
