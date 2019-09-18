package gameText;

import characterManagement.CreatePlayer;

public class BackStory {
    
    public static void backStory() {
        System.out.println("  *~~~~~~~~~~~~~~~~~~~~~~~ **{====> Welcome! <====}** ~~~~~~~~~~~~~~~~~~~~~~~~~~*");
        System.out.println("  | You awake in daylight, on the barren shores of Oledium, battered but alive. |");
        System.out.println("  * Mountains rise in the distance and a harsh wind drives against you.         *");
        System.out.println("  | The storm in the night is the last thing you remember...                    |");
        System.out.println("  *~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*");
    }
    
    public static void gameStartText() {
        System.out.println("  *......................................................................*");
        System.out.println("  | You are dressed in the clothes you wore aboard ship. They are soaked |");
        System.out.println("  | and torn and your great coat is beyond use. Fortunately, your dagger |");
        System.out.println("  | still hangs on your belt.                                            |");
        System.out.println("  |                                                                      |");
        System.out.println("  | > You have no food or drink, so need to find some fast               |");
        System.out.println("  | > Enter [tips] for game tips and for Help enter [h]                  |");
        System.out.println("  | > Enter [char] for your Character Sheet                              |");        
        System.out.println("  *......................................................................*\n");
    }
    
    public static void onYourOwn() {
        System.out.println("o**{====>    You're on your own now, " + CreatePlayer.thePlayerName + ". Good luck!    <====}**o");
    }
    
}
