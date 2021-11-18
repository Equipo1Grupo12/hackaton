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

import co.com.Hackaton.dao.ProyectoDao;
import co.com.Hackaton.model.Proyecto;

@Controller
@RequestMapping("proyecto")
public class ProyectoController {
	
	@Autowired
	private ProyectoDao proyectoDao;
	
	@GetMapping("")
	List<Proyecto> getProyectos(){
		return proyectoDao.findAll();
	}
	
	@ResponseStatus(HttpStatus.CREATED)
	@PostMapping("")
	public Proyecto crearProyecto(@RequestBody Proyecto proyecto) {
		return proyectoDao.save(proyecto);
	}
	
	@PutMapping("{id}")
	public Proyecto actualizarProyecto(@PathVariable int id, @RequestBody Proyecto proyecto) {
		Proyecto proyectoBase = proyectoDao
				.findById(id)
				.orElseThrow(RuntimeException::new);
		
		proyectoBase.setDescripcion(proyecto.getDescripcion());
		proyectoBase.setFacebook(proyecto.getFacebook());
		proyectoBase.setInstagram(proyecto.getInstagram());
		proyectoBase.setMeta(proyecto.getMeta());
		proyectoBase.setNombre(proyecto.getNombre());
		proyectoBase.setOtros(proyecto.getOtros());
		proyectoBase.setTwitter(proyecto.getTwitter());
		proyectoBase.setYoutube(proyecto.getYoutube());
		
		
		return proyectoDao.save(proyectoBase);
	}
	
	@ResponseStatus(HttpStatus.CREATED)
	@DeleteMapping("{id}")
	public void borrarProyecto(@PathVariable int id) {
		Proyecto proyecto = proyectoDao
				.findById(id)
				.orElseThrow(RuntimeException::new);
		proyectoDao.delete(proyecto);
	}
	
	@GetMapping("{id}")
	public Proyecto buscarPorId(@PathVariable int id) {
		return proyectoDao.findById(id).get();
	}
}
