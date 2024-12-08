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
import java.util.HashMap;

/**
 *
 * @author puaas
 */
public class FileIO {
    
    public void fileWriter(ArrayList<String> contents, String filepath) throws IOException{
        try (BufferedWriter out = new BufferedWriter(new FileWriter(filepath, true))) {
            for(String s : contents){
                out.write(s + ",");
            }
            out.newLine();
        }
    }
    
    public HashMap<String, String> usersReader(String filepath) throws IOException{
        HashMap<String, String> read;
        try (BufferedReader in = new BufferedReader(new FileReader(filepath))) {
            read = new HashMap<>();
            String line;
            while((line = in.readLine()) != null){
                String[] account = line.split(",");
                read.put(account[0], account[1]);
            }
        }
        return read;
    }
    
    public ArrayList<String> recordsReader(String filepath) throws IOException{
        ArrayList<String> records;
        try (BufferedReader in = new BufferedReader(new FileReader(filepath))) {
            records = new ArrayList<>();
            String line;
            while((line = in.readLine()) != null){
                records.add(line);
            }
        }
        return records;
    }
}
