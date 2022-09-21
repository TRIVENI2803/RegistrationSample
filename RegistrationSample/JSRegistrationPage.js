
$(document).ready(function () {

    $("#SEmailId").hide();
    $("#SPassword").hide();
    $("#SFirstName").hide();
    $("#SLastName").hide();
    $("#SStateDropDownList").hide();
    $("#SGender").hide();
    $("#SContactNo").hide();
    $("#SDOB").hide();
  /*  $("#SSkills").hide();*/


    $("#TEmailId").focusout(function () {
        TEmailValidate();


    })

    $("#TFirstName").focusout(function () {
        TFirstNameValidate();

    })

    $("#TLastName").focusout(function () {
        TLastNameValidate();
    })

    $("#TPassword").focusout(function () {
        TPasswordValidate();
    })

    $("#StateDropDownList").focusout(function () {
        StateDropDownListValidate();
    })

    $("#TGender").focusout(function () {
        TGenderValidate();
    })

    $("#TContactNo").focusout(function () {
        TContactNoValidate();
    })

    $("#SSkills").focusout(function () {
        SSkillsValidate();
    })

    //$("#TGender").focusout(function () {
    //    TGenderValidate();
    //})
    
    $("#DOBDatePicker").datepicker({
        changeMonth: true,
        changeYear: true,
        showOn: 'button',
        autoSize: true,
       // buttonImageOnly: true,
        buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif",
        dateFormat: 'dd/mm/yy',
        yearRange: '1900:+0',
        onSelect: function (dateString, txtDate) {
            ValidateDOB(dateString);
        }
    });

    
        function ValidateDOB(dateString) {
            var lblError = $("#SDOB");
            var parts = dateString.split("/");
            var dtDOB = new Date(parts[1] + "/" + parts[0] + "/" + parts[2]);
            var dtCurrent = new Date();
            lblError.html("Eligibility 18 years ONLY.")
            if (dtCurrent.getFullYear() - dtDOB.getFullYear() < 18) {
                $("#SDOB").show();
                return false;

            }

            if (dtCurrent.getFullYear() - dtDOB.getFullYear() == 18) {

                //CD: 11/06/2018 and DB: 15/07/2000. Will turned 18 on 15/07/2018.
                if (dtCurrent.getMonth() < dtDOB.getMonth()) {
                    return false;
                }
                if (dtCurrent.getMonth() == dtDOB.getMonth()) {
                    //CD: 11/06/2018 and DB: 15/06/2000. Will turned 18 on 15/06/2018.
                    if (dtCurrent.getDate() < dtDOB.getDate()) {
                        return false;
                    }
                }
            }
        }


        function TEmailValidate() {
            var EmailId = document.getElementById('TEmailId').value;
            var EmailIdRegex = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/
            var EmailIdResult = EmailIdRegex.test(EmailId);

            if (EmailId == "") {
                document.getElementById("SEmailId").innerHTML = " * Please fill the Email address";
                $("#SEmailId").show();
                return false;
            }
            else {
                if (EmailIdResult == false) {
                    document.getElementById("SEmailId").innerHTML = " * Please enter the valid format for Email address ";
                    $("#SEmailId").show();
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
                    return false;
                }
                else {
                    $("#SPassword").hide();
                    return true;
                }

            }
        }
        function TFirstNameValidate() {
            var FirstName = document.getElementById('TFirstName').value;
            var FirstNameRegex = /\b([A-ZÀ-ÿ][-,a-z. ']+[ ]*)+/
            var FirstNameResult = FirstNameRegex.test(FirstName);
            if (FirstName == "") {
                document.getElementById("SFirstName").innerHTML = " * Please fill the FirstName field";
                $("#SFirstName").show();
                return false;
            }
            else {
                if (FirstNameResult == false) {

                    document.getElementById("SFirstName").innerHTML = " * Please enter a valid characters for First name";
                    $("#SFirstName").show();
                    return false;
                }
                else {
                    $("#SFirstName").hide();
                    return true;
                }
            }
        }
        function TLastNameValidate() {
            var LastName = document.getElementById('TLastName').value;
            var LastNameRegex = /\b([A-ZÀ-ÿ][-,a-z. ']+[ ]*)+/
            var LastNameResult = LastNameRegex.test(LastName);
            if (LastName == "") {
                document.getElementById("SLastName").innerHTML = " * Please fill the LastName field";
                $("#SLastName").show();
                return false;
            }
            else {
                if (LastNameResult == false) {
                    document.getElementById("SLastName").innerHTML = " * Please enter a valid characters for Last name";
                    $("#SLastName").show();
                    return false;
                }
                else {
                    $("#SLastName").hide();
                    return true;
                }
            }

        }
        function StateDropDownListValidate() {
            if (document.getElementById('StateDropDownList').value == "Select State") {
                document.getElementById("SStateDropDownList").innerHTML = " * Please select the State";
                $("#SStateDropDownList").show();
                return false;
            }
            else {
                $("#SStateDropDownList").hide();
                return true;
            }


        }
        function TContactNoValidate() {
            var ContactNo = document.getElementById('TContactNo').value;
            var ContactNoRegex = /^[0-9]{10}$/
            var ContactNoResult = ContactNoRegex.test(ContactNo);
            if (ContactNo == "") {
                document.getElementById("SContactNo").innerHTML = " * Please fill the ContactNo field";
                $("#SContactNo").show();
                return false;
            }
            else {
                if (ContactNoResult == false) {
                    document.getElementById("SContactNo").innerHTML = " * Please valid 10 digits for Contact No ";
                    $("#SContactNo").show();
                    return false;
                }
                else {
                    $("#SContactNo").hide();
                    return true;
                }
            }
    }

    //function SSkillsValidate() {
    //    $("#TSkill").se 
    //}
    

        /*   return false;*/

    //if (TEmailValidate() == true && TFirstNameValidate() == true && TLastNameValidate() == true && TPasswordValidate() == true
    //    && StateDropDownListValidate() == true && TContactNoValidate() == true) {
    //    var ask = confirm("Do you want to Save the changes");
    //    if (ask == true) { return true; }

    //    else { return false; }
    //}
        
    

});







  