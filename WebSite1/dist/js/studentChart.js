
var semesters;
var averages;


//Get Total Semesters
    $.ajax({
        type: 'POST',
        url: 'studentHome.aspx/getStudentSemester',
        data: JSON.stringify({
            studNo: document.getElementById("lbUser").innerHTML,
            whatToReturn: 0
        }),
        contentType: 'application/json; charset=utf-8',
        dataType: 'json',
        success: function (response) {

            semesters = response.d;
        },
        failure: function (response) { alert(response.d); }
    });

//Get Averages
$.ajax({
    type: 'POST',
    url: 'studentHome.aspx/getStudentSemester',
    data: JSON.stringify({
        studNo: document.getElementById("lbUser").innerHTML,
        whatToReturn: 1
    }),
    contentType: 'application/json; charset=utf-8',
    dataType: 'json',
    success: function (response) {

        averages = response.d;
    },
    failure: function (response) { alert(response.d); }
});

//If tapos na ung mga ajax
$(document).ajaxStop(function () {
    createGraph(semesters, averages);
});


function createGraph(mylabels,mydatas) {
    var ctx = document.getElementById("myChart");

    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: mylabels,
            datasets: [{
                label: "Averages",
                backgroundColor: 'rgba(255, 99, 132,0)',
                borderColor: '#605CA8',
                data: mydatas,
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        reverse: true,
                        suggestedMin: 1,
                        stepSize: .5
                    }
                }],
                xAxes: [{
                    ticks: {
                        reverse: true,
                        stepSize: 1
                    }
                }]
            }
        }
    });

}
