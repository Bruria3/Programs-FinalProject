using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DTO;

namespace BL
{
    class Conversions
    {
        //TODO: Change to generic convert
        public static UserDTO ConvertUser(User user)
        {
            UserDTO userDTO = new DTO.UserDTO()
            {
                Uid = user.Uid,
                Uaddress = user.Uaddress,
                Uemail = user.Uemail,
                UfirstName = user.UfirstName,
                UlastName = user.UlastName,
                Upassword = user.Upassword,
                Uphone = user.Uphone,
                UuserName = user.UuserName
            };
            return userDTO;
        }
        public static User ConvertUser(UserDTO userDTO)
        {
            User user = new User()
            {
                Uid = userDTO.Uid,
                Uaddress = userDTO.Uaddress,
                Uemail = userDTO.Uemail,
                UfirstName = userDTO.UfirstName,
                UlastName = userDTO.UlastName,
                Upassword = userDTO.Upassword,
                Uphone = userDTO.Uphone,
                UuserName = userDTO.UuserName
            };
            return user;
        }

    }
}
