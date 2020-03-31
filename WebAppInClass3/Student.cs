using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebAppInClass3
{
    public class Student
    {
        public int StudentID { get; set; }
        public string StudentName { get; set; }
        public double Credits { get; set; }
        public string EmergencyPhoneNumber { get; set; }

        public Student()
        {

        }
        public Student(int studentId,
                        string studentName,
                        double credits,
                        string emergencyPhoneNumber)
        {
            StudentID = studentId;
            StudentName = studentName;
            Credits = credits;
            EmergencyPhoneNumber = emergencyPhoneNumber;
        }
    }
}