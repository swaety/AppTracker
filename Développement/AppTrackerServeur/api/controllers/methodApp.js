'use strict';
var tools = require('./../../index.js');
exports.list_app = function(req, res) {

	var date = new Date();
    var hour = date.getHours();
	var min  = date.getMinutes();
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day  = date.getDate();
	var weekday = new Array(7);
    weekday[0] = 7;
    weekday[1] = 1;
    weekday[2] = 2;
    weekday[3] = 3;
    weekday[4] = 4;
    weekday[5] = 5;
    weekday[6] = 6;

    var n = weekday[date.getDay()];
	
	var testdata = [{
		"heure": 20,
		"minute": 42,
		"jourSemaine": 7,
		"lat": 43.599016,
		"lng": 7.10364,
		"vitesse": 0
	  }
	];
	var envoi = "[{\"dateJour\": "+day+",\"dateMois\": "+month+",\"dateAnnee\": "+year+",\"heure\": "+hour+",\"minute\": "+min+",\"jourSemaine\": "+n+",\"lat\": 43.599016,\"lng\": 7.10364,\"vitesse\": 0}]"
	var testdata2 = JSON.parse(envoi);
    res.json(tools.test(testdata2));
};