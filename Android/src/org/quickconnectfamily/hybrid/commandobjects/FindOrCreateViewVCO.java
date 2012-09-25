package org.quickconnectfamily.hybrid.commandobjects;

import java.util.ArrayList;
import java.util.HashMap;

import org.quickconnect.ControlObject;
import org.quickconnectfamily.hybrid.QCAndroid;
import org.quickconnectfamily.hybrid.QCViewsPlugin;

import android.view.View;

public class FindOrCreateViewVCO implements ControlObject {

	@SuppressWarnings("unchecked")
	public Object handleIt(HashMap<String, Object> parametersMap) {
		ArrayList<Object>passedParameters = (ArrayList<Object>)parametersMap.get("parameters");
		HashMap<Object, Object> configuration = (HashMap<Object, Object>) passedParameters.get(0);
		QCAndroid theQCActivity = (QCAndroid)parametersMap.get("activity");
		String jsId = (String) configuration.get("id");
		View theView = theQCActivity.getView(jsId);
		if(theView != null){
			// Found our view
			System.out.println("Found view with tag "+ jsId);
			parametersMap.put("foundView", theView);
			return true;
		}
		else{
			System.out.println("Did not find view with tag "+ jsId +". Creating now.");
			try {
				String aType = (String) configuration.get("viewType");
				theView = QCViewsPlugin.addViewForType(theQCActivity, aType, configuration);
				String click = (String)configuration.get("clickable");
				theView.setClickable(Boolean.parseBoolean(click));
				
				parametersMap.put("foundView", theView);
				return true;
			} catch (Exception e) {
				System.out.println("Failed to create view with tag "+ jsId +".");
				e.printStackTrace();
				/*
				* A call to handleError would go here.
				*/
			}
		}
		return false;
	}
}
