package android.tigermap;


import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class Video2 extends Activity {	
		
		public void onCreate(Bundle savedInstanceState) {
			super.onCreate(savedInstanceState);
			
			setContentView(R.layout.video);
			String frameVideo = "<html><body><center><iframe width=\"500\" height=\"250\" src=\"https://www.youtube.com/embed/OGFA_jvfZqo\" frameborder=\"0\" allowfullscreen></iframe></center></body></html>";
			
	        WebView displayVideo = (WebView)findViewById(R.id.webView);
	        displayVideo.setWebViewClient(new WebViewClient(){
	            @Override
	            public boolean shouldOverrideUrlLoading(WebView view, String url) {
	                return false;
	            }
	        });
	        WebSettings webSettings = displayVideo.getSettings();
	        webSettings.setJavaScriptEnabled(true);
	        displayVideo.loadData(frameVideo, "text/html", "utf-8");
	    }
	    @Override
	    public boolean onCreateOptionsMenu(Menu menu) {
	        // Inflate the menu; this adds items to the action bar if it is present.
	        getMenuInflater().inflate(R.menu.main, menu);
	        return true;
	    }
	    @Override
	    public boolean onOptionsItemSelected(MenuItem item) {
	        // Handle action bar item clicks here. The action bar will
	        // automatically handle clicks on the Home/Up button, so long
	        // as you specify a parent activity in AndroidManifest.xml.
	        int id = item.getItemId();

	        //noinspection SimplifiableIfStatement
	        if (id == R.id.action_settings) {
	            return true;
	        }

	        return super.onOptionsItemSelected(item);
	    }
	}