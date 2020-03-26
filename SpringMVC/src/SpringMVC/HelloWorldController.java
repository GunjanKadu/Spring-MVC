package SpringMVC;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

	// new controller method to read form data
	@RequestMapping("/processFormVersionTwo")
	public String letsShoutDude(HttpServletRequest request, Model model) {

		// read the request parameter form the HTMl form
		String theName = request.getParameter("studentName");

		// convert the data to all caps
		theName = theName.toUpperCase();

		// create the message
		String result = "yoo!" + theName;

		// add message to the model
		model.addAttribute("message", result);

		return "helloWorld";
	}

	@RequestMapping("/processFormVersionThree")
	public String processFormVersionThree(@RequestParam("studentName") String theName, Model model) {

		// convert the data to all caps
		theName = theName.toUpperCase();

		// create the message
		String result = "Hey My Friend V3 " + theName;

		// add message to the model
		model.addAttribute("message", result);

		return "helloWorld";
	}

}
