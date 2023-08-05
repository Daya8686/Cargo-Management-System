using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using CargoManagerSystem.Models;


namespace CargoManagerSystem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CustomersController : ControllerBase
    {
        private readonly MyCargoDBContext _context;

        public CustomersController(MyCargoDBContext context)
        {
            _context = context;
        }

        // GET: api/Customers
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Customer>>> GetCustomers()
        {
          if (_context.Customers == null)
          {
              return NotFound();
          }
            return await _context.Customers.ToListAsync();
        }

        // GET: api/Customers/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Customer>> GetCustomer(int id)
        {
          if (_context.Customers == null)
          {
              return NotFound();
          }
            var customer = await _context.Customers.FindAsync(id);

            if (customer == null)
            {
                return NotFound();
            }

            return customer;
        }
        //GET: api/Customer/name
        [HttpGet]
        [Route("/GetCustomerName/{name}")]
        public async Task<ActionResult<IEnumerable<Customer>>> GetCustomerByName(string name)
        {
            if (_context.Customers == null)
            {
                return NotFound();
            }

            return await _context.Customers.Where(c => c.CustomerName == name).ToListAsync();
        }

        [HttpGet]
        [Route("/GetCustomerEmail/{email}")]
        public async Task<ActionResult<IEnumerable<Customer>>> GetCustomerByEmail(string email)
        {
            if (_context.Customers == null)
            {
                return NotFound();
            }

            return await _context.Customers.Where(c => c.CustomerEmail == email).ToListAsync();
        }
        [HttpGet]
        [Route("/GetCustomerPhone/{phone}")]
        public async Task<ActionResult<IEnumerable<Customer>>> GetCustomerByPhone(string phone)
        {
            if (_context.Customers == null)
            {
                return NotFound();
            }

            return await _context.Customers.Where(c => c.CustomerPhone == phone).ToListAsync();
        }

        [HttpGet]
        [Route("/GetCustomerZip/{zip}")]
        public async Task<ActionResult<IEnumerable<Customer>>> GetCustomerByZip(int zip)
        {
            if (_context.Customers == null)
            {
                return NotFound();
            }

            return await _context.Customers.Where(c => c.CustomerZip == zip).ToListAsync();
        }
        [HttpGet]
        [Route("/GetCustomerCityId/{cityid}")]
        public async Task<ActionResult<IEnumerable<Customer>>> GetCustomerByCityId(int cityid)
        {
            if (_context.Customers == null)
            {
                return NotFound();
            }

            return await _context.Customers.Where(c => c.CityId == cityid).ToListAsync();
        }




        [HttpGet]
        [Route("/GetCustomerCityName/{cityname}")]
        public List<Customer> GetAllCustomerByCityName(string cityname)
        {
            List<Customer> custList = new List<Customer>();
            var query = (from p in _context.Customers
                         join s in _context.Cities
                         on p.CityId equals s.CityId
                         where s.CityName == cityname
                         select p);
            foreach (var item in query)
            {
                custList.Add(item);
            }
            return custList;
        }




        [HttpGet]
        [Route("/GetCustomerStateName/{statename}")]
        public List<Customer> GetAllEmployeesBystateName(string statename)
        {
            List<Customer> custList = new List<Customer>();

            var csts = from e in _context.Customers
                            join c in _context.Cities on e.CityId equals c.CityId
                            join s in _context.States on c.StateId equals s.StateId
                            where s.StateName == statename
                            select e;

            foreach (var item in csts)
            {
                custList.Add(item);
            }
            return custList;
        }












        // PUT: api/Customers/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
            public async Task<IActionResult> PutCustomer(int id, Customer customer)
        {
            if (id != customer.CustomerId)
            {
                return BadRequest();
            }

            _context.Entry(customer).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!CustomerExists(id))
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

        // POST: api/Customers
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Customer>> PostCustomer(Customer customer)
        {
          if (_context.Customers == null)
          {
              return Problem("Entity set 'MyCargoDBContext.Customers'  is null.");
          }
            _context.Customers.Add(customer);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetCustomer", new { id = customer.CustomerId }, customer);
        }

        // DELETE: api/Customers/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteCustomer(int id)
        {
            if (_context.Customers == null)
            {
                return NotFound();
            }
            var customer = await _context.Customers.FindAsync(id);
            if (customer == null)
            {
                return NotFound();
            }

            _context.Customers.Remove(customer);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool CustomerExists(int id)
        {
            return (_context.Customers?.Any(e => e.CustomerId == id)).GetValueOrDefault();
        }
    }
}
