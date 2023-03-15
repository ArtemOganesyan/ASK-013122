package support;

public class XpathirinaDLib {
    public static String url = ("http://ask-stage.portnov.com/#/registration");

    public static String ElementForIrinaD(String name) {
        if (name.equals("FirstName")) {
            return "//input[@formcontrolname='firstName']";
        } else if (name.equals("LastName")) {
            return "//input[@formcontrolname='lastName']";
        } else if (name.equals("Email")) {
                return "//input[@formcontrolname='email']";
            } else if (name.equals("GroupCode")) {
            return "//input[@formcontrolname='group']";
        } else if (name.equals("Password")){
            return "//input[@formcontrolname='password']";
        } else if (name.equals("ConfirmPassword")) {
            return "//input[@formcontrolname='confirmPassword']";
        } else if (name.equals("RegisterMe")){
            return "//span[contains (text(), 'Register Me')]";
        }
            return "";
        }

    }
