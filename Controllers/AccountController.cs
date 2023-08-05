
using CargoManagerSystem.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace CargoManagerSystem.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AccountController : ControllerBase
    {
        private readonly UserManager<MyIdentityUser> userManager;
        private readonly SignInManager<MyIdentityUser> loginManager;
        private readonly RoleManager<MyIdentityRole> roleManager;
        private readonly IConfiguration _configuration;

        MyIdentityDbContext context = new MyIdentityDbContext();
       // MyCargoDBContext _context = new MyCargoDBContext();
        

       
        public UserManager<MyIdentityUser> UserManager { get; private set; }

        public AccountController(UserManager<MyIdentityUser> userManager,
           SignInManager<MyIdentityUser> loginManager,
           RoleManager<MyIdentityRole> roleManager, IConfiguration configuration)
        {
            this.userManager = userManager;
            this.loginManager = loginManager;
            this.roleManager = roleManager;
            _configuration = configuration;

        }


        //[HttpGet]
        //public async Task<ActionResult<IEnumerable<UserDetailVM>>> GetUserDetails()
        //{
        //    var query = from user in context.Users
        //                join cust in _context.Customers on user.CustomerId equals cust.CustomerId
        //                select new
        //                {
        //                    CustomerId = user.CustomerId,
        //                    UserName = user.UserName,
        //                    CustomerName = cust.CustomerName,
        //                    CustomerEmail = cust.CustomerEmail,
        //                    CustomerPhone = cust.CustomerPhone,
        //                    CustomerZip = cust.CustomerZip,
        //                };
        //                return Ok(query);
        //}
        

        [HttpPost]      
        [Route("register")]
        public IActionResult Register(RegisterViewModel obj)
        {
            if (ModelState.IsValid)
            {
                MyIdentityUser user = new MyIdentityUser();
                user.UserName = obj.UserName;
                user.Email = obj.Email;
                //user.FullName = obj.FullName;
                //user.BirthDate = obj.BirthDate;

                IdentityResult result = userManager.CreateAsync(user, obj.Password).Result;

                if (result.Succeeded)
                {
                    if (!roleManager.RoleExistsAsync("NormalUser").Result)
                    {
                        MyIdentityRole role = new MyIdentityRole();
                        role.Name = "NormalUser";
                        role.Description = "Perform normal operations.";
                        //Creating Role Here
                        IdentityResult roleResult = roleManager.CreateAsync(role).Result;
                        if (!roleResult.Succeeded)
                        {
                            ModelState.AddModelError("", "Role creation failed! Please check user details and try again.");
                             return StatusCode(500, ModelState);
                           
                        }
                    }                

                }
                //Adding User To Role
                if (roleManager.RoleExistsAsync("NormalUser").Result)
                {
                    userManager.AddToRoleAsync(user, "NormalUser");
                }
            }
            return Ok("User created successfully!" );
        }

        [HttpPost]
        [Route("register-admin")]
        public IActionResult RegisterAdmin(RegisterViewModel obj)
        {
            if (ModelState.IsValid)
            {
                MyIdentityUser user = new MyIdentityUser();
                user.UserName = obj.UserName;
                user.Email = obj.Email;
                //user.FullName = obj.FullName;
                //user.BirthDate = obj.BirthDate;

                IdentityResult result = userManager.CreateAsync(user, obj.Password).Result;

                if (result.Succeeded)
                {
                    if (!roleManager.RoleExistsAsync("AdminUser").Result)
                    {
                        MyIdentityRole role = new MyIdentityRole();
                        role.Name = "AdminUser";
                        role.Description = "Perform Admin operations.";
                        IdentityResult roleResult = roleManager.CreateAsync(role).Result;
                        if (!roleResult.Succeeded)
                        {
                            ModelState.AddModelError("", "Role creation failed! Please check user details and try again.");
                            return StatusCode(500, ModelState);

                        }
                    }

                }
                //Adding User To Role
                if (roleManager.RoleExistsAsync("AdminUser").Result)
                {
                    userManager.AddToRoleAsync(user, "AdminUser");
                }
            }
            return Ok("Admin User created successfully!");
        }

        [HttpPost]
        [Route("register-customer")]
        public IActionResult RegisterCustomer(RegisterViewModel obj)
        {
            if (ModelState.IsValid)
            {
                MyIdentityUser user = new MyIdentityUser();
                user.UserName = obj.UserName;
                user.Email = obj.Email;
                //user.FullName = obj.FullName;
                //user.BirthDate = obj.BirthDate;

                IdentityResult result = userManager.CreateAsync(user, obj.Password).Result;

                if (result.Succeeded)
                {
                    if (!roleManager.RoleExistsAsync("Customer").Result)
                    {
                        MyIdentityRole role = new MyIdentityRole();
                        role.Name = "Customer";
                        role.Description = "Perform Customer operations.";
                        IdentityResult roleResult = roleManager.CreateAsync(role).Result;
                        if (!roleResult.Succeeded)
                        {
                            ModelState.AddModelError("", "Role creation failed! Please check user details and try again.");
                            return StatusCode(500, ModelState);

                        }
                    }

                }
                //Adding User To Role
                if (roleManager.RoleExistsAsync("Customer").Result)
                {
                    userManager.AddToRoleAsync(user, "Customer");
                }
            }
            return Ok("Customer created successfully!");
        }

        //public IActionResult Login()
        //{
        //    return View();
        //}


        [HttpPost]      
        [Route("login")]
        public IActionResult Login(LoginViewModel obj)
        {
            if (ModelState.IsValid)
            {
                var result = loginManager.PasswordSignInAsync(obj.UserName, obj.Password, obj.RememberMe, false).Result;
                var role = GetUserRole(obj.UserName);
                var qResult = from user in context.Users
                              where user.UserName == obj.UserName
                              select new { user.IsApprove , user.Id, user.Email};



                var authSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_configuration["JWT:Secret"]));

                var authClaims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name,obj.UserName),
                    new Claim(JwtRegisteredClaimNames.Jti, Guid.NewGuid().ToString()),
                };

                var token = new JwtSecurityToken(
                    issuer: _configuration["JWT:ValidIssuer"],
                    audience: _configuration["JWT:ValidAudience"],
                    expires: DateTime.Now.AddMinutes(3),
                    claims: authClaims,
                    signingCredentials: new SigningCredentials(authSigningKey, SecurityAlgorithms.HmacSha256)
                    );



                if (result.Succeeded)
                {
                   
                    //Annonymous Object
                    return Ok(new
                    {
                        token = new JwtSecurityTokenHandler().WriteToken(token),

                        expiration = token.ValidTo,
                        username=obj.UserName,
                        Role=role.Result,
                        Status=qResult,
                    });
                }
            }
            return Unauthorized();
        }

        [HttpGet]
        public async Task<string> GetUserRole(string userName)
        {
            var user = await userManager.FindByNameAsync(userName);
            var role = "";
            if (userManager.IsInRoleAsync(user, "AdminUser").Result)
            {
                role = "AdminUser";
            }
            else if(userManager.IsInRoleAsync(user,"EmployeeUser").Result)
            {
                role = "EmployeeUser";
            }
            else
            {
                role = "CustomerUser";
            }

            return role;
        }



        [HttpPost]       
        public IActionResult LogOff()
        {
            loginManager.SignOutAsync().Wait();
            return RedirectToAction("Login", "Account");
        }
    }
}
