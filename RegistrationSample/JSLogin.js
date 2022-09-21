

$(document).ready(function()
{
   // ID = "TEmail"
   // ID = "TPassword"
    // TEmailValidate(this.id) TPasswordValidate(this.id)

    //var EmailId = document.getElementById('TEmail').value;
    //var Password = document.getElementById('TPassword').value;

    //var EmailIdRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/
    //var EmailIdResult = EmailIdRegex.test(EmailId);

    //var PasswordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/
    //var PasswordResult = PasswordRegex.test(Password);

    $("#BLogin").hide();

    $("#SEmailId").hide();
    $("#SPassword").hide();



    $("#TEmail").focusout(function () {
        TEmailValidate();
        AllCheck();
    })

    $("#TPassword").focusout(function () {
        TPasswordValidate();
        AllCheck();
    })

    function TEmailValidate() {
        var EmailId = document.getElementById('TEmail').value;
        var EmailIdRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/
        var EmailIdResult = EmailIdRegex.test(EmailId);

        if (EmailId == "") {
            document.getElementById("SEmailId").innerHTML = " * Please fill the Email address";
            $("#SEmailId").show();
            $("#BLogin").hide();
            return false;
        }
        else {
            if (EmailIdResult == false) {
                document.getElementById("SEmailId").innerHTML = " * Please enter the valid format for Email address ";
                $("#SEmailId").show();
                $("#BLogin").hide();
                return false;
            }
            else {
                $("#SEmailId").hide();
                return true;
               
            }
        }
    }

    function TPasswordValidate() {
        var Password = document.getElementById('TPassword').value;
        var PasswordRegex = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/
        var PasswordResult = PasswordRegex.test(Password);

        if (Password == "") {
            document.getElementById("SPassword").innerHTML = " * Please fill the Password ";
            $("#SPassword").show();
             return false;
          
        }
        else {
            if (PasswordResult == false) {
                document.getElementById("SPassword").innerHTML = " * Please enter atleast 1 uppercase ,1 lowercase , 1 special character having length of 8 character ";
                $("#SPassword").show();
                $("#BLogin").hide();
                return false;
               
            }
            else {
                $("#SPassword").hide();
                return true;
               
            }

        }
    }

    function AllCheck() {
        if (TPasswordValidate() == true && TEmailValidate() == true) {
            $("#BLogin").show();
        }
    }
    
    return false;

    
})