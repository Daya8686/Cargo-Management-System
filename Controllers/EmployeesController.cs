using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using CargoManagerSystem.Models;
using System.Numerics;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory;


namespace CargoManagerSystem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmployeesController : ControllerBase
    {
        private readonly MyCargoDBContext _context;

        public EmployeesController(MyCargoDBContext context)
        {
            _context = context;
        }

        // GET: api/Employees
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Employee>>> GetEmployees()
        {
          if (_context.Employees == null)
          {
              return NotFound();
          }
            return await _context.Employees.ToListAsync();
        }

        // GET: api/Employees/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Employee>> GetEmployee(int id)
        {
          if (_context.Employees == null)
          {
              return NotFound();
          }
            var employee = await _context.Employees.FindAsync(id);

            if (employee == null)
            {
                return NotFound();
            }

            return employee;
        }
        [HttpGet]
        [Route("/GetEmployeesByFirstName/{fname}")]
        public async Task<ActionResult<IEnumerable<Employee>>> GetEmployeesByFirstName(string fname)
        {
            if (_context.Employees == null)
            {
                return NotFound();
            }
            return await _context.Employees.Where(f => f.EmployeeFName == fname).ToListAsync();
        }

        [HttpGet]
        [Route("/GetEmployeesByLastName/{lname}")]
        public async Task<ActionResult<IEnumerable<Employee>>> GetEmployeesByLastName(string lname)
        {
            if (_context.Employees == null)
            {
                return NotFound();
            }
            return await _context.Employees.Where(l => l.EmployeeLName == lname).ToListAsync();
        }

        [HttpGet]
        [Route("/GetEmployeebyEmail/{email}")]
        public async Task<ActionResult<IEnumerable<Employee>>> GetEmployeeByEmail(string email)
        {
            if (_context.Employees == null)
            {
                return NotFound();
            }

            return await _context.Employees.Where(c => c.EmployeeEmail == email).ToListAsync();
        }

        [HttpGet]
        [Route("/GetEmployeebyDOJ/{dateofjoin}")]

        //public IActionResult GetDate(DateTime dateofjoin)
        //{
        //    if (_context.Employees == null)
        //    {
        //        return NotFound();
        //    }
        //    string formattedDate = dateofjoin.ToString("dd/MM/yyyy");
        //    return Employees + Ok(formattedDate);
        //}

        
        public IActionResult GetEmployeeInfo(DateTime dateofjoin)
        {
            // Assuming employee information is stored in a database
            // Retrieve employee information based on the given date
            var employeeInfo = _context.Employees.Where(e => e.JoiningDate == dateofjoin).FirstOrDefault();

            if (employeeInfo == null)
            {
                return NotFound();
            }

            // Format the date as dd/mm/yyyy
            var formattedDate = dateofjoin.ToString("dd/MM/yyyy");
            //var formattedAge = Age.ToString("dd/MM/yyyy");

            // Create a new object to return with the formatted date
            var employeeInfoWithFormattedDate = new
            {
                FName = employeeInfo.EmployeeFName,
                LName=employeeInfo.EmployeeLName,
                Email = employeeInfo.EmployeeEmail,
                phone=employeeInfo.Phone,
                Age = employeeInfo.BirthDate.ToString("dd/MM/yyyy"),
                Date = formattedDate
            };

            return Ok(employeeInfoWithFormattedDate);
        }

        [HttpGet]
        [Route("/GetEmployeeCityId/{cityid}")]
        public async Task<ActionResult<IEnumerable<Employee>>> GetEmployeeByCityId(int cityid)
        {
            if (_context.Employees == null)
            {
                return NotFound();
            }   

            return await _context.Employees.Where(c => c.CityId == cityid).ToListAsync();
        }


        [HttpGet]
        [Route("/GetEmployeeCityName/{cityname}")]
        public List<Employee> GetAllEmployeesByCityName(string cityname)
        {
            List<Employee> empList = new List<Employee>();
            var query = (from p in _context.Employees
                         join s in _context.Cities
                         on p.CityId equals s.CityId
                         where s.CityName == cityname
                         select p);
            foreach (var item in query)
            {
                empList.Add(item);
            }
            return empList;
        }




        [HttpGet]
[Route("/GetEmployeeStateName/{statename}")]
 public List<Employee> GetAllEmployeesBystateName(string statename) { 
        List<Employee> empList = new List<Employee>();
   
        var employees = from e in _context.Employees
                        join c in _context.Cities on e.CityId equals c.CityId
                        join s in _context.States on c.StateId equals s.StateId
                        where s.StateName == statename
                        select e;

            foreach (var item in employees)
            {
                empList.Add(item);
            }
            return empList;
        }


















        [HttpGet]
        [Route("/GetEmployeePhone/{phone}")]
        public async Task<ActionResult<IEnumerable<Employee>>> GetEmployeeByPhone(string phone)
        {
            if (_context.Employees == null)
            {
                return NotFound();
            }

            return await _context.Employees.Where(c => c.Phone == phone).ToListAsync();
        }
        // PUT: api/Employees/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutEmployee(int id, Employee employee)
        {
            if (id != employee.EmployeeId)
            {
                return BadRequest();
            }

            _context.Entry(employee).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!EmployeeExists(id))
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

        // POST: api/Employees
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Employee>> PostEmployee(Employee employee)
        {
          if (_context.Employees == null)
          {
              return Problem("Entity set 'MyCargoDBContext.Employees'  is null.");
          }
            _context.Employees.Add(employee);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetEmployee", new { id = employee.EmployeeId }, employee);
        }

        // DELETE: api/Employees/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteEmployee(int id)
        {
            if (_context.Employees == null)
            {
                return NotFound();
            }
            var employee = await _context.Employees.FindAsync(id);
            if (employee == null)
            {
                return NotFound();
            }

            _context.Employees.Remove(employee);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool EmployeeExists(int id)
        {
            return (_context.Employees?.Any(e => e.EmployeeId == id)).GetValueOrDefault();
        }
    }
}
