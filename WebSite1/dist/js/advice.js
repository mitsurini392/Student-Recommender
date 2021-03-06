﻿function getCurrentYearSem() {
    var yearSem = [];
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "SELECT * FROM tblSchoolYear" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            //There Is No Response When INSERTING SQL
            var xml = document.createElement("div");
            xml.innerHTML = response.d;
            yearSem.push(xml.getElementsByTagName('currentyear')[0].innerHTML);
            yearSem.push(xml.getElementsByTagName('currentsem')[0].innerHTML);
        },
        failure: function (response) {
            alert(response.d);
        }
    });
    return yearSem;
}

function getFailedSubj(studNo) {
    //Create List of SubjID
    var FailedAndDropped = [];
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/getFailedSubj',
        async: false,
        data: JSON.stringify({ studNo: studNo }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");

            //Check Subject If Has Pass

            for (var i = 0; i < XMLrows.length; i++) {
                var subjID = XMLrows[i].getElementsByTagName("subjID")[0].innerHTML;
                //Check Subject If Has Pass 
                if (getFailedSubjPassed(studNo, subjID) == false) {
                    FailedAndDropped.push(subjID);
                }
                else {
                    //Don Add
                }

            }
        },
        failure: function (response) {
            alert(response.d);
        }
    });
    return FailedAndDropped;
}

function getFailedSubjPassed(studNo, subjID) {
    var passed;
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/getFailedSubjPassed',
        async: false,
        data: JSON.stringify({ studNo: studNo, subjID: subjID }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");

            if (XMLrows.length == 0) {
                passed = false;
            }
            else {
                passed = true;
            }
        },
        failure: function (response) {
            alert(response.d);
        }
    });
    return passed;
}

//function enlistPetition(elem, studNo, courseCode) {
//    ////////////////////////////////Search SubjID on Petition List
//    var searchSubjID = "SELECT * FROM tblPet WHERE petSubjID = '" + elem.value + "'";
//    var createAPetition = false;
//    $.ajax({
//        type: 'POST',
//        url: 'Advice.aspx/universalQuery',
//        async: false,
//        data: JSON.stringify({ SQL: searchSubjID }),
//        contentType: 'application/json; charset=utf-8',
//        dataType: 'json',
//        success: function (response) {
//            var xml = document.createElement("div");
//            xml.innerHTML = response.d;

//            //XML pareser
//            var text = response.d;
//            var parser, xmlDoc;
//            parser = new DOMParser();
//            xmlDoc = parser.parseFromString(text, "text/xml");

//            //Get Rows From XML
//            var XMLrows = xmlDoc.getElementsByTagName("Table");
//            if (XMLrows.length == 0) {
//                //Create A Petition List
//                createAPetition = true;
//            }

//        },
//        failure: function (response) {
//            alert(response.d);
//        }
//    });
//    ////////////////////////////////Create A Petition (ONLY IF THERE IS NO PETITION EXISTED)
//    if (createAPetition == true) {
//        var SQLInsert = "INSERT INTO tblPet VALUES('" + elem.value + "','" + courseCode + "','" + getCurrentYearSem()[0] + "','" + getCurrentYearSem()[1] + "','Pending');";
//        $.ajax({
//            type: 'POST',
//            url: 'Advice.aspx/universalQuery',
//            async: false,
//            data: JSON.stringify({ SQL: SQLInsert }),
//            contentType: 'application/json; charset=utf-8',
//            dataType: 'json',
//            success: function (response) {
//                //INSERT DOES NOT RETURN
//            },
//            failure: function (response) {
//                alert(response.d);
//            }
//        });
//    }
//    ///////////////////////////////Enlist in Petition
//    $.ajax({
//        type: 'POST',
//        url: 'Advice.aspx/universalQuery',
//        async: false,
//        data: JSON.stringify({ SQL: "DELETE FROM tblPetStud WHERE studNo = '" + studNo + "' AND petSubjID = '" + elem.value + "'; INSERT INTO tblPetStud VALUES('" + studNo + "','" + elem.value + "');" }),
//        contentType: 'application/json; charset=utf-8',
//        dataType: 'json',
//        success: function (response) {
//            //INSERT DOES NOT RETURN
//        },
//        failure: function (response) {
//            alert(response.d);
//        }
//    });
//    elem.innerHTML = "Enlisted";
//    elem.disabled = true;
//}

