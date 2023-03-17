package support;

public class hrytsenkoXpath {

    public static String AskUrl = "http://ask-stage.portnov.com";
    public static String ElementFor(String name) {
        if (name.equals("EmailField")) {
            return "//input[@formcontrolname='email']";
        }
        if (name.equals("PasswordField")) {
            return "//input[@formcontrolname='password']";
        }
        if (name.equals("SubmitButton")) {
            return "//span[contains(text(),'Sign In')]";
        }
        return "";
    }
}
