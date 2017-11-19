package serveur;


import database.MockDatabase;
import saveData.JSONData;

import java.io.File;

public class InitServer {

    private static File app = new File("./src/main/resources/app.txt");

    public InitServer(){}

    public void initialisation(){

        JSONData.saveJSON(MockDatabase.data.getAppsList(), app);
    }
}

