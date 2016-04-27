package _500_interceptor;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import _500_model.MemberBean;
import _500_model.MemberService;

public class AuthenticationInterceptor extends AbstractInterceptor{
	private HttpServletRequest req;
	
	public HttpServletRequest getReq() {
		return req;
	}

	public void setReq(HttpServletRequest req) {
		this.req = req;
	}

	public String intercept(ActionInvocation invocation)throws Exception{
		ActionContext ctx=invocation.getInvocationContext();
	    Map<String,Object> session=ctx.getSession();
	   MemberService service=new MemberService();
	   
	   HttpServletRequest request=ServletActionContext.getRequest();
	   HttpSession session2=request.getSession();
	    MemberBean bean=null;
	  if(session2.getAttribute("memberID")!=null){
		  bean= service.selectMemberById((Integer)session2.getAttribute("memberID"));
	  }
	  if(session2.getAttribute("loginOK")==null){
		  ctx.put("errorMsg", "尚未登入，請先登入");
		  return "input";
	  }
	return invocation.invoke();
	
	}

}