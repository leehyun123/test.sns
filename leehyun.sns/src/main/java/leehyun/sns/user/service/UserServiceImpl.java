package leehyun.sns.user.service;

import java.util.List;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import leehyun.sns.user.dao.UserDao;
import leehyun.sns.user.domain.User;

@Service
public class UserServiceImpl implements UserService{
	@Autowired private UserDao userDao;
	@Autowired JavaMailSender mailSender;
	public UserServiceImpl(UserDao userDao) {
		this.userDao = userDao;
	}
	
	@Override
	public List<User> listUsers(){
		return userDao.getUsers();
	}
	
	@Override
	public User findUser(String userId) {
		return userDao.getUser(userId);
	}
	
	@Override
	public boolean join(User user) {
		return userDao.addUser(user);
	}
	
	@Override
	public boolean correctUser(User user) {
		return userDao.updateUser(user);
	}
	
	@Override
	public boolean secede(int userNo) {
		return userDao.delUser(userNo);
	}
	
	@Override
	public User findPw(String userId) {
		return userDao.pwUser(userId);
	}
	
	@Override
	public User chkUser(String userId) {
		return userDao.loginChk(userId);
	}
	
	@Override
	public void send(String email, int emailNum) {
		MimeMessage message = mailSender.createMimeMessage(); // 메일 내용으로 html 문장을 넣고싶을 때
		String txt = "<h1>FANPLE 인증 번호 입니다.</h1> <br> 안녕하세요. <b>FANPLE</b>입니다. <br>";
		txt += "<hr><h2><mark>" + emailNum + "</mark></h2><hr><br>";
		txt += "인증 번호를 정확히 입력해주세요.";
		try {
			message.addRecipient(RecipientType.TO, new InternetAddress(email));
			message.setSubject("FANPLE - 이메일 인증 번호");
			message.setText(txt, "utf-8", "html");
		}catch(Exception e) {}
		
		mailSender.send(message);
	}
}
