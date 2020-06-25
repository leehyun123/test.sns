package leehyun.sns.user.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter {

   @Override
   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
         throws Exception {
      boolean isLogin = true;
      System.out.println(request.getRequestURL());
      if(!request.getRequestURI().equals("/sns/user/login") 
    		  && !request.getRequestURI().equals("/sns/admin/main")
    		  && !request.getRequestURI().equals("/sns/user/addUser") 
    		  && !request.getRequestURI().equals("/sns/user/findUser")
    		  && !request.getRequestURI().equals("/sns/user/mail")
    		  && !request.getRequestURI().equals("/sns/res/layout.js")
    		  && !request.getRequestURI().equals("/sns/common/footer")
    		  && !request.getRequestURI().equals("/sns/common/header")
    		  && !request.getRequestURI().equals("/sns/admin/common/nav")
    		  && !request.getRequestURI().equals("/sns/admin/common/header")){
         String userId = (String)request.getSession().getAttribute("userId");
         if(userId != null){
            isLogin = true;
         }else{
        	response.sendRedirect("/sns/user/login");
            isLogin = false;
         }
      }
      return isLogin;
   }
}