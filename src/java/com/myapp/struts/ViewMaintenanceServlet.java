/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.myapp.struts;


import java.io.PrintWriter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.*;
import java.util.*;
import javax.servlet.http.HttpSession;
/**
 *
 * @author Shashank
 */
public class ViewMaintenanceServlet extends org.apache.struts.action.Action {
    
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
       
            PrintWriter out = response.getWriter();
        SessionFactory sf=NewHibernateUtil.getSessionFactory();
        Session sess=sf.openSession();
        System.out.println("Hello");
        Transaction tr=null;
        try{
        tr=sess.beginTransaction();
        Query q= sess.createQuery("From Maintenance");
       ArrayList<Maintenance> al=(ArrayList<Maintenance>)q.list();
       if(al == null)
           out.println("Empty");
      // ArrayList<Maintenance> al;
        //al   =(ArrayList<Maintenance>)q.list();
          HttpSession hs = request.getSession();
       hs.setAttribute("al",al);
       response.sendRedirect("viewMaintenanceList1.jsp?msg=success");
            }
        
        
        catch(Exception e)
        {
        out.println(e.toString());
        }
        return mapping.findForward(SUCCESS);
    }
}
