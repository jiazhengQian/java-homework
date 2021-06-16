package com.example.HW3.User;

import com.example.HW3.model.User;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static java.nio.file.StandardOpenOption.APPEND;

public class UserManagement {

    public static List<User> loadUsers() {
        List<User>users = new ArrayList<>();
        try (Stream<String> stream = Files.lines(Paths.get(UserConstant.USER_FILE))) {
            users = stream.map(line -> {
                String[] items = line.split("\\|");
                int id = Integer.parseInt(items[0]);
                String name = items[1];
                String pwd = items[2];
                String image = items[3];
                String sign = items[4];
                return new User(id, name, pwd, image,sign);
            }).collect(Collectors.toList());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }

    public static boolean addUser(int id, String name, String pwd, String avatar, String sign) {
        List<String> data = Arrays.asList(String.valueOf(id), name,pwd,avatar,sign);
        String books = System.lineSeparator() + String.join("|", data);
        try{
            Files.write(Paths.get(UserConstant.USER_FILE),
                    books.getBytes("ISO_8859_1"), APPEND);
            return true;
        } catch (IOException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static User getUserByName(String name) {
        List<User> users = UserManagement.loadUsers();
        List<User> target= new ArrayList<>();
        for(int i=0;i<users.size();i++){
            if(users.get(i).getName().equals(name)){
               target.add(users.get(i));
            }
        }
        return target.get(0);
    }

    public static User getUserById(int id) {
        List<User> users = UserManagement.loadUsers();
        List<User> target= new ArrayList<>();
        for(int i=0;i<users.size();i++){
            if(users.get(i).getId()==(id)){
                target.add(users.get(i));
            }
        }
        return target.get(0);
    }
}