function enlistPetition(elem, subjID, studNo, courseCode) {
    $.confirm({
        icon: "fa fa-exclamation",
        title: "Warning",
        type: "red",
        content: "Once you enlist, you need to enroll this petition class when it is approved .<p style='color: red'>If the units for the subject is not fit next semester, you are advice to remove least priority subject.</p>Are you sure you want to enlist?",
        buttons: {
            ok: {
                btnClass: 'btn btn-danger',
                text: 'Ok',
                action: function () {
                    countPet(elem, subjID, studNo, courseCode);
                }
            },
            cancel: {}
        },
        onOpenBefore: function () {
            //this.buttons.ok.disable();
            //counter(this.buttons.ok,0);
        }
    });
}

function counter(btn, start) {
    var i = start;
    var timer = setInterval(function () {
        btn.setText("OK " + i);
        i--;
        if (i == -1) {
            clearInterval(timer);
            btn.setText("OK ");
            btn.enable();
        }
    }, 1000);

}

function countPet(elem, subjID, studNo, courseCode) {
    var parentContainer = elem.parentNode;
    $.confirm({
        title: "Enlisting Petition",
        icon: "fa fa-spinner fa-spin",
        content: "Please wait.",
        autoClose: 'ok|500',
        buttons: {
            ok: {
                isHidden: true,
                action: function () {
                    ////////////////////////////////COUNT STUDENT LISTED ON PETITION
                    var success = true;
                    $.ajax({
                        type: 'POST',
                        url: 'Advice.aspx/universalQuery',
                        async: false,
                        data: JSON.stringify({ SQL: "SELECT * FROM tblPetStud WHERE studNo = '" + studNo + "'" }),
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                        success: function (response) {
                            var xml = document.createElement("div");
                            xml.innerHTML = response.d;

                            //XML pareser
                            var text = response.d;
                            var parser, xmlDoc;
                            parser = new DOMParser();
                            xmlDoc = parser.parseFromString(text, "text/xml");

                            //Get Rows From XML
                            var XMLrows = xmlDoc.getElementsByTagName("Table");
                            if (XMLrows.length >= 2) {
                                $.alert("You can only enlist in petition twice per semester.");
                                success = false;
                            }

                        },
                        failure: function (response) {
                            alert(response.d);
                        }
                    });
                    if (success == false) {
                        return;
                    }
                    ////////////////////////////////Search SubjID on Petition List
                    var searchSubjID = "SELECT * FROM tblPet WHERE petSubjID = '" + subjID + "'";
                    var createAPetition = false;
                    $.ajax({
                        type: 'POST',
                        url: 'Advice.aspx/universalQuery',
                        async: false,
                        data: JSON.stringify({ SQL: searchSubjID }),
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                        success: function (response) {
                            var xml = document.createElement("div");
                            xml.innerHTML = response.d;

                            //XML pareser
                            var text = response.d;
                            var parser, xmlDoc;
                            parser = new DOMParser();
                            xmlDoc = parser.parseFromString(text, "text/xml");

                            //Get Rows From XML
                            var XMLrows = xmlDoc.getElementsByTagName("Table");
                            if (XMLrows.length == 0) {
                                //Create A Petition List
                                createAPetition = true;
                            }

                        },
                        failure: function (response) {
                            alert(response.d);
                        }
                    });
                    ////////////////////////////////Create A Petition (ONLY IF THERE IS NO PETITION EXISTED)
                    if (createAPetition == true) {
                        var currDate = new Date().toISOString().slice(0, 19).replace('T', ' ');
                        var SQLInsert = "INSERT INTO tblPet VALUES('" + subjID + "','" + courseCode + "','" + getCurrentYearSem()[0] + "','" + getCurrentYearSem()[1] + "','Pending'); INSERT INTO tblRptPet(petSubj,petStatus,petDate,courseCode) VALUES ('" + subjID + "','Pending','" + currDate + "','"+courseCode+"');";
                        $.ajax({
                            type: 'POST',
                            url: 'Advice.aspx/universalQuery',
                            async: false,
                            data: JSON.stringify({ SQL: SQLInsert }),
                            contentType: 'application/json; charset=utf-8',
                            dataType: 'json',
                            success: function (response) {
                                //INSERT DOES NOT RETURN
                            },
                            failure: function (response) {
                                alert(response.d);
                            }
                        });
                    }
                    ///////////////////////////////Enlist in Petition
                    $.ajax({
                        type: 'POST',
                        url: 'Advice.aspx/universalQuery',
                        async: false,
                        data: JSON.stringify({ SQL: "DELETE FROM tblPetStud WHERE studNo = '" + studNo + "' AND petSubjID = '" + subjID + "'; INSERT INTO tblPetStud VALUES('" + studNo + "','" + subjID + "');" }),
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                        success: function (response) {
                            //INSERT DOES NOT RETURN
                        },
                        failure: function (response) {
                            alert(response.d);
                        }
                    });

                    parentContainer.style.filter = 'opacity(.5)';
                    elem.outerHTML = "<a class='small-box-footer'>Enlisted</a>";

                    //Unlock next Priority
                    try {
                        parentContainer.parentNode.parentNode.parentNode.nextSibling.getElementsByClassName("overlay")[0].className = "";
                    } catch (e) {
                        return;
                    }
                }
            }
        }
    });
}


