package com.example.lab7_studentmanage.controller;

import com.example.lab7_studentmanage.entity.ChatMessage;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;

@Controller
public class SimpleChatControler {
    @MessageMapping("/simple-chat")
    @SendTo("/topic/simple-chat")
    public ChatMessage sendMessage(ChatMessage message){
        return message;
    }
}
