package index;

import characterManagement.CreatePlayer;
import static helpers.KeyCommands.theNextAction;
import static helpers.KeyCommands.whatDoYouWantToDoNext;
import gameText.HelpFile;

public class RunTheGame {
    
    public static void gameFlow() {
        System.out.println("[LOG] Moved to gameFlow()");
        whatDoYouWantToDoNext();

        // Case statement to direct the game given whatever theNextAction is.
        
        switch (theNextAction) {
            case "h":
            case "help":
                HelpFile.helpText();
                System.out.println("[LOG] H and Help - Yet to be implmented.");
                break;
            case "q":
            case "quit":
                System.out.println("[LOG] Q and Quit - Yet to be implemented");
                break;
            default:
                System.out.println("[LOG] Default option in theNextAction switch");   
        }
    }
    
}