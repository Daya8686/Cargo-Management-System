using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace CargoManagerSystem.Models
{
    public class State
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.Identity)]  //PRIMARY KEY
             public int StateId { get; set; }   //STATEID IS PRIMARY KEY


        [Required(ErrorMessage ="State is Mandatory Field")]  //REQUIRED FELD
            public string StateName { get; set; } //ITS A PROPERTY


         //public ICollection<City> Cities { get; set; }  // Commented after migration

    }
}
