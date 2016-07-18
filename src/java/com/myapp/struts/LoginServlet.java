/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;
/**
 *
 * @author Shashank
 */
public class LoginServlet extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        String uname = request.getParameter("username");
        
        if(uname != "")
        {int username=Integer.parseInt(uname);
        String password=request.getParameter("password");
            SessionFactory sf = NewHibernateUtil.getSessionFactory();
        Session sess=sf.openSession();
        Transaction tr=null;
        try{

        tr=sess.beginTransaction();
        Register te=(Register)sess.get(Register.class, username);
        if(password.equals(te.getPassword()))
        {
            HttpSession hs = request.getSession();
            hs.setAttribute("un", username);
            
        response.sendRedirect("home.jsp?msg=Successful Login");
        }
        else
        {
            response.sendRedirect("login.jsp?msg=Invalid Credentials");
        }
            }
        catch(Exception e)
        {
        System.out.println(e.toString());
        }
        }
        else
        {
            response.sendRedirect("login.jsp?msg=Invalid Credentials");
        }
        return mapping.findForward(SUCCESS);
    }
}
