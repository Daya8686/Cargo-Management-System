using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;

namespace CargoManagerSystem.Models;

public class MyIdentityUser:IdentityUser
{
    //public string FullName { get; set; }
    //public DateTime BirthDate { get; set; }

    public bool IsApprove { get; set; }

    
    //public int? CustomerId { get; set; }
   // [ForeignKey("CustomerId")]
   // public Customer Customer { get; set; }
   
}
