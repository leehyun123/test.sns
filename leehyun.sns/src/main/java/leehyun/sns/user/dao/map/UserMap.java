package leehyun.sns.user.dao.map;

import java.util.List;

import leehyun.sns.user.domain.User;

public interface UserMap {
	List<User> getUsers();

	User getUser(String userId); 

	int addUser(User user);

	int updateUser(User user);
	
	int delUser(int userNo);
	
	User pwUser(String userId);
	
	User loginChk(String userId);
}
