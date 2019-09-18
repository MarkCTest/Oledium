package index;

import characterManagement.CreatePlayer;
import index.CoreValues;
import static helpers.KeyCommands.whatDoYouWantToDoNext;
import gameText.HelpFile;

public class RunTheGame {
    
    public static void gameFlow() {
        
        while (CoreValues.isPlayerAlive == true) {
                                       
            whatDoYouWantToDoNext();

            // Case statement to direct the game given whatever theNextAction is
            // TODO : Could be converted to an ENUM
            switch (CoreValues.theNextAction) {
                case "h":
                case "help":
                    HelpFile.helpText();
                    System.out.println("[LOG] h and help - Yet to be implmented. \n\n");
                    break;
                case "q":
                case "quit":
                    System.out.println("[LOG] q and quit\n");
                    index.EndTheGame.recordStatsAndQuit();                   
                    break;
                case "a":
                case "attack":
                    System.out.println("[LOG] a and attack - Yet to be implemented \n\n");
                    break;                    
                case "f":
                case "flee":
                    System.out.println("[LOG] f and flee - Yet to be implemented \n\n");
                    break;
                case "s":
                case "search":
                    System.out.println("[LOG] s and search - Yet to be implemented \n\n");
                    break;                    
                default:
                    System.out.println("[LOG] Default option in theNextAction switch \n\n");
                    break;
            }
        }

    }
    
}