function getAdviceDesc(adviceName) {
    var adviceDesc;
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "SELECT * FROM tblAdvice WHERE adviceName = '" + adviceName + "'" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            adviceDesc = XMLrows[0].getElementsByTagName("adviceDesc")[0].innerHTML;
        },
        failure: function (response) {
            alert(response.d);
        }
    });
    return adviceDesc;
}

function getAdviceStep(adviceName) {
    var steps = [];
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "SELECT * FROM tblAdviceSteps WHERE adviceName = '" + adviceName + "';" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            if (XMLrows.length > 0) {
                for (var i = 0; i < XMLrows.length; i++) {
                    steps.push(XMLrows[i].getElementsByTagName("adviceStepDesc")[0].innerHTML);
                }
            }
        },
        failure: function (response) {
            alert(response.d);
        }
    });
    return steps;
}

function getNotes(adviceName, courseCode) {
    var adviceNotes = "";
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "SELECT * FROM tblNotes WHERE adviceName = '" + adviceName + "' AND courseCode = '" + courseCode + "'" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            if (XMLrows.length > 0) {
                adviceNotes = XMLrows[0].getElementsByTagName("adviceNotes")[0].innerHTML;
            }
        },
        failure: function (response) {
            alert(response.d);
        }
    });
    return adviceNotes;
}

function getStudAdvProg(elem, studNo, courseCode, studName) {
    var adviceName = elem.parentNode.previousSibling.previousSibling.innerHTML;
    $.confirm({
        title: adviceName,
        icon: 'fa fa-list',
        type: 'purple',
        columnClass: 'large',
        content: "<div style='background: #ECF0F5' class='pad'><ul><li>These are the steps that needed to be accomplished by the students</li><li>Check the advice to record your progress.</li><li>When you are done, the chairperson will validate your progress and confirm.</li></ul><ul id='listStep' class='list-unstyled' ></ul></div><br><button class='btn bg-purple pull-right' onclick=\"notifyChair('" + studNo + "')\">Notify Chairperson</button>",
        buttons: {
            print: {
                btnClass: 'bg-purple',
                action: function () {
                    PrintAdvice(studNo, studName, courseCode, adviceName, getAdviceStep(adviceName));
                    return false;
                }
            },
            back: {

            }
        },
        onOpenBefore: function () {
            //Populate List
            var currentListStep = getAdviceStep(adviceName);
            for (var i = 0; i < currentListStep.length; i++) {
                var step = document.createElement("li");
                step.style.cursor = 'pointer';
                step.innerHTML = "<div class='input-group'><span class='input-group-addon stepOrder'>" + (i + 1) + "</span><textarea class='form-control stepsTextArea' rows='1' style='resize:none' disabled>" + currentListStep[i] + "</textarea><span class='input-group-addon'><input type='checkbox' onchange=\"checkOwnStep('" + adviceName + "','" + studNo + "',this)\"></span></div>";
                if (checkAdviceStep(studNo, adviceName, step.getElementsByClassName('stepOrder')[0].innerHTML) == true) {
                    step.childNodes[0].childNodes[2].childNodes[0].checked = true;
                }
                document.getElementById("listStep").appendChild(step);
            }
            //Auto Grow
            var txtAreas = document.getElementById("listStep").getElementsByTagName("textarea");
            for (var i = 0; i < txtAreas.length; i++) {
                auto_grow(txtAreas[i]);
            }
            //Check If There is Notif
            if (checkNotif(studNo) == true) {
                //Change Notif Button to Cancel Notif Button
                this.$content.find("button").remove();
                this.$content.append("<button class='btn bg-purple pull-right' onclick=\"cancelNotif('" + studNo + "')\">Cancel Notification</button>");
            }
            if (checkNotif(studNo) == "1") {
                //Change Notif Button to Cancel Notif Button
                this.$content.find("button").remove();
                this.$content.append("<button class='btn bg-purple pull-right' disabled>Student had inquired</button>");
            }
        }
    });
}
function cancelNotif(studNo) {
    $.confirm({
        title: "Cancel Notification",
        icon: "fa fa-remove",
        theme: "modern",
        type: "purple",
        buttons: {
            confirm: {
                btnClass: "bg-purple",
                action: function () {
                    $.ajax({
                        type: 'POST',
                        url: 'Advice.aspx/universalQuery',
                        async: false,
                        data: JSON.stringify({ SQL: "DELETE FROM tblNotifs WHERE studNo = '" + studNo + "'" }),
                        contentType: 'application/json; charset=utf-8',
                        dataType: 'json',
                        success: function (response) {
                            window.location.href = "studentHome.aspx";
                        },
                        failure: function (response) {
                            alert(response.d);
                        }
                    });
                }
            },
            cancel: {

            }
        }
    })
}

