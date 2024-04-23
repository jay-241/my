package com.example.demo.controller;

import com.example.demo.model.User;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/users")
public class UserController {

    private final UserService userService;

    @Autowired
    public UserController(UserService userService) {
        this.userService = userService;
    }

    @PostMapping("/register")
    public ResponseEntity<?> registerUser(@RequestBody User user) {
        User newUser = userService.registerNewUserAccount(user);

        // Return a DTO if preferred
        // UserDto userDto = convertToDto(newUser);

        return ResponseEntity.ok(newUser); // Avoid returning the full user entity in production
    }

    // Optionally, convert User entity to a DTO to hide password and other sensitive details
    // private UserDto convertToDto(User user) {
    //     // Implementation of conversion logic
    // }
}
