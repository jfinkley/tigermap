package android.tigermap;

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebView;

public class Feedback extends Activity {
	public void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		//Create a webView layout for the Feedback Page
		setContentView(R.layout.feedback);
		 String url = "https://www.surveymonkey.com/r/WMGP98L";
	        WebView view = (WebView) this.findViewById(R.id.feedback);
	        view.getSettings().setJavaScriptEnabled(true);
	        view.loadUrl(url);
}
	
	}
