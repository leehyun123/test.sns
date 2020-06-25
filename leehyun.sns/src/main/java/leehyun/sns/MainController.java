package leehyun.sns;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class MainController {
	
	@RequestMapping("/")
	public String main() {
		return "main";
	}
	
	@RequestMapping("/admin/main")
	public String adminMain() {
		return "/admin/main";
	}
	
	@RequestMapping("common/footer")
	public void footer() { 
	}
	
	@RequestMapping("common/header")
	public void header() {
	}	

	@RequestMapping("admin/common/header")
	public void adminHeader() {
	}
	
	@RequestMapping("admin/common/nav")
	public void adminNav() {
	}
}
