using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using ThreadedProject_Workshop5.Models.DBEntities.Conglomerates;

/*
 * Author: Sarah
 */
namespace ThreadedProject_Workshop5.Models.DBEntities.Pure_Objects {
    public class Customers {
        public Customers() { }
        //Converter Constructor
        public Customers(TravelCustomer c) {
            CustomerID = c.CustomerID;
            CustFirstName = c.CustFirstName;
            CustLastName = c.CustLastName;
            CustAddress = c.CustAddress;
            CustCity = c.CustCity;
            CustProv = c.CustProv;
            CustPostal = c.CustPostal;
            CustCountry = c.CustCountry;
            CustHomePhone = c.CustHomePhone;
            CustBusPhone = c.CustBusPhone;
            CustEmail = c.CustEmail;
            AgentId = c.AgentId;
            CustUserName = c.CustUserName;
            CustPassword = c.CustPassword;
        }
        //Conversion Constructor to allow TravelCustomer to be used as a regular Customers
        public static implicit operator Customers(TravelCustomer tc) {
            return new Customers(tc);
        }
        //VALIDATION BY BRANDON
        
        public int CustomerID { get; set; }
        [Required(ErrorMessage = "Please Insert Your First Name")]
        public string CustFirstName { get; set; }
        [Required(ErrorMessage = "Please Insert Your Last Name")]
        public string CustLastName { get; set; }
        [Required(ErrorMessage = "Please Insert Your Address")]
        public string CustAddress { get; set; }
        [Required(ErrorMessage = "Please Insert Your City")]
        public string CustCity { get; set; }
        [Required(ErrorMessage = "Please Insert Your Province/State")]
        public string CustProv { get; set; }
        [Required(ErrorMessage = "Please Insert Your Postal Code")]
        [RegularExpression(@"(^\d{5}(-\d{4})?$)|(^[ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy]{1}\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstv‌​xy]{1} *\d{1}[ABCEGHJKLMNPRSTVWXYZabceghjklmnprstvxy]{1}\d{1}$)", ErrorMessage = "That postal code is not a valid US or Canadian postal code.")]

        public string CustPostal { get; set; }
        [Required(ErrorMessage = "Please Insert Your Country")]
        public string CustCountry { get; set; }
        [Required(ErrorMessage = "Please Insert Your Home Phone")]
        [Phone]
        public string CustHomePhone { get; set; }
        [Phone]
        public string CustBusPhone { get; set; }
        [EmailAddress]
        public string CustEmail { get; set; }
        public int AgentId { get; set; }
        [Required(ErrorMessage = "Please Insert Your UserName")]
        public string CustUserName { get; set; }

        [Required(ErrorMessage = "Please Insert Your Password")]
        [DataType(DataType.Password)]
        public string CustPassword { get; set; }

        [NotMapped]
        [Required(ErrorMessage = "Please Confirm Your Password")]
        [Compare("CustPassword")]
        [DisplayName ("Confirm Password")]
        [DataType(DataType.Password)]
        public string CustConfPassword { get; set; }


    }
}