function notifyChair(studNo) {
    $.confirm({
        title: "Notify Chairperson",
        icon: 'fa fa-list',
        type: 'purple',
        content: "I have read the advices the system has given me and i still insist on seeing the chairperson<br><textarea style='border-radius: 5px;width: 100%;resize: none;' rows='5' placeholder='State the reason why you want to got to the chairperson'></textarea>",
        buttons: {
            accept: {
                btnClass: 'bg-purple',
                action: function () {
                    var today = new Date();
                    var curDate = today.getFullYear() + '-' + (today.getMonth() + 1) + '-' + today.getDate();
                    if (this.$content.find('textarea').val().length > 0) {
                        $.ajax({
                            type: 'POST',
                            url: 'Advice.aspx/universalQuery',
                            async: false,
                            data: JSON.stringify({ SQL: "INSERT INTO tblNotifs(studNo,notifDesc,notifDate,notified) VALUES ('" + studNo + "','" + this.$content.find('textarea').val() + "','" + curDate + "',0)" }),
                            contentType: 'application/json; charset=utf-8',
                            dataType: 'json',
                            success: function (response) {
                                window.location.href = "studentHome.aspx";
                            },
                            failure: function (response) {
                                alert(response.d);
                            }
                        });
                    }
                    else {
                        $.alert("Reason cannot be blank");
                        return false;
                    }
                }
            },
            cancel: {}
        }
    });
}

function checkOwnStep(adviceName, studNo, elem) {
    var stepOrder = elem.parentNode.parentNode.childNodes[0].innerHTML;
    if (elem.checked == true) {
        //alert("INSERT");
        var SQLInsert = "INSERT INTO tblAdviceListSteps VALUES('" + studNo + "','" + adviceName + "'," + stepOrder + ");";
        $.ajax({
            type: 'POST',
            url: 'Advice.aspx/universalQuery',
            async: false,
            data: JSON.stringify({ SQL: SQLInsert }),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (response) {
                //INSERT DOES NOT RETURN
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }
    else if (elem.checked == false) {
        //alert("REMOVE");
        var SQLInsert = "DELETE FROM tblAdviceListSteps WHERE studNo = '" + studNo + "' AND adviceName = '" + adviceName + "' AND adviceStepOrder = " + stepOrder + ";";
        $.ajax({
            type: 'POST',
            url: 'Advice.aspx/universalQuery',
            async: false,
            data: JSON.stringify({ SQL: SQLInsert }),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (response) {
                //INSERT DOES NOT RETURN
            },
            failure: function (response) {
                alert(response.d);
            }
        });
    }

}



function auto_grow(element) {
    element.style.height = "5px";
    element.style.height = (element.scrollHeight) + "px";
}

function PrintAdvice(studNo, studName, courseCode, adviceName, steps) {
    var mywindow = window.open('', 'PRINT', 'height=400,width=600');

    mywindow.document.write('<html><head><title>Advice Steps</title>');
    mywindow.document.write('</head><body >');
    mywindow.document.write("<p>Student No: " + studNo + "</p>");
    mywindow.document.write("<p>Student Name: " + studName + "</p>");
    mywindow.document.write("<p>Course: " + courseCode + "</p>");
    mywindow.document.write("<p>Date: " + new Date().toJSON().slice(0, 10).replace(/-/g, '/') + "</p>");
    mywindow.document.write("<p>Case: " + adviceName + "</p>");
    mywindow.document.write("<p>Steps</p>");
    mywindow.document.write("<ol>");
    for (var i = 0; i < steps.length; i++) {
        mywindow.document.write("<li>" + steps[i] + "</li>");
    }
    mywindow.document.write("</ol>");
    mywindow.document.write('</body></html>');

    mywindow.document.close(); // necessary for IE >= 10
    mywindow.focus(); // necessary for IE >= 10*/

    mywindow.print();
    mywindow.close();

    return true;
}


function checkAdviceStep(studNo, adviceName, adviceStepOrder) {
    var found = false;
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "SELECT * FROM tblAdviceListSteps WHERE studNo = '" + studNo + "' AND adviceName = '" + adviceName + "' AND adviceStepOrder = '" + adviceStepOrder + "';" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            if (XMLrows.length > 0) {
                found = true;
            }
        },
    });
    return found;
}


