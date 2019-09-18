package characterManagement;

import index.CoreValues;

import java.io.File;

public class CheckForExistingPlayer {
    
    public static void hasThePlayerPlayedBefore() {
        
       // Load any existing file into tempFile 
       File tempFile = new File("/Users/mark.crowther/NetBeansProjects/HelloWorld/characterSheet.txt");
       
       // Check if a file was loaded into tempFile
        if (tempFile.isFile()) {
            CoreValues.returningPlayerStatus = true;
            System.out.println("[LOG] A Character Sheet already exists");
        } else {
            CoreValues.returningPlayerStatus = false;
            System.out.println("[LOG] There's no Character Sheet");
          }
       
    }
      
}