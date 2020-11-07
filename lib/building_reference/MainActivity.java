package android.tigermap;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;



public class MainActivity extends Activity {

	
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		final Context context = this;
		setContentView(R.layout.activity_main);
		
		//Declare the button for map, tutorial, and feedback
		final Button map = (Button) findViewById(R.id.map_button);
		final Button tutorial = (Button) findViewById(R.id.tutorial_button);
		final Button feedback = (Button) findViewById(R.id.feedback_button);
		
		//Create a button event for map button
		map.setOnClickListener(new OnClickListener ()
		{
			public void onClick(View v)
			{
				//Create a intent to go to Map class
				Intent intent = new Intent(context, Map.class);
				startActivity(intent);
			}
		});
		
		  //Create a button event for tutorial button
	      tutorial.setOnClickListener(new OnClickListener()
	        {
	  public void onClick(View v)
	          {
		  
		  //Create a intent to go to Tutorial class
		  Intent intent = new Intent(context, Tutorial.class);
	      startActivity(intent);
	          }
	  });
	      
	    //Create a button event for feedback button
	      feedback.setOnClickListener(new OnClickListener()
	        {
	  public void onClick(View v)
	          {
		  //Create a intent to go to Feedback class
		  Intent intent = new Intent(context, Feedback.class);
	      startActivity(intent);
	          }
	  });
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
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
}
