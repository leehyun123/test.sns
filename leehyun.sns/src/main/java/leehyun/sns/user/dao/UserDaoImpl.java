package leehyun.sns.user.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import leehyun.sns.user.dao.map.UserMap;
import leehyun.sns.user.domain.User;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired private UserMap userMap;
	
	private List<User> users;
	boolean isCheck;
	
	public UserDaoImpl() {
		this.users = new ArrayList<User>();
	}
	
	@Override
	public List<User> getUsers(){
		users = userMap.getUsers(); 
		return users;
	}
	
	@Override
	public User getUser(String userId) {
		User user = userMap.getUser(userId); 
		return user;
	}
	

	@Override
	public boolean addUser(User user) {
		isCheck = false;
		int cnt = userMap.addUser(user);
		if(cnt > 0 )
			isCheck = true;
		return isCheck;
	}
	
	@Override
	public boolean updateUser(User user) {
		isCheck = false;
		int cnt = userMap.updateUser(user);
		if(cnt > 0 )
			isCheck = true;
		return isCheck;
	}
	
	@Override
	public boolean delUser(int userNo) {
		isCheck = false;
		int cnt = userMap.delUser(userNo);
		if(cnt > 0 )
			isCheck = true;
		return isCheck;
	}
	
	@Override
	public User pwUser(String userId) {
		User user = userMap.pwUser(userId);
		return user;
	}
	
	@Override
	public User loginChk(String userId) {
		User user = userMap.loginChk(userId);
		return user;
	}
}