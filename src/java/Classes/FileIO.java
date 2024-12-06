/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Classes;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

/**
 *
 * @author puaas
 */
public class FileIO {
    
    public void fileWriter(ArrayList<String> contents, String filepath) throws IOException{
        try (BufferedWriter out = new BufferedWriter(new FileWriter(filepath, true))) {
            for(String s : contents){
                out.write(s + " ");
            }
            out.newLine();
        }
    }
    
    public ArrayList<String> fileReader(String filepath) throws IOException{
        ArrayList<String> read;
        try (BufferedReader in = new BufferedReader(new FileReader(filepath))) {
            read = new ArrayList<>();
            String line;
            while((line = in.readLine()) != null){
                String[] account = line.split("\\s");
                read.add(account[0]);
                read.add(account[1]);
            }
        }
        return read;
    }
}
