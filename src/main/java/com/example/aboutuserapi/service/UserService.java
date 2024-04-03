package com.example.aboutuserapi.service;

import com.example.aboutuserapi.entity.User;
import com.example.aboutuserapi.repository.UserRepository;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@FieldDefaults(makeFinal = true, level = AccessLevel.PRIVATE)
public class UserService {
    UserRepository userRepository;


    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User addUser(User user){
        return userRepository.save(user);
    }

    public User getUser(Long id){
        return userRepository.getReferenceById(id);
    }

    public List<User> getAllUsers(){
        return userRepository.findAll();
    }
}
