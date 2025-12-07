package com.example.lab7_studentmanage.entity;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Builder
public class ChatMessage {
public enum MessageType {
    CHAT,JOIN,LEAVE
}
@Builder.Default
    private MessageType type = MessageType.CHAT;
    private String content;
    private String sender;
}
