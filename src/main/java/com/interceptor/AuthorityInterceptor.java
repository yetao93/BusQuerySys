package com.interceptor;

import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthorityInterceptor extends AbstractInterceptor{
	private static final long serialVersionUID = 1L;

	public String intercept(ActionInvocation invocation) throws Exception {
		ActionContext ctx = invocation.getInvocationContext();
		Map<String, Object> session = ctx.getSession();
		String user = (String) session.get("administrator");
		if (user != null) {
			return invocation.invoke();
		}else{
			HttpServletRequest req = ServletActionContext.getRequest();
			String path = req.getRequestURI().substring(13);
			System.out.println(path);
			String queryString = req.getQueryString();
			if (queryString == null) {
				queryString = "";
			}
			String realPath = path + "?" + queryString;
			session.put("prePage", realPath);
			return Action.LOGIN;
		}
	}

}
