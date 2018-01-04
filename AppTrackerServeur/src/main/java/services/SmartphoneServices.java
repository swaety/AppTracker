package services;


import database.MockDatabase;
import entities.App;
import entities.Smartphone;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import java.util.ArrayList;

@Path("/smartphone")
public class SmartphoneServices {

    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public long addSmartphone(Smartphone smartphone) {
        MockDatabase.data.addSmartphone(smartphone);
        return smartphone.getUuid();
    }

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public ArrayList<Smartphone> getListSmartphone() {
        return MockDatabase.data.getSmartphonesList();
    }

    @GET
    @Path("/{id}")
    @Produces(MediaType.APPLICATION_JSON)
    public ArrayList<App> getListSmartphoneApp(@PathParam("id") long id) {
        return MockDatabase.data.getAppsListbyUuid(id);
    }
}
