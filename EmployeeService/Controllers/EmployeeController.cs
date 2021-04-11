using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace EmployeeService
{
    public class EmployeeController : ApiController
    {
        BAL_Employee objEmp = new BAL_Employee();

        [AcceptVerbs("GET", "POST")]
        [Route("api/Employee/{PageNo}/{PageSize}")]
        public HttpResponseMessage GET(int PageNo, int PageSize)
        {
            if (ModelState.IsValid)
            {
                HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created, objEmp.GetEmployeeList(PageNo, PageSize));
                return response;
            }
            else
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ModelState);
            }
        }

        [Route("api/Employee")]
        public HttpResponseMessage PUT(EmployeeProfile empProfile)
        {
            if (ModelState.IsValid)
            {
                HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created, objEmp.AddEditEmploy(empProfile));
                return response;
            }
            else
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ModelState);
            }
        }

        //[AcceptVerbs("GET", "POST")]
        [Route("api/Employee/{EmpNo}")]
        public HttpResponseMessage DELETE(int EmpNo)
        {
            if (ModelState.IsValid)
            {
                HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created, objEmp.DeleteEmploy(EmpNo));
                return response;
            }
            else
            {
                return Request.CreateErrorResponse(HttpStatusCode.BadRequest, ModelState);
            }
        }
        
    }
}
