package index;

import characterManagement.CreateUpdateCharacterSheet;

public class EndTheGame {
    
    public static void recordStatsAndQuit() {
        System.out.println("[LOG] Writing to the Character Sheet\n");        
        CreateUpdateCharacterSheet.createUpdateTheCharacterSheet();
        System.out.println("Setting playerCurrentState to FALSE");
        CoreValues.playerCurrentState = false;
    }
}