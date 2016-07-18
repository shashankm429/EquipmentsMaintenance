/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;
/**
 *
 * @author Shashank
 */
public class RegisterServlet extends org.apache.struts.action.Action {

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
        SessionFactory sf=NewHibernateUtil.getSessionFactory();
        Session sess=sf.openSession();
        Transaction tr=null;
        try{

        tr=sess.beginTransaction();
        Register te=(Register)form;
        sess.save(te);
        tr.commit();
        sess.close();
        response.sendRedirect("login.jsp?msg=Registered Successfuly");
        }
catch(Exception e)
{
response.sendRedirect("register.jsp?msg=Invalid Entry");
}
        return mapping.findForward(SUCCESS);
    }
}
