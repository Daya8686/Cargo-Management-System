using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace CargoManagerSystem.Models
{
    public class RegisterViewModel
    {
        [Required] //all this are properties of register view model
        public string UserName { get; set; }
        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }
        [Required]
        [DataType(DataType.Password)]
        public string ConfirmPassword { get; set; }
        [Required]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
        //[Required]
        //public string FullName { get; set; }
        //[Required]
        //[DataType(DataType.Date)]
        //public DateTime BirthDate { get; set; }
        [Required]
        public bool IsApprove { get; set; }
       
       
    }
}