function checkReturnee(studNo) {
    var currentSchoolYear;
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "select currentYear from tblSchoolYear" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            currentSchoolYear = XMLrows[0].getElementsByTagName("currentYear")[0].innerHTML;
        },
        failure: function (response) {
            alert(response.d);
        }
    });

    var studentSchoolYear;

    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "SELECT TOP 1 gradesYear FROM tblGrades WHERE studNo = '" + studNo + "'  order by gradesYear desc" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            studentSchoolYear = XMLrows[0].getElementsByTagName("gradesYear")[0].innerHTML;
        },
        failure: function (response) {
            alert(response.d);
        }
    });

    if (currentSchoolYear != studentSchoolYear) {
        return true;
    }
    else {
        return false;
    }

}

function searchSubjOffering(subjID) {
    $.alert({
        content: "<div class='text-center' id='subjOff'><br><br><i class='fa fa-question fa-5x'></i><p>No subject offering for this subject yet. Please see your chairperson.</p></div>",
        icon: "fa fa-table",
        title: "View Subject Offerings",
        type: "purple",
        columnClass: "large",
        onOpenBefore: function () {
            $.ajax({
                type: 'POST',
                url: 'Advice.aspx/universalQuery',
                async: false,
                data: JSON.stringify({ SQL: "SELECT *  FROM tblSched Inner Join tblSubj on tblSched.subjID = tblsubj.subjID WHERE tblSched.subjID = '" + subjID + "'" }),
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                success: function (response) {
                    var xml = document.createElement("div");
                    xml.innerHTML = response.d;

                    //XML pareser
                    var text = response.d;
                    var parser, xmlDoc;
                    parser = new DOMParser();
                    xmlDoc = parser.parseFromString(text, "text/xml");

                    //Get Rows From XML
                    var XMLrows = xmlDoc.getElementsByTagName("Table");
                    if (XMLrows.length > 0) {
                        var subjOff = document.getElementById("subjOff");
                        subjOff.className = "";
                        subjOff.innerHTML = "";
                        var subjOffTbl = document.createElement("table");
                        subjOffTbl.className = "table table-stripped";
                        var subjOfftblH = subjOffTbl.insertRow(-1);
                        subjOfftblH.innerHTML = "<th>Subject Code</th><th>Subject Name</th><th>Section</th><th>Room No.</th><th>Professor</th><th>Schedule</th>";
                        subjOff.appendChild(subjOffTbl);
                        for (var i = 0; i < XMLrows.length; i++) {
                            var row = subjOffTbl.insertRow(-1);
                            row.innerHTML = "<td>" + XMLrows[i].getElementsByTagName("subjCode")[0].innerHTML + "</td><td>" + XMLrows[i].getElementsByTagName("subjName")[0].innerHTML + "</td><td>" + XMLrows[i].getElementsByTagName("schedSection")[0].innerHTML + "</td><td>" + XMLrows[i].getElementsByTagName("schedRoom")[0].innerHTML + "</td><td>" + XMLrows[i].getElementsByTagName("schedProf")[0].innerHTML + "</td><td>" + XMLrows[i].getElementsByTagName("schedDesc")[0].innerHTML + "</td>";
                        }
                    }
                }
            });
        }

    });
}


