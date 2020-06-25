package leehyun.sns.user.service;

import java.util.List;

import leehyun.sns.user.domain.User;

public interface UserService {
	List<User> listUsers();

	User findUser(String userId);

	boolean join(User user);

	boolean correctUser(User user);

	boolean secede(int userNo);
	
	User findPw(String userId);
	
	User chkUser(String userId);
	
	void send(String email, int emailNum);
}
