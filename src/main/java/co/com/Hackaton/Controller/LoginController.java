package co.com.Hackaton.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.com.Hackaton.dao.PersonaDao;
import co.com.Hackaton.model.Persona;

@Controller
@RequestMapping("login")
public class LoginController {
	
	@Autowired
	private PersonaDao personaDao;
	
	@GetMapping
	public String mostrarLogin(){
		return "login";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public ModelAndView getLogin() {
		ModelAndView modelo = new ModelAndView();
		modelo.setViewName("login");
		return modelo;
	}
	
	@RequestMapping(value = "menu", method = RequestMethod.GET)
	public ModelAndView getMenu() {
		String mensaje = "<h3>Error de usuario o contraseña</h3>";
		ModelAndView modelo = new ModelAndView();
		modelo.setViewName("menu");
		modelo.addObject(mensaje);
		return modelo;
	}
	
	@RequestMapping(value ="validador",  method = RequestMethod.GET)
	public ModelAndView getValidLogin(HttpServletRequest req, HttpServletResponse resp) {
		ModelAndView modelo = new ModelAndView();
		String usuario = req.getParameter("user");
		String password = req.getParameter("pass");
		List<Persona> personas= personaDao.findAll();
		
		for(Persona auxPersona : personas) { 
			if(usuario.equals(auxPersona.getUsuario()) && password.equals(auxPersona.getPassword())) {
				modelo.setViewName("menu");
			}else {
				modelo.setViewName("login");
			}
		}
		return modelo;
	}
}
