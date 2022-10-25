package com.example.service;

import com.example.dao.UserDao;
import com.example.entity.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Optional;

@Service
public class UserService {

    @Resource
    private UserDao userDao;

    //  insert and update
    public void save(User user) {
        String now = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
        user.setCreateTime(now);
        userDao.save(user);
    }

    public void del(Integer id) {
        userDao.deleteById(id);
    }

    public User findById(Integer id) {
        return userDao.findById(id).orElse(null);   // If optional is null return orElse
    }

    public Page<User> findPage(Integer pageNum, Integer pageSize, String name) {
        Sort sort = Sort.by(Sort.Direction.DESC, "create_time");
        Pageable pageRequest = PageRequest.of(pageNum - 1, pageSize,sort);
        System.out.println(pageRequest);
        return userDao.findNameLike(name, pageRequest);
    }
}
