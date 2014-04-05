package com.test;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;

import com.liferay.portal.kernel.servlet.SessionMessages;
import com.liferay.portal.model.PortletPreferences;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class MyPortlet
 */
public class MyPortlet extends MVCPortlet {
	@Override
	public void processAction(ActionRequest actionRequest,
			ActionResponse actionResponse) throws IOException, PortletException {
		System.out.println("Portlet controller executing!!");
		PortletPreferences prefs = (PortletPreferences) actionRequest.getPreferences();
		String greeting = actionRequest.getParameter("greetings");
		if(greeting != null){
			((javax.portlet.PortletPreferences) prefs).setValue("greeting",greeting);
			((javax.portlet.PortletPreferences) prefs).store();

		}
		SessionMessages.add(actionRequest, "success");
		super.processAction(actionRequest, actionResponse);
	}

}
