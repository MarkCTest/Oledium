package helpers;

import java.util.Scanner;
import characterManagement.CreatePlayer;

public class KeyCommands {
    
    public static String theNextAction;
    
    // Used to hold a player at a certain point
    public static void waitForEnterKey() {
        Scanner getEnterKey = new Scanner(System.in);
        System.out.println("\n    Press [ENTER] to continue...");
        getEnterKey.nextLine();
    }
    
    // Gets the next action from the Player
    public static String whatDoYouWantToDoNext() {
        Scanner getNextAction = new Scanner(System.in);
        System.out.println("\n          What do you want to do next? ");
        System.out.println("          ----------------------------");
        theNextAction = getNextAction.nextLine();
        return theNextAction;
    }

}