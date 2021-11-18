package co.com.Hackaton.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;

import co.com.Hackaton.dao.PersonaDao;
import co.com.Hackaton.model.Persona;

@Controller
@RequestMapping("persona")
public class PersonaController {
	
	@Autowired
	private PersonaDao personaDao;
	
	@GetMapping("")
	List<Persona> getPersonas(){
		return personaDao.findAll();
	}
	
	@ResponseStatus(HttpStatus.CREATED)
	@PostMapping("")
	public Persona crearPersona(@RequestBody Persona persona) {
		return personaDao.save(persona);
	}
	
	@PutMapping("{id}")
	public Persona actualizarPersona(@PathVariable int id, @RequestBody Persona persona) {
		Persona personaBase = personaDao
				.findById(id)
				.orElseThrow(RuntimeException::new);
		
		personaBase.setEmail(persona.getEmail());
		personaBase.setEdad(persona.getEdad());
		personaBase.setPassword(persona.getPassword());
		personaBase.setTelefono(persona.getTelefono());
		
		return personaDao.save(personaBase);
	}
	
	@ResponseStatus(HttpStatus.CREATED)
	@DeleteMapping("{id}")
	public void borrarPersona(@PathVariable int id) {
		Persona persona = personaDao
				.findById(id)
				.orElseThrow(RuntimeException::new);
		personaDao.delete(persona);
	}
	
	@GetMapping("{id}")
	public Persona buscarPorId(@PathVariable int id) {
		return personaDao.findById(id).get();
	}
}
