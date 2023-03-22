package support;

public class IrinaD2XpathLib {
    public static String PIN_URL = ("https://www.pinterest.com/");

    public static String getXpath(String name) {
        if (name.equals("Blog")) {
            return "//a[contains(text(), 'Blog')]";
        }
        if (name.equals("Newsroom")) {
            return "//div[contains(text(),'Newsroom')]";
        }
        if (name.equals("Login")) {
            return "//div[contains(text(), 'Log in')]";
        }
        if (name.equals("Email")) {
            return "//input[@type='email']";
        }
        if (name.equals("Password")) {
            return "//input[@type='password']";
        }
        if (name.equals("Log in")) {
            return "(//div[contains(text(), 'Log in')])[2]";
        }
        if (name.equals("Home")) {
            return "//div/div/..//span[contains(text(),'Home')]";
        }
        if (name.equals("Search")) {
            return "//input[@placeholder='Search']";
        }
        if (name.equals("Chicken")) {
            return "//input[@placeholder='Search']";
        }
        if (name.equals("Search your Pins")) {
            return "//input[@placeholder='Search your Pins']";
        }
        if (name.equals("food recipes")) {
            return "(//span[contains(text(), 'food')])[2]";
        }
        if (name.equals("Chinese")) {
            return "//div[contains(text(),'Chinese')]";
        }
        if (name.equals("orange chicken")) {
            return "//img[@alt='This contains an image of: Homemade Orange Chicken Recipe']";
        }
        if (name.equals("Save")) {
            return "//div[contains(text(),'Save')]";
        }
        return "";
    }
}


