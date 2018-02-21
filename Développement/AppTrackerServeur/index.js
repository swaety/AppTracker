var fs = require('fs');
var RandomForestClassifier = require('random-forest-classifier').RandomForestClassifier;
var file = __dirname + '/app.json';
var result = [];
module.exports = {
	
	test: function(testdata) { 
		fs.readFile(file, 'utf8', function (err, data) {
			if (err) {
				console.log('Error reading iris json file: ' + err);
			}

			data = JSON.parse(data);
			
			var dynamicData = data;
			var tempdata = [];
			var res = "";

			//création du RF
			var rf = new RandomForestClassifier({
					n_estimators: 1
				});

			//Boucle de 6 pour les 6 apps sur une entrée
			for(i=0; i<6; i++){
					
				//Random forest
				rf.fit(dynamicData, ["heure", "minute","jourSemaine"], "nom", function(err, trees){
					var pred = rf.predict(testdata, trees);
					//console.log(pred[0]);
					res = pred[0];
				});
				
				//Supression dans le Json du resultat du RF
				for(j=0; j<dynamicData.length; j++){
					if(dynamicData[j].nom == res || dynamicData[j] == null){
						delete dynamicData[j];
					}
				}
				
				tempdata = dynamicData;
				dynamicData = [];
				var z = 0;
				
				//Copie du Json dans un array temporaire pour supprimer les NULL Objects
				for(k=0; k<tempdata.length; k++){
					if(tempdata[k] == null){
					}
					else{
						dynamicData[z]=tempdata[k];
						z++;
					}
				}
				//Ajout de chaque resultats du RF dans l'array a retourner
				result[i]= res;
			}
			///////////////////////////////////////////////////////////////////////////////////
		});
		return result;
	}
};