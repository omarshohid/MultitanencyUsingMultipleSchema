using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using MultiTanenetWithMultipleSchema.Models;
using MultiTanenetWithMultipleSchema.SystemDAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace MultiTanenetWithMultipleSchema.Controllers
{
    public class HomeController : Controller
    {
        private ApplicationSignInManager _signInManager;
        private ApplicationUserManager _userManager;

        public ActionResult Index()
        {
            var accountContext = new AccountDAL.DataContext();
            var user = accountContext.Users.FirstOrDefault(x => x.Email == User.Identity.Name);

            if (user != null)
            {
                TenantDataCtx systemContext = TenantDataCtx.Create(user.Account.Database);

                // now we have the current user, we can use their Account 
                // to create a new DataContext to access system data:
                //var systemContext = new SystemDAL.DataContext("Company1",user.Account.Database);
                var list = systemContext.Job.ToList();
                return PartialView(systemContext.Job);//systemContext.Jobs

            }
            return PartialView();
        }
        public ActionResult RedirectToMain()
        {
            return PartialView();
        }
        public ActionResult HomeMaster()
        {
            return View();
        }

        [HttpGet]
        public JsonResult GetJobList()
        {
            // get the current user:
            var accountContext = new AccountDAL.DataContext();
            var user = accountContext.Users.FirstOrDefault(x => x.Email == User.Identity.Name);

            if (user != null)
            {
                TenantDataCtx systemContext = TenantDataCtx.Create(user.Account.Database);
                var list = systemContext.Job.ToList();
                return Json(new { success = true, Data = list }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { success = false, Data = "Please login first!" }, JsonRequestBehavior.AllowGet);
            }
        }

        [Authorize]
        public ActionResult JobList()
        {
            // get the current user:
            var accountContext = new AccountDAL.DataContext();
            var user = accountContext.Users.FirstOrDefault(x => x.Email == User.Identity.Name);

            if (user != null)
            {
                TenantDataCtx systemContext = TenantDataCtx.Create(user.Account.Database);

                // now we have the current user, we can use their Account 
                // to create a new DataContext to access system data:
                //var systemContext = new SystemDAL.DataContext("Company1",user.Account.Database);
                var list = systemContext.Job.ToList();
                return View(systemContext.Job);//systemContext.Jobs

            }
            return View();
        }
        [Authorize]
        public ActionResult Create()
        {           
            return View();
        }

        [HttpPost]
        public ActionResult Save(string JobTitle)
        {
            try
            {
                var accountContext = new AccountDAL.DataContext();
                var user = accountContext.Users.FirstOrDefault(x => x.Email == User.Identity.Name);
                var tenant = user.Account.Database;
                Job job = new Job()
                {
                    JobName = JobTitle + ", Created by: " + User.Identity.Name//tenant + " " + User.Identity.Name
                };

                TenantDataCtx systemContext = TenantDataCtx.Create(user.Account.Database);
                systemContext.Job.Add(job);
                systemContext.SaveChanges();
                return Json(new { success = true, Data = "Data Save Successfully" }, JsonRequestBehavior.AllowGet);
            }
            catch (Exception ex)
            {
                return Json(new { success = true, Data = ex.Message }, JsonRequestBehavior.AllowGet);
            }
            
        }

        //public ActionResult Index()
        //{
        //    return View();
        //}
        [Authorize]
        public ActionResult CreateTanent()
        {
            return View();
        }

        [HttpPost]
        public async Task<JsonResult> SaveTenant(string tenantName, string userName)
        {
            try
            {
                var accountContext = new AccountDAL.DataContext();
                var accountInfo = accountContext.Accounts.Where(x => x.Name == tenantName).FirstOrDefault();
                if (accountInfo == null)
                {
                    Account account = new Account() { Name = tenantName, Database = tenantName };
                    accountContext.Accounts.Add(account);
                    accountContext.SaveChanges();
                }

                accountInfo = accountContext.Accounts.Where(x => x.Name == tenantName).FirstOrDefault();
                var user = new ApplicationUser { UserName = userName, Email = userName, AccountId = accountInfo.Id, Database = accountInfo.Database };
                var result = await UserManager.CreateAsync(user, "12345");
                if (result.Succeeded)
                {
                    var userInfo = accountContext.Users.FirstOrDefault(x => x.Email == User.Identity.Name);

                    if (userInfo != null)
                    {
                        TenantDataCtx systemContext = TenantDataCtx.Create(userInfo.Account.Database);
                        string sqlTenantWithTable = string.Format(@"EXEC CreateTenantWithTable '{0}', 'dbo'", tenantName);
                        string sqlStoredProcedure = string.Format(@"EXEC CreateTenantSP '{0}', 'dbo'", tenantName);
                        systemContext.Database.ExecuteSqlCommand(sqlTenantWithTable);
                        systemContext.Database.ExecuteSqlCommand(sqlStoredProcedure);
                        return Json(new { success = true, Data = "Tenant Created Successfully" }, JsonRequestBehavior.AllowGet);
                    }
                    else
                    {
                        return Json(new { success = false, Data = "User not found!" }, JsonRequestBehavior.AllowGet);
                    }
                }
                else
                {
                    return Json(new { success = false, Data = result.Errors }, JsonRequestBehavior.AllowGet);
                }
            }
            catch (Exception ex)
            {
                return Json(new { success = false, Data = ex.Message }, JsonRequestBehavior.AllowGet);
            }
                          
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }

        public class tenant
        {

        }
    }
}