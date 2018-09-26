function getCurrentYearSem() {
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

function enlistPetition(elem, studNo, courseCode) {
    ////////////////////////////////Search SubjID on Petition List
    var searchSubjID = "SELECT * FROM tblPet WHERE petSubjID = '" + elem.value + "'";
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
        var SQLInsert = "INSERT INTO tblPet VALUES('" + elem.value + "','" + courseCode + "','" + getCurrentYearSem()[0] + "','" + getCurrentYearSem()[1] + "','Pending');";
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
        data: JSON.stringify({ SQL: "DELETE FROM tblPetStud WHERE studNo = '" + studNo + "' AND petSubjID = '" + elem.value + "'; INSERT INTO tblPetStud VALUES('" + studNo + "','" + elem.value + "');" }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {
            //INSERT DOES NOT RETURN
        },
        failure: function (response) {
            alert(response.d);
        }
    });
    elem.innerHTML = "Enlisted";
    elem.disabled = true;
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

function getStudAdvProg(elem, studNo,courseCode,studName) {
    var adviceName = elem.parentNode.previousSibling.previousSibling.innerHTML;
    $.confirm({
        title: adviceName,
        icon: 'fa fa-list',
        type: 'purple',
        columnClass: 'large',
        content: "<div style='background: #ECF0F5' class='pad'><ul><li>These are the steps that needed to be accomplished by the students</li><li>Check the advice to record your progress.</li><li>When you are done, the chairperson will validate your progress and confirm.</li></ul><ul id='listStep' class='list-unstyled' ></ul></div>",
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
                step.innerHTML = "<div class='input-group'><span class='input-group-addon stepOrder'>" + (i + 1) + "</span><textarea class='form-control stepsTextArea' rows='1' style='resize:none' disabled>" + currentListStep[i] + "</textarea><span class='input-group-addon'><input type='checkbox' onchange=\"checkOwnStep('"+adviceName+"','" + studNo + "',this)\"></span></div>";
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
                },
            });
        }

    });
}


//REAL ADVICE TRIGGERS
function subjFailed(studNo,param1,param2) {
    return true;
}

