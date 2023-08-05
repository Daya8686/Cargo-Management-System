using CargoManagerSystem.Models;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CargoManagerSystem.Models
{
    public class Customer
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CustomerId { get; set; }



        [Required(ErrorMessage = "Name is Mandatory")]
        public string CustomerName { get; set; }


        [Required(ErrorMessage="Email Can't be empty")]
        [EmailAddress(ErrorMessage ="Email is not Valid")]
        public string CustomerEmail { get; set;}


        [Required(ErrorMessage ="Phone number is mandatory")]
        [Phone(ErrorMessage ="Must be 10 Digits")]
        public string CustomerPhone { get; set;}



        [Required(ErrorMessage ="Address Field can't be blank")]
        [MinLength(15,ErrorMessage ="Address can't be less then 15 characters ")]
        [MaxLength(60, ErrorMessage = "Address can't be More then 60 characters")]
        public string CustomerAddress { get;set;}



        [Required(ErrorMessage ="Pincode is Requried")]
        public int CustomerZip { get;set;}


       

        public int CityId { get; set; }
        

        //public city city{get;set;}



        //public string RegisterId { get; set; }
    }
}
