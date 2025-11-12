package com.example.buoi4.service;

import com.example.buoi4.entity.User;
import com.example.buoi4.repository.RoleDAO;
import com.example.buoi4.repository.UserDao;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class DaoUserDetailManager implements UserDetailsService {
    private final UserDao userDao;
    @Override
    @Transactional
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
        UserDao userDao = this.userDao;
        User user = userDao.findById(username).orElse(null);
        if(user != null){
            String password = user.getPassword();
            String[] roles=user.getUserRoles().stream().map(ur->ur.getRole().getId().substring(5))
                    .toList().toArray(new String[0]);
            return org.springframework.security.core.userdetails.User.withUsername(username).password(user.getPassword()).roles(roles).build();
        }
        throw new UsernameNotFoundException(username);
    }
}
