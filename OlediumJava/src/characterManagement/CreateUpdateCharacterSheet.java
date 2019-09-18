package characterManagement;

import java.util.Formatter;

import characterManagement.CreatePlayer;
import index.CoreValues;

public class CreateUpdateCharacterSheet {
    
    public static void createUpdateTheCharacterSheet() {
        
        try {
            //Formatter f = new Formatter(CoreValues.locationOfCharacterSheet + "characterSheet.txt");
            Formatter f = new Formatter("characterSheet.txt");
            
            
            f.format("%s", "                 o**{====>   <====}**o                 \n\n");
            f.format("%s", "####################   CHARACTER   ####################\n");
            f.format("%s", "#                                                      \n");
            f.format("%s", "#  Character Name: " + CreatePlayer.thePlayerName + "  \n");
            f.format("%s", "#      Hit Points:                                     \n");
            f.format("%s", "#         Stamina:                                     \n");
            f.format("%s", "#        Strength:                                     \n");
            f.format("%s", "#            Luck:                                     \n");
            f.format("%s", "#                                                      \n");
            f.format("%s", "#######################################################\n");
            f.format("%s", "                                                       \n");
            f.format("%s", "####################   INVENTORY   ####################\n");
            f.format("%s", "#                                                      \n");
            f.format("%s", "#    Head:                                             \n");
            f.format("%s", "#   Chest:                                             \n");
            f.format("%s", "#    Arms:                                             \n");
            f.format("%s", "#   Hands:                                             \n");            
            f.format("%s", "#    Legs:                                             \n");            
            f.format("%s", "#    Feet:                                             \n");
            f.format("%s", "#   Charm:                                             \n");            
            f.format("%s", "#                                                      \n");
            f.format("%s", "#######################################################\n");
            
            f.close();
            
            System.out.println("[LOG] Character Sheet generated");
            
        } catch(Exception e) {
            System.out.println("[LOG] Error with in createUpdateCharacterSheet()");
        }
        
    }
}