using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using CargoManagerSystem.Models;
using System.Numerics;


namespace CargoManagerSystem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CargoOrderDetailsController : ControllerBase
    {
        private readonly MyCargoDBContext _context;

        public CargoOrderDetailsController(MyCargoDBContext context)
        {
            _context = context;
        }


        //[HttpPost]
        //public async Task<ActionResult<CustomerOrderVM>> AddCustomerOrder([FromBody] CustomerOrderVM fm)
        //{
        //    try
        //    {
        //        if (fm != null)
        //        {
        //            Customer actObj = _context.Customers.FirstOrDefault(e => e.CustomerId == fm.UserId);
        //           // Customer obj = new Customer();
        //            //obj.CustomerId = fm.UserId;
        //           actObj.CustomerName = fm.UserName;
        //            actObj.CustomerPhone = fm.CustomerPhone;
        //            actObj.CustomerZip = fm.CustomerZip;
        //            actObj.CustomerEmail = fm.CustomerEmail;
                    
        //           // actObj.CustomerAddress=fm.
        //          // _context.Customers.Add(actObj);//Adding Customer details to customer Table


        //            CargoOrderDetails obj1 = new CargoOrderDetails();
        //            obj1.CargoorderId = 0;
        //            obj1.CargoWeight = fm.CargoWeight;
        //            obj1.Quantity = fm.Quantity;
        //            obj1.ToCity = fm.ToCity;
        //            obj1.FromCity = fm.FromCity;
        //            obj1.CargoorderDate = fm.CargoorderDate;
                   
                    

        //            _context.CargoOderDetails.Add(obj1); 
                                       
        //            await _context.SaveChangesAsync(); //commiting changes to server
        //            return Ok();
        //        }
        //        else
        //        {
        //            return NotFound();
        //        }
        //    }
        //    catch (Exception ex)
        //    {
        //        return BadRequest(ex.Message);
        //    }
        //}




        // GET: api/CargoOrderDetails
        [HttpGet]
        public async Task<ActionResult<IEnumerable<CargoOrderDetails>>> GetCargoOrders()
        {
            if (_context.CargoOderDetails == null)
            {
                return NotFound();
            }
            return await _context.CargoOderDetails.ToListAsync();
        }

        //public async Task<ActionResult<IEnumerable<CargoOrderDetails>>> GetCargoOderDetails()
        //{
        //    if (_context.CargoOderDetails == null)
        //    {
        //        return NotFound();
        //    }
        //    List<CargoOrderDetails> cargoList = new List<CargoOrderDetails>();
        //    var result = from cargo in _context.CargoOderDetails
        //                 select new
        //                 {
        //                     cargo.CargoorderId,
        //                     cargoDate = cargo.CargoorderDate.ToShortDateString(),
        //                     cargo.FromCity,
        //                     cargo.ToCity,
        //                     cargo.Quantity,
        //                     cargo.Amount
        //                 };
        //    foreach (var item in result)
        //    {
        //        CargoOrderDetails obj = new CargoOrderDetails();
        //        obj.CargoorderId = item.CargoorderId;
        //        obj.CargoorderDate = Convert.ToDateTime(item.cargoDate);
        //        obj.FromCity = item.FromCity;
        //        obj.ToCity = item.ToCity;
        //        obj.Quantity = item.Quantity;
        //        obj.Amount = item.Amount;

        //        cargoList.Add(obj);
        //    }
        //    return cargoList;
        //return /*await _context.CargoOderDetails.ToListAsync()*/;
        // }

        // GET: api/CargoOrderDetails/5
        [HttpGet("{id}")]
        public async Task<ActionResult<CargoOrderDetails>> GetCargoOrderDetails(int id)
        {
            if (_context.CargoOderDetails == null)
            {
                return NotFound();
            }
            var cargoOrderDetails = await _context.CargoOderDetails.FindAsync(id);

            if (cargoOrderDetails == null)
            {
                return NotFound();
            }

            return cargoOrderDetails;
        }

        // PUT: api/CargoOrderDetails/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutCargoOrderDetails(int id, CargoOrderDetails cargoOrderDetails)
        {
            if (id != cargoOrderDetails.CargoorderDetailsId)
            {
                return BadRequest();
            }

            _context.Entry(cargoOrderDetails).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CargoOrderDetailsExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        //POST: api/CargoOrderDetails
        //To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<CargoOrderDetails>> PostCargoOrderDetails(CargoOrderDetails cargoOrderDetails)
        {
            
            if (_context.CargoOderDetails == null)
            {
                return Problem("Entity set 'MyCargoDBContext.CargoOderDetails'  is null.");
            }
            _context.CargoOderDetails.Add(cargoOrderDetails);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetCargoOrderDetails", new { id = cargoOrderDetails.CargoorderDetailsId }, cargoOrderDetails);
        }

        //[HttpPost]
        //public async Task<ActionResult<CargoOrderDetails>> PostCargoOrderDetails(CargoOrderDetails cargoOrderDetails)
        //{
        //    // Extract data for CargoOrderDetails table
        //    var cargoOrderDetailsData = new CargoOrderDetails
        //    {
        //        CargoorderDetailsId = cargoOrderDetails.CargoorderDetailsId,
        //        CargoorderDate = cargoOrderDetails.CargoorderDate,
        //        Amount = cargoOrderDetails.Amount,
        //        Quantity = cargoOrderDetails.Quantity,
        //        status = cargoOrderDetails.status,
        //        ToCity = cargoOrderDetails.ToCity,
        //        FromCity = cargoOrderDetails.FromCity,
        //        CargoorderId = cargoOrderDetails.CargoorderId,
        //    };

        //    // Save data to CargoOrderDetails table
        //    if (_context.CargoOderDetails == null)
        //    {
        //        return Problem("Entity set 'MyCargoDBContext.CargoOderDetails' is null.");
        //    }
        //    _context.CargoOderDetails.Add(cargoOrderDetailsData);
        //    await _context.SaveChangesAsync();

        //    // Extract data for CargoOrder table
        //    var cargoOrder = new CargoOrder
        //    {
        //        CargoorderId = cargoOrderDetails.CargoorderId,
        //        CustomerId = cargoOrderDetails.Customer_Id,
        //        CargoCategoryId = cargoOrderDetails.CargoCategoryId
        //    };

            // Save data to CargoOrder table
        //    if (_context.CargoOrders == null)
        //    {
        //        return Problem("Entity set 'MyCargoDBContext.CargoOrder' is null.");
        //    }
        //    _context.CargoOrders.Add(cargoOrder);
        //    await _context.SaveChangesAsync();

        //    return CreatedAtAction("GetCargoOrderDetails", new { id = cargoOrderDetailsData.CargoorderDetailsId }, cargoOrderDetailsData);
        //}

        // DELETE: api/CargoOrderDetails/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCargoOrderDetails(int id)
        {
            if (_context.CargoOderDetails == null)
            {
                return NotFound();
            }
            var cargoOrderDetails = await _context.CargoOderDetails.FindAsync(id);
            if (cargoOrderDetails == null)
            {
                return NotFound();
            }

            _context.CargoOderDetails.Remove(cargoOrderDetails);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CargoOrderDetailsExists(int id)
        {
            return (_context.CargoOderDetails?.Any(e => e.CargoorderDetailsId == id)).GetValueOrDefault();
        }
    }
}