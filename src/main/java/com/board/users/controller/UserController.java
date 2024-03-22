package com.board.users.controller;

import java.time.DayOfWeek;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.board.users.domain.UserVo;
import com.board.users.mapper.UserMapper;




@Controller
@RequestMapping("/Users")
public class UserController {
	
	@Autowired
	private UserMapper userMapper;
	//Users/List
	@RequestMapping("List")
	public ModelAndView list() {
		System.out.println("fhnsoignwsg");
		// 목록 조회
		List<UserVo> userList = userMapper.getUserList();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("userList", userList);
		mv.setViewName("users/userlist");
		// .jsp 이동
		return mv;
	}
	///Users/WriteForm
	@RequestMapping("/WriteForm")
	public ModelAndView writeForm() {
		
		ModelAndView mv = new ModelAndView();
		LocalDateTime today = LocalDateTime.now();
		String now = today.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss:SSS"));
		DayOfWeek wkday = today.getDayOfWeek();
      	now += " " +  wkday;
		System.out.println("--------------------------fdsfsdfsdf");
		mv.addObject("now", now);
		mv.setViewName("users/write");
		
		return mv;
	}
	
	@RequestMapping("/Write")
	public ModelAndView Write(UserVo userVo) {
		//userMapper.inserUser(userVo);
		ModelAndView mv = new ModelAndView();
		userMapper.insertUser(userVo);
		mv.setViewName("redirect:/Users/List");
		return mv;
	}
}
