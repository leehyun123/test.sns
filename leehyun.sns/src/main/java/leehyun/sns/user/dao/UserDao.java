package leehyun.sns.user.dao;

import java.util.List;

import leehyun.sns.user.domain.User;

public interface UserDao {
	List<User> getUsers();

	User getUser(String userId);

	boolean addUser(User user);

	boolean updateUser(User user);

	boolean delUser(int userNo);
	
	User pwUser(String userId);
	
	User loginChk(String userId);
}
