
var canRegister;
function CheckInputs() {
    //CHeck First Name
    canRegister= true;
    if (document.getElementById("txbFirstName").value.length < 1) {
        canRegister = false;
        alert("Enter First Name");
    }
    //CHeck Last Name
    if (document.getElementById("txbLastName").value.length < 1) {
        canRegister = false;
        alert("Enter Last Name");
    }
   //Check Date of Birth
    if (document.getElementById("txbDOB").value == "") {
        canRegister = false;
        alert("Enter Date of Birth");
    }
    //Check Course
    if (document.getElementById("selCourse").value == "Course") {
        canRegister = false;
        alert("Select a Course");
    }
    //Check Student No
    if (document.getElementById("txbStudentNo").value.indexOf('_') > -1 || document.getElementById("txbStudentNo").value == "") {
        canRegister = false;
        alert("Enter Correct Student No. Format");
    }

    //Check Mobile No. Length
    if (document.getElementById("txbMobile").value.indexOf('_') > -1 ) {
        canRegister = false;
        alert("Enter Correct Mobile No.");
    }

    //Check Email
    if (document.getElementById("txbEmail").value == "" || document.getElementById("txbEmail").value.indexOf(' ') > -1 ) {
        canRegister = false;
        alert("Enter Email Address");
    }

    //Check Password Length
    if (document.getElementById("txbPassword").value.length < 6) {
        canRegister = false;
        alert("Password should contain more than 5 characters");
    }

    //Check Password Retry
    if (document.getElementById("txbPassword").value != document.getElementById("txbRPassword").value) {
        canRegister = false;
        alert("Password does not match");
    }

    if (canRegister == true) {
        $.ajax({
            type: 'POST',
            url: 'Register.aspx/registerStudent',
            data: JSON.stringify({
                studNo: $('#txbStudentNo').val(),
                studFirst: $('#txbFirstName').val(),
                studMiddle: $('#txbMiddleName').val(),
                studLast: $('#txbLastName').val(),
                studDob: $('#txbDOB').val(),
                studCourse: $('#selCourse').val(),
                studPass: $('#txbPassword').val(),
                studContact: $('#txbMobile').val(),
                studEmail: $('#txbEmail').val()
            }),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (response) {
                if (response.d == 1) {
                    alert("Student No. Already Exist");   
                }             
                else if (response.d == 0) {
                    alert("Registration Successful");
                    window.location.href = "Login.aspx";
                }
            },
            failure: function (response) { alert(response.d); }
        });
    }
}

