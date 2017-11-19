package services;

import database.MockDatabase;
import entities.App;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;

/**
 * Created by Zeubi on 19/11/2017.
 */
@Path("/app")
public class AppServices {

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public long addApp(App app) {
        MockDatabase.data.addApp(app);
        return app.getIde();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public ArrayList<App> getListApp() {
        return MockDatabase.data.getAppsList();
    }
}

