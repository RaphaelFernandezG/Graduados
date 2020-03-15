package graduado.util;

import graduado.entities.Administrador;
import graduado.entities.Evento;
import graduado.entities.Eventoprin;
import graduado.entities.Ofertala;
import graduado.model.AdministradorDao;
import graduado.model.EventoDao;
import graduado.model.EventoprinDao;
import graduado.model.OfertalabDao;

public class Prueba {

	public static void main(String[] args) {
		/*String id = "EV1";
		String ciudad = "Cucuta";
		String fechaini = "9/10/2019";
		String fechafin = "3/03/2021";
		String lugar = "Marte";
		String nombre = "Colonizacion";
		
		Evento e = new Evento();
		e.setCiudad(ciudad);
		e.setFechafin(fechafin);
		e.setFechaini(fechaini);
		e.setId(id);
		e.setLugar(lugar);
		e.setNombre(nombre);
		
		EventoDao eDao = new EventoDao();
		eDao.insert(e);
		System.out.println("REGISTRO EXITOSO DEL EVENTO: "+ e.getNombre());*/
		
		/*String id = "EP1";
		String descripcion = "Los humanos habitan el planeta Rojo";
		String evento = "1";
		
		EventoDao eveDao = new EventoDao();
		Evento eve = eveDao.find(evento);
		
		Eventoprin evePrin = new Eventoprin();
		evePrin.setDescripcion(descripcion);
		evePrin.setId(id);
		evePrin.setEvento(eve);
		
		EventoprinDao evePrinDao = new EventoprinDao();
		evePrinDao.insert(evePrin);*/
		
		/*Administrador admin = new Administrador();
		String username = "admin";
		String password = "123";
		
		admin.setUser(username);
		admin.setPassword(password);
		
		AdministradorDao adminDao = new AdministradorDao();
		
		Administrador a = new Administrador();
		a = adminDao.find(admin.getUser());
		
		System.out.println(a.getUser() +" "+a.getPassword());
		
		if(admin.getUser().equals(a.getUser()) && admin.getPassword().equals(a.getPassword())) {
			System.out.println("login exitoso");
		}else {
			System.out.println("login failed");
		}*/
		
		
		/*String id_eve = "EV2";
		String nombre = "Rueda de Negocios";
		String ciudad = "Cucuta";
		String lugar = "UFPS, Posgrados";
		String fechaini = "18/11/2019";
		String fechafin = "18/11/2019";
		
		Evento e = new Evento();
		e.setCiudad(ciudad);
		e.setFechafin(fechafin);
		e.setFechaini(fechaini);
		e.setIdEve(id_eve);
		e.setLugar(lugar);
		e.setNombre(nombre);
		
		EventoDao eDao = new EventoDao();
		/*eDao.insert(e);*/
		
		
		/*String id_evef = e.getIdEve();
		String id_eveprin = "EVP1";
		String descripcion = "Primera edicion";
		
		Eventoprin eprin = new Eventoprin();
		eprin.setDescripcion(descripcion);
		eprin.setEvento(e);
		eprin.setId(id_eveprin);
		
		EventoprinDao eprinDao = new EventoprinDao();
		/*eprinDao.insert(eprin);*/
		
	}
		
			
}
		

