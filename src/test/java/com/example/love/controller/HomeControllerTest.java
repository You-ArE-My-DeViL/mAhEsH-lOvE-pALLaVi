import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeControllerTest {

    @GetMapping("/")
    public String home(Model model) {
        // Adding the 'message' attribute to the model
        model.addAttribute("message", "I LOVE YOU DEAR PALLAVI!");
        return "index";
    }
}

