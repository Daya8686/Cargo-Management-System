using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace CargoManagerSystem.Models
{
    public class CargoCategory
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
        public int CargoCategoryId { get; set; }
        [Required(ErrorMessage ="Cargo Category type is Mandatory")]
        public string CargoCategoryType { get; set; }



       // public int CargoorderId { get; set; }
      


        public int CargoPrice { get; set; }
    }
}