//REAL ADVICE TRIGGERS
function subjFailed(studNo, param1, param2) {
    var toReturn = false;
    //GET F AND P UNITS

    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({
            SQL: "select gradesStatus,SUM(subjUnits) as totalUnits from tblGrades inner join tblSubj on tblGrades.subjID = tblSubj.subjID where gradesYear = (SELECT MAX(gradesYear) FROM tblGrades WHERE studNo = '" + studNo + "') AND gradesSem = (SELECT MAX(gradesSem) FROM tblGrades WHERE studNo = '" + studNo + "') AND studNo = '" + studNo + "' AND (gradesStatus = 'P' OR gradesStatus = 'F') GROUP BY gradesStatus"
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            if (XMLrows.length > 0) {
                if (XMLrows[0].getElementsByTagName("gradesStatus")[0].innerHTML == 'F' && XMLrows[1].getElementsByTagName("gradesStatus")[0].innerHTML == 'P') {

                    var subjF = XMLrows[0].getElementsByTagName("totalUnits")[0].innerHTML;
                    subjF = parseInt(subjF, 10);
                    var subjP = XMLrows[1].getElementsByTagName("totalUnits")[0].innerHTML;
                    subjP = parseInt(subjP, 10)
                    var result = ((subjF + subjP) - subjF) / (subjF + subjP);
                    result = result * 100;

                    if (result > param1 && result < param2) {
                        toReturn = true;
                    }
                    else {
                        toReturn = false;
                    }
                }
            }
            else {
                return false;
            }
        }
    });
    return toReturn;
}

function returnee(studNo) {
    var toReturn = false;
    var yourYr = "";
    var currentYr = "";
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "select max(gradesYear) as latestYear from tblGrades WHERE studNo = '" + studNo + "'" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            if (XMLrows.length > 0) {
                yourYr = XMLrows[0].getElementsByTagName("latestYear")[0].innerHTML;
            }
        }
    });

    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "select currentYear from tblSchoolYear" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            if (XMLrows.length > 0) {
                currentYr = XMLrows[0].getElementsByTagName("currentYear")[0].innerHTML;
            }
        }
    });

    if (currentYr != yourYr) {
        toReturn = true;
    }

    return toReturn;
}

function gpa(studNo, param1, param2) {
    var studAve = "";
    var toReturn = false;
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "select ROUND(AVG(CAST(tblGrades.gradesGrade AS DECIMAL(3,2))),2)  from tblGrades inner join tblSubj on tblGrades.subjID = tblSubj.subjID  where studNo = '" + studNo + "' AND gradesGrade LIKE '%[0-9]%'" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            if (XMLrows.length > 0) {
                studAve = $(XMLrows[0]).find('Column1').html();
                if (parseFloat(studAve) <= parseFloat(param1) && parseFloat(studAve) >= parseFloat(param2)) {
                    toReturn = true;
                }
                else {
                    //alert("false");
                }
            }
        }
    });

    return toReturn;
}

function grad(studNo, studCurr) {
    var toReturn = false;
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "select count(gradesStatus) from tblGrades where studNo = '" + studNo + "' AND gradesStatus = 'P'; select count(*) from tblSubj WHERE currCode = '" + studCurr + "';" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            var XMLrows1 = xmlDoc.getElementsByTagName("Table1");
            if (XMLrows.length > 0) {
                if ($(XMLrows[0]).find("Column1").html() == $(XMLrows1[0]).find("Column1").html()) {
                    toReturn = true;
                }
            }
        }
    });

    return toReturn;
}

function countPostReq(failedSubj) {
    var countSubj = 0;
    $.ajax({
        type: 'POST',
        url: 'Advice.aspx/universalQuery',
        async: false,
        data: JSON.stringify({ SQL: "select count(*) as totPrereq,(select count(*) from tblCoReq where coReq = '" + failedSubj + "')as totCoreq from tblPreReq where preReq = '" + failedSubj + "'" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            var xml = document.createElement("div");
            xml.innerHTML = response.d;

            //XML pareser
            var text = response.d;
            var parser, xmlDoc;
            parser = new DOMParser();
            xmlDoc = parser.parseFromString(text, "text/xml");

            //Get Rows From XML
            var XMLrows = xmlDoc.getElementsByTagName("Table");
            countSubj = countSubj + parseInt($(XMLrows[0]).find("totPrereq").html());
            countSubj = countSubj + parseInt($(XMLrows[0]).find("totCoreq").html());
        }
    });
    return countSubj;
}