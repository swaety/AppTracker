package database;


import entities.*;

import java.util.ArrayList;
/**
 * Created by Zeubi on 19/11/2017.
 */

public class MockDatabase {
    public static MockDatabase data = new MockDatabase();

    private ArrayList<App> appsList;

    public MockDatabase(){
        appsList = new ArrayList<App>();
    }

    public void addApp(App app) {
        app.generateID();
        appsList.add(app);
    }

    public ArrayList<App> getAppsList() {
        return appsList;
    }
}