package android.tigermap;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;

public class Chambliss_building extends DialogFragment {
	//Suppress Warnings for Inflate
		@SuppressLint("InflateParams") 
		
		//Create a Dialog Box Fragment
		@Override
		public Dialog onCreateDialog(Bundle savedInstanceState){
			AlertDialog.Builder builder = new AlertDialog.Builder(getActivity ());
			LayoutInflater inflater = LayoutInflater.from(getActivity());
			builder.setView(inflater.inflate(R.layout.chambliss_building, null));
		
			//Title for Dialog Box
			builder.setTitle("Tiger Map");
			
			//Create a Negative Button for Cancel
			builder.setNegativeButton("Cancel", new DialogInterface.OnClickListener() {
				
				@Override
				public void onClick(DialogInterface dialog, int which) {
					//Auto-generated method stub
					dialog.cancel();
				}
			})
			
			//Set the Cancel to false
			.setCancelable(false);
			
			//Create a Positive in Button for Get Directions
			builder.setPositiveButton("Get Directions", new DialogInterface.OnClickListener() {
				
				@Override
				public void onClick(DialogInterface dialog, int which) {
					//Auto-generated method stub
					
					//Create a Intent for linking the google map site
					Intent NameOfTheIntent = new Intent(Intent.ACTION_VIEW,Uri.parse("https://www.google.com/maps/dir//32.430877,+-85.711595/@32.4343925,-85.70867,15z/data=!4m7!4m6!1m0!1m3!2m2!1d-85.711595!2d32.430877!3e0"));
					startActivity(NameOfTheIntent);
				}
			});
			
			Dialog dialog=builder.create();
			
			//Return statement for the dialog option 
			return dialog;
			
			
		}
}
