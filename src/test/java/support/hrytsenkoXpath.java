package support;

public class hrytsenkoXpath {

    public static String AskUrl = "http://ask-stage.portnov.com";
    public static String AskRegUrl = "http://ask-stage.portnov.com/#/registration";
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
        if (name.equals("FirstNameField")) {
            return "//input[@formcontrolname='firstName']";
        }
        if (name.equals("LastNameField")) {
            return "//input[@formcontrolname='lastName']";
        }
        if (name.equals("ConfirmPasswordField")) {
            return "//input[@formcontrolname='confirmPassword']";
        }
        if (name.equals("GroupCodeField")) {
            return "//input[@formcontrolname='group']";
        }
        if (name.equals("SubmitRegButton")) {
            return "//span[contains(text(),'Register Me')]";
        }
        return "";
    }
}
