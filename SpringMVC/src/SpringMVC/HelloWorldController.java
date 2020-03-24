package SpringMVC;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showInitialForm() {
		return "initialForm";
	}
	
	@RequestMapping("/processForm")
	public String showSuccess() {
		return "helloWorld";
	}

}
