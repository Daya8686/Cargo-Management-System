using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace CargoManagerSystem.Models
{
    public class MyIdentityDbContext :IdentityDbContext<MyIdentityUser, MyIdentityRole, string>
    {
        public MyIdentityDbContext()
        {

        }
        public MyIdentityDbContext(DbContextOptions<MyIdentityDbContext> options) : base(options)
        {
            //nothing here
        }
        protected override void OnConfiguring(DbContextOptionsBuilder opBldr)
        {
            opBldr.UseSqlServer("server=.\\SQLEXPRESS;Trusted_Connection=True;Database=MyProjectFirstTry;TrustServerCertificate=True");
        }
        //public DbSet<AuthCoreWebAPI.Models.Product> Product { get; set; }

    }
}
