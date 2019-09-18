package index;

import helpers.KeyCommands;
import gameText.SplashScreens;
import gameText.BackStory;
import characterManagement.CreatePlayer;
import characterManagement.CreateUpdateCharacterSheet;
import characterManagement.CheckForExistingPlayer;
import index.CoreValues;
import index.RunTheGame;

public class GameIndex {
    
    public static void main(String[] args) {
        
        SplashScreens.splashTitle();
        SplashScreens.mountainImage();
        
        CheckForExistingPlayer.hasThePlayerPlayedBefore();
        
        // Cut the backstory if the player has played before
        if (CoreValues.returningPlayerStatus == true) {
            System.out.println("Welcome back!");
            
        } else { // The player is new so they get backstory            
            CreatePlayer.generateNewPlayerCharacter();
            
            BackStory.backStory();
            KeyCommands.waitForEnterKey();

            BackStory.gameStartText();
            BackStory.onYourOwn();
        }
       
        // Run the Game now we have our Player created / loaded in
        RunTheGame.gameFlow();

    }

}