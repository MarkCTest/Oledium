package index;

public class CoreValues {
    
    public static String locationOfCharacterSheet = "/Users/mark.crowther/NetBeansProjects/HelloWorld/";
    
    public static boolean returningPlayerStatus; // true = Played before, false = New Player
    public static boolean playerCurrentState; //false = dead, true = alive

    // Core Character Stats
    public static int playerMaxHp = 100;  // Hit points (HP)
    public static int playerCurrentHp;    // HP of the player once the game is underway
    public static int playerMaxSp = 50;   // Stamina points (SP)
    public static int playerCurrentSp;    // SP of the player once the game is underway
    public static int playerMaxLp = 10;   // Luck points (LP)
    public static int playerCurrentLp;    // LP of the player once the game is underway
    
    // Limits of Stats
    public static int maxAllowableHealth = 100; // No boosts can take base health above 100
    
}