package com.example.lab7_studentmanage.configuration;

import com.example.lab7_studentmanage.entity.ChatMessage;
import org.springframework.messaging.simp.SimpMessageSendingOperations;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Component;
import org.springframework.web.socket.messaging.SessionDisconnectEvent;

/**
 * lắng nghe sự kiện gửi dữ liệu từ endpoint
 */
@Component
public class WebSocketListener {
    private final SimpMessageSendingOperations messagingTemplate;
    public WebSocketListener(SimpMessageSendingOperations messagingTemplate) {
        this.messagingTemplate = messagingTemplate;
    }
    // lắng nghe sự kiện
    public void disconnect(SessionDisconnectEvent event) {
        ChatMessage msg = new ChatMessage();
        msg.setType(ChatMessage.MessageType.LEAVE);
        msg.setSender("poly");
        messagingTemplate.convertAndSend("/topic/chat", msg);
    }
}
