using EmployeeService;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core.EntityClient;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EmployeeService
{
    public class BAL_Employee
    {
        public List<EmployeeProfile> GetEmployeeList(int PageNumber, int PageSize)
        {
            EmplyeeDBEntities DBContext = new EmplyeeDBEntities();
            string strQuery = "SELECT* FROM EmployeeProfile ORDER BY EmpNo OFFSET( " + PageNumber + " - 1) * " + PageSize + " ROWS FETCH NEXT " + PageSize + "ROWS ONLY";
            var employeeList = DBContext.EmployeeProfiles.SqlQuery(strQuery).ToList();
            return employeeList;
        }

        public EmployeeProfile AddEditEmploy(EmployeeProfile empProfile)
        {
            EmplyeeDBEntities DBContext = new EmplyeeDBEntities();
            var employ = DBContext.EmployeeProfiles.Where(emp => emp.EmpNo == empProfile.EmpNo).FirstOrDefault();
            if (employ != null)
            {
                employ.Name = empProfile.Name;
                employ.PhoneNo = empProfile.PhoneNo;
                employ.Email = empProfile.Email;
                employ.Gender = empProfile.Gender;
                employ.Position = empProfile.Position;
                employ.DOB = empProfile.DOB;
                employ.Salary = empProfile.Salary;

                DBContext.SaveChanges();
            }
            else
            {
                var newEmploy = new EmployeeProfile
                {
                    EmpNo = empProfile.EmpNo,
                    Name = empProfile.Name,
                    PhoneNo = empProfile.PhoneNo,
                    Email = empProfile.Email,
                    Gender = empProfile.Gender,
                    Position = empProfile.Position,
                    DOB = empProfile.DOB,
                    Salary = empProfile.Salary,
                };

                DBContext.EmployeeProfiles.Add(newEmploy);
                DBContext.SaveChanges();
            }

            var empDeails = DBContext.EmployeeProfiles.Where(emp => emp.EmpNo == empProfile.EmpNo).FirstOrDefault();
            return empDeails;
        }

        public string DeleteEmploy(int EmpNo)
        {
            EmplyeeDBEntities DBContext = new EmplyeeDBEntities();
            var employ = DBContext.EmployeeProfiles.Where(emp => emp.EmpNo == EmpNo).FirstOrDefault();
            if (employ != null)
            {
                DBContext.EmployeeProfiles.Remove(employ);
                DBContext.SaveChanges();
            }

            return "Success";
        }
    }
}