package index;

import characterManagement.CreateUpdateCharacterSheet;

public class EndTheGame {
    
    public static void recordStatsAndQuit() {    
        CreateUpdateCharacterSheet.createUpdateTheCharacterSheet();
        CoreValues.isPlayerAlive = false;
    }
}