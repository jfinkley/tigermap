package android.tigermap;

import com.qozix.tileview.TileView;

import android.app.Activity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.Toast;

public class Map extends Activity {
//Declare tileView, currentTileView, linearLayout,buildingSpinner, buildingArray,spinnerArrayAdapter 
TileView tileView;
TileView currentTileView;
LinearLayout linearLayout;
Spinner buildingSpinner;
String[] buildingArray;
ArrayAdapter<?> spinnerArrayAdapter;

	@Override
	protected void onCreate( Bundle savedInstanceState) {
		super.onCreate(savedInstanceState );
		
	// Create our LinearLayout
	linearLayout = new LinearLayout( this );
	linearLayout.setOrientation(LinearLayout.VERTICAL);
	setContentView(linearLayout);
	
	// Create Spinner for tile-layout navigation
	buildingSpinner = new Spinner( this );
	LinearLayout.LayoutParams spinnerViewLayout = new LinearLayout.LayoutParams( LinearLayout.LayoutParams.MATCH_PARENT, 
			LinearLayout.LayoutParams.WRAP_CONTENT);
	linearLayout.addView(buildingSpinner, spinnerViewLayout );
	
	// Setup the tileView size and location
	tileView = CreateTileView(4758,2958,"tiles","downsample");
	
	// tileView assignment to currentTileView
	currentTileView = tileView;
	
	   // Add the view to display it
    LinearLayout.LayoutParams tileViewLayout = new LinearLayout.LayoutParams(
    		LinearLayout.LayoutParams.MATCH_PARENT,0,1); 
    linearLayout.addView( currentTileView, tileViewLayout );
	

    
    initialApp();
	}
	
	// Create private class CreateTileView 
	private TileView CreateTileView(Integer width, Integer height, String folder, String to) {
		
		// Create our TileView
		TileView halo = new TileView(this);
		
		
		// Set the minimum parameters same size as campus map image
	    halo.setSize(width, height);
	    halo.addDetailLevel(1f, folder + "/750_%col%_%row%.png", to + "/map.png");
	    halo.addDetailLevel(0.5f, folder + "/500_%col%_%row%.png", to + "/map.png");
	    halo.addDetailLevel(0.25f, folder + "/250_%col%_%row%.png", to + "/map.png");
	    halo.addDetailLevel(0.125f, folder + "/125_%col%_%row%.png", to + "/map.png");
	    
	    
	 // use pixel coordinates to roughly center it
	    // they are calculated against the "full" size of the mapView 
	    // i.e., the largest zoom level as it would be rendered at a scale of 1.0f
	    halo.moveToAndCenter( width, height );
	    halo.slideToAndCenter(width, height );

	    // Set the default zoom (zoom out by 4 => 1/4 = 0.25)
	    halo.setScale( 0.25 );
	    
	 
	    // To find Building Coordinates
	    halo.addTileViewEventListener(new TileView.TileViewEventListenerImplementation(){
	    	@Override
	    	public void onTap(int x, int y){
	    		Log.d("Location ","x: " + x + " y: " + y) ;
	    	}
	    });
	    
	    return halo;
	    
	}
	// Suppress Warnings for ArrayAdapter & new ArrayAdapter
	@SuppressWarnings({ "unchecked", "rawtypes" })
	private void initialApp() {
		
		//Create Localization string array of the building name
	//buildingArray = getResources().getStringArray(R.array.buildings );
		
		//Create a link between String Array to Spinner by creating an adapter
		spinnerArrayAdapter = new ArrayAdapter(this, 
				android.R.layout.simple_spinner_item, 
				new Building[] {
					new Building("Welcome to TigerMap", 0, 0, 0.25),
					new Building("Abbott Stadium", 3436, 2415, 1.0),
					new Building("Armstrong Hall", 3329, 1723, 1.0),
					new Building("Banneker Hall",1624,877, 1.0),
					new Building("Basil O' Connor Hall", 2113, 771, 1.0),
					new Building("Bethune Hall", 1519, 976, 1.0), 
					new Building("Bioethics", 1808, 564, 1.0),
					new Building("Booker T. Washington Monument", 2013, 1695, 1.0),
					new Building("Brimmer", 3612, 1434, 1.0),
					new Building("Campbell Hall", 888, 1711, 1.0),
					new Building("Carnegie Hall", 2610, 1662, 1.0),
					new Building("Carver Foundation", 3601, 1665, 1.0),
					new Building("Centralized Laboratory Animal Research Facility", 700, 2258, 1.0),
					new Building("Chambliss Business House", 1299, 2391, 1.0),
					new Building("Chappie James Arena", 1404, 2003, 1.0),
					new Building("Convenience Store",2757, 730, 1.0),
					new Building("Douglass Hall", 2488, 1111, 1.0),
					new Building("East Commons", 3275, 1218, 1.0),
					new Building("Emery I", 1863, 2174, 1.0),
					new Building("Emery II", 1784, 2271, 1.0),
					new Building("Emery III", 1611, 2268, 1.0),
					new Building("Emery IV", 1514, 2369, 1.0),
					new Building("Emery Recreation Building", 1717, 2296, 1.0),
					new Building("Engineering Building", 1342, 1781, 1.0),
					new Building("Ford Library",2998, 1779, 1.0),
					new Building("George Washington Carver Museum", 2340, 1598, 1.0),
					new Building("Harper Hall",797, 2077, 1.0),
					new Building("Harvey Hall", 2139, 906, 1.0),
					new Building("Henderson Hall", 630, 1747, 1.0),
					new Building("Housing",1123, 1225, 1.0),
					new Building("Huntington Hall", 2650, 1041, 1.0),
					new Building("James Hall", 2269, 710, 1.0),
					new Building("Kellogg Hotel and Conference Center", 2208, 1560, 1.0),
					new Building("Kresge Center", 1726, 1727, 1.0),
					new Building("Large Animal Clinic", 1053, 622, 1.0),
					new Building("Lewis Adams Hall", 2720, 1114, 1.0), 
					new Building("Logan's Hall", 3230, 1956, 1.0),	
					new Building("Marable Courts",4015,1429, 1.0),
					new Building("Margaret Murray Washington Hall", 2190, 1986, 1.0),
					new Building("Milbank Hall", 303, 2054, 1.0), 
					new Building("Morrison - Mayberry Hall", 1015, 1983, 1.0),
					new Building("North Commons", 2311, 497, 1.0),
					new Building("Old Administration Building", 2810, 1636, 1.0),
					new Building("Olivia Davidson Hall", 2457, 901, 1.0),
					new Building("Patterson Hall", 1269, 909, 1.0),
					new Building("Physical Plant", 3101, 809, 1.0),
					new Building("Post Mortem Building", 1154, 947, 1.0),
					new Building("Power Plant", 2848, 870, 1.0),
					new Building("Robert Circle", 1111, 268, 1.0),
					new Building("Robert R. Moton Hall", 1994, 2107, 1.0),
					new Building("Rockefeller Hall", 3045, 1165, 1.0),
					new Building("Rosenwald Hall", 1402, 854, 1.0),
					new Building("ROTC", 3494,1524, 1.0),
					new Building("Russell Hall", 1779, 961, 1.0),
					new Building("Russell Nursery", 1053, 2145, 1.0),
					new Building("Sage Hall", 3213, 1407, 1.0),
					new Building("Small Animal Clinic", 1035, 761, 1.0),
					new Building("Softball Field", 1063, 2464, 1.0),
					new Building("Tantum Hall", 2152, 1165, 1.0),
					new Building("Tennis Court", 1557, 1279, 1.0),
					new Building("The Oaks", 2708, 1826, 1.0),
					new Building("Thrasher Hall", 3322,1547, 1.0),
					new Building("Tompkins Hall", 2796, 1374, 1.0),
					new Building("Tuskegee Univ. Police Dept.", 2880, 1370, 1.0),
					new Building("University Apartment", 794, 2555, 1.0),
					new Building("University Chapel", 1933, 1505, 1.0),
					new Building("Washington Field", 3697, 2061, 1.0),
					new Building("West Commons", 1079, 1333, 1.0),
					new Building("White Hall", 2482, 1416, 1.0),
					new Building("Wilcox A", 2048, 1933 , 1.0),
					new Building("Wilcox B", 1852, 1847, 1.0),
					new Building("Wilcox C", 1867, 2016, 1.0),
					new Building("Wilcox D", 1652, 1865, 1.0),
					new Building("Wilcox E", 1647, 1977, 1.0),
					new Building("William V. Chambliss House", 1181, 2266, 1.0),
					new Building("Williams - Bowie Hall", 902, 936, 1.0),
					new Building("Younge Hall", 1559, 1135, 1.0),
					
					
					 
					
					
		});
		buildingSpinner.setAdapter(spinnerArrayAdapter);
		
		buildingSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() {

			@Override
			public void onItemSelected(AdapterView<?> parent, View view,
					int position, long id) {
				
				//Auto-generated method stub
				//Create the Toast to each building
				Building masters = (Building) parent.getSelectedItem(); 
				Toast.makeText(getBaseContext(), masters.toString(),
				Toast.LENGTH_SHORT).show();
				positionMap(masters);
				
			}
			@Override
			public void onNothingSelected(AdapterView<?> parent) {
				//Auto-generated method stub
				
			}
		});
		
		// Set up building selection starting on the first one 
		buildingSpinner.setSelection(0);
	    
	  //Declare Marker for Abbott Stadium building 
	    ImageView markerAbbott = new ImageView(this);
	    markerAbbott.setImageResource(R.drawable.blue_marker);
	    markerAbbott.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Abbott Stadium building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Abbott_building myAlert = new Abbott_building();
								myAlert.show(getFragmentManager(), "");
			}
		
	    });
	    
		//Declare Marker for Armstrong Hall building 
	    ImageView markerArmstrong = new ImageView(this);
	    markerArmstrong.setImageResource(R.drawable.blue_marker);
	    markerArmstrong.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Armstrong Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Armstrong_building myAlert2 = new Armstrong_building();
								myAlert2.show(getFragmentManager(), "");
			}
		
	    });
	    
	    //Declare Marker for Banneker Hall building 
	    ImageView markerBanneker = new ImageView(this);
	    markerBanneker.setImageResource(R.drawable.blue_marker);
	    markerBanneker.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Banneker Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Banneker_building myAlert3 = new Banneker_building();
								myAlert3.show(getFragmentManager(), "");
			}
		
	    });
	    
	    
	  //Declare Marker for Basil O' Connor Hall building 
	    ImageView markerBasil = new ImageView(this);
	    markerBasil.setImageResource(R.drawable.blue_marker);
	    markerBasil.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Basil O' Connor Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Basil_building myAlert4 = new Basil_building();
								myAlert4.show(getFragmentManager(), "");
			}
		
	    }); 
	    
	    
	    //Declare Marker for Bethune Hall building 
	    ImageView markerBethune = new ImageView(this);
	    markerBethune.setImageResource(R.drawable.blue_marker);
	    markerBethune.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Bethune Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Bethune_building myAlert5 = new Bethune_building();
								myAlert5.show(getFragmentManager(), "");
			}
		
	    });  
	    
	    
	    //Declare Marker for Bioethics building 
	    ImageView markerBioethics = new ImageView(this);
	    markerBioethics.setImageResource(R.drawable.blue_marker);
	    markerBioethics.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Bioethics building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Bioethics_building myAlert6 = new Bioethics_building();
								myAlert6.show(getFragmentManager(), "");
			}
		
	    });  
	    
	    //Declare Marker for Booker T. Washington Monument building 
	    ImageView markerBooker = new ImageView(this);
	    markerBooker.setImageResource(R.drawable.blue_marker);
	    markerBooker.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Booker T. Washington Monument building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Booker_building myAlert7 = new Booker_building();
								myAlert7.show(getFragmentManager(), "");
			}
		
	    });  
	    
	 // Declare Marker for Brimmer building
        ImageView markerBrimmer = new ImageView(this);
        markerBrimmer.setImageResource(R.drawable.blue_marker);
        markerBrimmer.setOnClickListener(new OnClickListener () {

        	//Create a click on event for Brimmer
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Brimmer_building myAlert8 = new Brimmer_building();
								myAlert8.show(getFragmentManager(), "");
			}
			
		});
	    
     // Declare Marker for Campbell Hall building
        ImageView markerCampbell = new ImageView(this);
        markerCampbell.setImageResource(R.drawable.blue_marker);
        markerCampbell.setOnClickListener(new OnClickListener () {

        	//Create a click on event for Campbell Hall
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Campbell_building myAlert9 = new Campbell_building();
								myAlert9.show(getFragmentManager(), "");
			}
			
		});
	  
        
        // Declare Marker for Carnegie Hall building
        ImageView markerCarnegie = new ImageView(this);
        markerCarnegie.setImageResource(R.drawable.blue_marker);
        markerCarnegie.setOnClickListener(new OnClickListener() {
        	
        	//Create a click on event for Carnegie Hall building
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Carnegie_building myAlert10 = new Carnegie_building();
				myAlert10.show(getFragmentManager(), "");
			}
        	
        });
        
        //Declare Marker for Carver Foundation building 
	    ImageView markerCarver = new ImageView(this);
	    markerCarver.setImageResource(R.drawable.blue_marker);
	    markerCarver.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Carver Foundation building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Carver_building myAlert11 = new Carver_building();
				myAlert11.show(getFragmentManager(), "");
			}
		
	    });  
	    
	    //Declare Marker for Centralized Laboratory Animal Research Facility building 
	    ImageView markerCentralized = new ImageView(this);
	    markerCentralized.setImageResource(R.drawable.blue_marker);
	    markerCentralized.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Centralized Laboratory Animal Research Facility building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				
				//Create Dialog Fragment Class
				Centralized_building myAlert12 = new Centralized_building();
				myAlert12.show(getFragmentManager(), "");
			}
		
	    }); 
	    
	    
	    //Declare Marker for Chambliss Business House building 
	    ImageView markerChambliss = new ImageView(this);
	    markerChambliss.setImageResource(R.drawable.blue_marker);
	    markerChambliss.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Chambliss Business House building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Chambliss_building myAlert13 = new Chambliss_building();
				myAlert13.show(getFragmentManager(), "");
			}
		
	    });
	    
	    //Declare Marker for Chappie James Arena building 
	    ImageView markerChappie = new ImageView(this);
	    markerChappie.setImageResource(R.drawable.blue_marker);
	    markerChappie.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Chappie James Arena building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				
				//Create Dialog Fragment Class
				Chappie_building myAlert14 = new Chappie_building();
				myAlert14.show(getFragmentManager(), "");
			}
		
	    });
	    
	  //Declare Marker for Convenience Store building 
	    ImageView markerConvenience = new ImageView(this);
	    markerConvenience.setImageResource(R.drawable.blue_marker);
	    markerConvenience.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Convenience Store building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Convenience_building myAlert15 = new Convenience_building();
				myAlert15.show(getFragmentManager(), "");
			}
		
	    });
	    
	    //Declare Marker for Douglass Hall building 
	    ImageView markerDouglass = new ImageView(this);
	    markerDouglass.setImageResource(R.drawable.blue_marker);
	    markerDouglass.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Douglass Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Douglass_building myAlert16 = new Douglass_building();
				myAlert16.show(getFragmentManager(), "");
				
			}
		
	    });
	    
	    //Declare Marker for East Commons building 
	    ImageView markerEast = new ImageView(this);
	    markerEast.setImageResource(R.drawable.blue_marker);
	    markerEast.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for East Commons building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				East_building myAlert17 = new East_building();
				myAlert17.show(getFragmentManager(), "");
				
			}
		
	    });
	    
	    
	    //Declare Marker for Emery I building 
	    ImageView markerEmeryI = new ImageView(this);
	    markerEmeryI.setImageResource(R.drawable.blue_marker);
	    markerEmeryI.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Emery I building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				EmeryI_building myAlert18 = new EmeryI_building();
				myAlert18.show(getFragmentManager(), "");
			}
		
	    });
	    
	    //Declare Marker for Emery II building 
	    ImageView markerEmeryII = new ImageView(this);
	    markerEmeryII.setImageResource(R.drawable.blue_marker);
	    markerEmeryII.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Emery II building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				EmeryII_building myAlert19 = new EmeryII_building();
				myAlert19.show(getFragmentManager(), "");
			}
		
	    });
	    
	    
	    //Declare Marker for Emery III building 
	    ImageView markerEmeryIII = new ImageView(this);
	    markerEmeryIII.setImageResource(R.drawable.blue_marker);
	    markerEmeryIII.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Emery III building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				EmeryIII_building myAlert20 = new EmeryIII_building();
				myAlert20.show(getFragmentManager(), "");
			}
		
	    });
	    
	    
	    
	  //Declare Marker for Emery IV building 
	    ImageView markerEmeryIV = new ImageView(this);
	    markerEmeryIV.setImageResource(R.drawable.blue_marker);
	    markerEmeryIV.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Emery IV building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				EmeryIV_building myAlert21 = new EmeryIV_building();
				myAlert21.show(getFragmentManager(), "");
			}
		
	    });
	    
	    
	    
	    //Declare Marker for Emery Recreation building 
	    ImageView markerEmeryRB = new ImageView(this);
	    markerEmeryRB.setImageResource(R.drawable.blue_marker);
	    markerEmeryRB.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Emery Recreation building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				EmeryR_building myAlert22 = new EmeryR_building();
				myAlert22.show(getFragmentManager(), "");
			}
		
	    });
	    
	  //Declare Marker for Engineering building 
	    ImageView markerEngineering = new ImageView(this);
	    markerEngineering.setImageResource(R.drawable.blue_marker);
	    markerEngineering.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Engineering building  
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Engineering_building myAlert23 = new Engineering_building();
				myAlert23.show(getFragmentManager(), "");
			}
		
	    });
	    
	  //Declare Marker for Ford Library building 
	    ImageView markerFord = new ImageView(this);
	    markerFord.setImageResource(R.drawable.blue_marker);
	    markerFord.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Ford Library building  
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Ford_building myAlert24 = new Ford_building();
				myAlert24.show(getFragmentManager(), "");
			}
		
	    });
	   
	    //Declare Marker for George Washington Carver Museum building 
	    ImageView markerGeorge = new ImageView(this);
	    markerGeorge.setImageResource(R.drawable.blue_marker);
	    markerGeorge.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Harper Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				George_building myAlert25 = new George_building();
				myAlert25.show(getFragmentManager(), "");
				
			}
		
	    });
	    
	    
	    
        
	  //Declare Marker for Harper Hall building 
	    ImageView markerHarper = new ImageView(this);
	    markerHarper.setImageResource(R.drawable.blue_marker);
	    markerHarper.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Harper Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Harper_building myAlert26 = new Harper_building();
				myAlert26.show(getFragmentManager(), "");
				
			}
		
	    });
	    
	    
	    //Declare Marker for Harvey Hall building 
	    ImageView markerHarvey = new ImageView(this);
	    markerHarvey.setImageResource(R.drawable.blue_marker);
	    markerHarvey.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Harvey Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Harvey_building myAlert27 = new Harvey_building();
				myAlert27.show(getFragmentManager(), "");
				
			}
		
	    });
	    
	    //Declare Marker for Henderson Hall building 
	    ImageView markerHenderson = new ImageView(this);
	    markerHenderson.setImageResource(R.drawable.blue_marker);
	    markerHenderson.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Henderson Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Henderson_building myAlert28 = new Henderson_building();
				myAlert28.show(getFragmentManager(), "");
			}
		
	    });
	    
	    //Declare Marker for Housing building 
	    ImageView markerHousing = new ImageView(this);
	    markerHousing.setImageResource(R.drawable.blue_marker);
	    markerHousing.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Housing building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				
				//Create Dialog Fragment Class
				Housing_building myAlert29 = new Housing_building();
				myAlert29.show(getFragmentManager(), "");
			}
		
	    });
	    
	    //Declare Marker for Huntington Hall building 
	    ImageView markerHuntington = new ImageView(this);
	    markerHuntington.setImageResource(R.drawable.blue_marker);
	    markerHuntington.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Huntington Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Huntington_building myAlert30 = new Huntington_building();
				myAlert30.show(getFragmentManager(), "");
			}
		
	    });
	    
	    //Declare Marker for James Hall building 
	    ImageView markerJames = new ImageView(this);
	    markerJames.setImageResource(R.drawable.blue_marker);
	    markerJames.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for James Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
			James_building myAlert31 = new James_building();
				myAlert31.show(getFragmentManager(), "");
			}
		
	    });  
	    
		//Declare Marker for Kellogg Hotel building 
	    ImageView markerKellogg = new ImageView(this);
	    markerKellogg.setImageResource(R.drawable.blue_marker);
	    markerKellogg.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Kellogg Hotel building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Kellogg_building myAlert32 = new Kellogg_building();
				myAlert32.show(getFragmentManager(), "");
			}
		
	    });
	    
	  //Declare Marker for Kresge Center building 
	    ImageView markerKresge = new ImageView(this);
	    markerKresge.setImageResource(R.drawable.blue_marker);
	    markerKresge.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Kresge Center building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Kresge_building myAlert33 = new Kresge_building();
				myAlert33.show(getFragmentManager(), "");
			}
		
	    });
        
	    
	    //Declare Marker for Large Animal Clinic building 
	    ImageView markerLargeAnimal = new ImageView(this);
	    markerLargeAnimal.setImageResource(R.drawable.blue_marker);
	    markerLargeAnimal.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Large Animal Clinic building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				LargeAnimal_building myAlert34 = new LargeAnimal_building();
				myAlert34.show(getFragmentManager(), "");
				
			}
		
	    });
	    
	  //Declare Marker for Lewis Adams Hall building 
	    ImageView markerLewis = new ImageView(this);
	    markerLewis.setImageResource(R.drawable.blue_marker);
	    markerLewis.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Lewis Adams Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Lewis_building myAlert35 = new Lewis_building();
				myAlert35.show(getFragmentManager(), "");
			}
		
	    });
	    
	  //Declare Marker for Logan's Hall building 
	    ImageView markerLogan = new ImageView(this);
	    markerLogan.setImageResource(R.drawable.blue_marker);
	    markerLogan.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Logan's Hall building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Logan_building myAlert36 = new Logan_building();
				myAlert36.show(getFragmentManager(), "");
			}
		
	    });
	   
	  //Declare Marker for Marable Courts building 
	    ImageView markerMarable = new ImageView(this);
	    markerMarable.setImageResource(R.drawable.blue_marker);
	    markerMarable.setOnClickListener(new OnClickListener () {
	    	
	    	//Create a click on event for Marable Courts building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Marable_building myAlert37 = new Marable_building();
				myAlert37.show(getFragmentManager(), "");
			}
		
	    });   
	    
	    
        // Declare Marker for Margaret Murray building
        ImageView markerMargaret = new ImageView(this);
        markerMargaret.setImageResource(R.drawable.blue_marker);
        markerMargaret.setOnClickListener(new OnClickListener() {
        	
        	//Create a click on event for Margaret Murray building 
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Margaret_building myAlert38 = new Margaret_building();
								myAlert38.show(getFragmentManager(), "");
			}
        	
        });
	    
        
     // Declare Marker for Milbank Hall building
        ImageView markerMilbank = new ImageView(this);
        markerMilbank.setImageResource(R.drawable.blue_marker);
        markerMilbank.setOnClickListener(new OnClickListener() {
        	
        	//Create a click on event for Milbank Hall building
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Milbank_building myAlert39 = new Milbank_building();
								myAlert39.show(getFragmentManager(), "");
				
			}
        	
        });
        
     // Declare Marker for Morrison - Mayberry Hall building
        ImageView markerMorrison = new ImageView(this);
        markerMorrison.setImageResource(R.drawable.blue_marker);
        markerMorrison.setOnClickListener(new OnClickListener() {
        	
        	//Create a click on event for Morrison - Mayberry Hall building
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Morrison_building myAlert40 = new Morrison_building();
				myAlert40.show(getFragmentManager(), "");
			}
        	
        });
        
        // Declare Marker for North Commons building
           ImageView markerNorth = new ImageView(this);
           markerNorth.setImageResource(R.drawable.blue_marker);
           markerNorth.setOnClickListener(new OnClickListener() {
           	
           	//Create a click on event for North Commons building
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   				
   				//Create Dialog Fragment Class
				North_building myAlert41 = new North_building();
				myAlert41.show(getFragmentManager(), "");
   			}
           	
           });
           
        
        // Declare Marker for Old Administration building
        ImageView markerOld = new ImageView(this);
        markerOld.setImageResource(R.drawable.blue_marker);
        markerOld.setOnClickListener(new OnClickListener() {
        	
        	//Create a click on event for Old Administration building
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Old_building myAlert42 = new Old_building();
				myAlert42.show(getFragmentManager(), "");
			}
        	
        });
        
        // Declare Marker for Olivia Davidson Hall building
        ImageView markerOlivia = new ImageView(this);
        markerOlivia.setImageResource(R.drawable.blue_marker);
        markerOlivia.setOnClickListener(new OnClickListener() {
        	
        	//Create a click on event for Olivia Davidson Hall building
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Olivia_building myAlert43= new Olivia_building();
				myAlert43.show(getFragmentManager(), "");
			}
        	
        });
       
     // Declare Marker for Patterson Hall building
        ImageView markerPatterson = new ImageView(this);
        markerPatterson.setImageResource(R.drawable.blue_marker);
        markerPatterson.setOnClickListener(new OnClickListener() {
        	
        	//Create a click on event for Patterson Hall building
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Patterson_building myAlert44= new Patterson_building();
				myAlert44.show(getFragmentManager(), "");
			}
        	
        });
    
     // Declare Marker for Physical Plant building
        ImageView markerPhysical = new ImageView(this);
        markerPhysical.setImageResource(R.drawable.blue_marker);
        markerPhysical.setOnClickListener(new OnClickListener() {
        	
        	//Create a click on event for Physical Plant building
			@Override
			public void onClick(View v) {
				// Auto-generated method stub
				
				//Create Dialog Fragment Class
				Physical_building myAlert45= new Physical_building();
				myAlert45.show(getFragmentManager(), "");
			}
        	
        });
        

        // Declare Marker for Post Mortem building
           ImageView markerPost = new ImageView(this);
           markerPost.setImageResource(R.drawable.blue_marker);
           markerPost.setOnClickListener(new OnClickListener() {
           	
           	//Create a click on event for Post Mortem building
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   				
   				//Create Dialog Fragment Class
				Mortem_building myAlert46= new Mortem_building();
				myAlert46.show(getFragmentManager(), "");
   			}
           	
           });
           
        // Declare Marker for Power Plant building
           ImageView markerPower = new ImageView(this);
           markerPower.setImageResource(R.drawable.blue_marker);
           markerPower.setOnClickListener(new OnClickListener() {
           	
           	//Create a click on event for Power Plant building
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   				
   			//Create Dialog Fragment Class
				Power_building myAlert47= new Power_building();
				myAlert47.show(getFragmentManager(), "");
   			}
           	
           });
           
           
        // Declare Marker for Robert Circle building
           ImageView markerRobertCircle = new ImageView(this);
           markerRobertCircle.setImageResource(R.drawable.blue_marker);
           markerRobertCircle.setOnClickListener(new OnClickListener() {
           	
           	//Create a click on event for Robert Circle building
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   				
   				//Create Dialog Fragment Class
   				RobertCircle_building myAlert48= new RobertCircle_building();
				myAlert48.show(getFragmentManager(), "");
   			}
           	
           });
           
           
           // Declare Marker for Robert R. Moton Hall building
           ImageView markerRobert = new ImageView(this);
           markerRobert.setImageResource(R.drawable.blue_marker);
           markerRobert.setOnClickListener(new OnClickListener() {
           	
           	//Create a click on event for Robert R. Moton Hall building
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   				
   				//Create Dialog Fragment Class
   				RobertR_building myAlert49= new RobertR_building();
				myAlert49.show(getFragmentManager(), "");
   			}
           	
           });
           
           
        // Declare Marker for Rockefeller Hall building
           ImageView markerRockefeller = new ImageView(this);
           markerRockefeller.setImageResource(R.drawable.blue_marker);
           markerRockefeller.setOnClickListener(new OnClickListener() {
           	
           	//Create a click on event for Rockefeller Hall building
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   				
   				//Create Dialog Fragment Class
   				Rockefeller_building myAlert50= new Rockefeller_building();
				myAlert50.show(getFragmentManager(), "");
   			}
           	
           });
           
        // Declare Marker for Rosenwald Hall building
           ImageView markerRosenwald = new ImageView(this);
           markerRosenwald.setImageResource(R.drawable.blue_marker);
           markerRosenwald.setOnClickListener(new OnClickListener() {
           	
           	//Create a click on event for Rosenwald Hall building
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   				
   				//Create Dialog Fragment Class
   				Rosenwald_building myAlert51= new Rosenwald_building();
				myAlert51.show(getFragmentManager(), "");
   			}
           	
           });
           
           
         //Declare Marker for ROTC building 
   	    ImageView markerROTC = new ImageView(this);
   	    markerROTC.setImageResource(R.drawable.blue_marker);
   	    markerROTC.setOnClickListener(new OnClickListener () {
   	    	
   	    	//Create a click on event for ROTC building 
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   				
   				//Create Dialog Fragment Class
   				ROTC_building myAlert52= new ROTC_building();
				myAlert52.show(getFragmentManager(), "");
   			}
   		
   	    });  
   	    
   	   //Declare Marker for Russell Hall building 
   	    ImageView markerRussell = new ImageView(this);
   	    markerRussell.setImageResource(R.drawable.blue_marker);
   	    markerRussell.setOnClickListener(new OnClickListener () {
   	    	
   	    	//Create a click on event for Russell Hall building 
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   			
   				//Create Dialog Fragment Class
   				RussellHall_building myAlert53= new RussellHall_building();
				myAlert53.show(getFragmentManager(), "");
   			}
   		
   	    }); 
   	    
   	    
   	  //Declare Marker for Russell Nursery building 
   	    ImageView markerRussellNursery = new ImageView(this);
   	    markerRussellNursery.setImageResource(R.drawable.blue_marker);
   	    markerRussellNursery.setOnClickListener(new OnClickListener () {
   	    	
   	    	//Create a click on event for Russell Nursery building 
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   				
   			//Create Dialog Fragment Class
   				RussellNursery_building myAlert54= new RussellNursery_building();
				myAlert54.show(getFragmentManager(), "");
   			}
   		
   	    }); 
   	    
   	 //Declare Marker for Sage Hall building 
   	    ImageView markerSage = new ImageView(this);
   	    markerSage.setImageResource(R.drawable.blue_marker);
   	    markerSage.setOnClickListener(new OnClickListener () {
   	    	
   	    	//Create a click on event for Sage Hall building 
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   				
   			//Create Dialog Fragment Class
   				Sage_building myAlert55= new Sage_building();
				myAlert55.show(getFragmentManager(), "");
   				
   			}
   		
   	    }); 
   	    
   	    
   	 //Declare Marker for Small Animal Clinic building 
   	    ImageView markerSmall = new ImageView(this);
   	    markerSmall.setImageResource(R.drawable.blue_marker);
   	    markerSmall.setOnClickListener(new OnClickListener () {
   	    	
   	    	//Create a click on event for Small Animal Clinic building 
   			@Override
   			public void onClick(View v) {
   				// Auto-generated method stub
   				
   			//Create Dialog Fragment Class
   				Small_building myAlert56= new Small_building();
				myAlert56.show(getFragmentManager(), "");
   			}
   		
   	    }); 
   	    
   	    
    	 //Declare Marker for Softball Field building 
      	    ImageView markerSoftball = new ImageView(this);
      	    markerSoftball.setImageResource(R.drawable.blue_marker);
      	    markerSoftball.setOnClickListener(new OnClickListener () {
      	    	
      	    	//Create a click on event for Softball Field building 
      			@Override
      			public void onClick(View v) {
      				// Auto-generated method stub
      				
      			//Create Dialog Fragment Class
       				Softball_building myAlert57= new Softball_building();
    				myAlert57.show(getFragmentManager(), "");
      				
      			}
      		
      	    }); 
      	    
      	  //Declare Marker for Tantum Hall building 
      	    ImageView markerTantum = new ImageView(this);
      	    markerTantum.setImageResource(R.drawable.blue_marker);
      	    markerTantum.setOnClickListener(new OnClickListener () {
      	    	
      	    	//Create a click on event for Tantum Hall building 
      			@Override
      			public void onClick(View v) {
      				// Auto-generated method stub
      				
      			//Create Dialog Fragment Class
       				Tantum_building myAlert58= new Tantum_building();
    				myAlert58.show(getFragmentManager(), "");
      			}
      		
      	    });
   	 
      	//Declare Marker for Tennis Court building 
      	    ImageView markerTennis = new ImageView(this);
      	    markerTennis.setImageResource(R.drawable.blue_marker);
      	    markerTennis.setOnClickListener(new OnClickListener () {
      	    	
      	    	//Create a click on event for Tennis Court building 
      			@Override
      			public void onClick(View v) {
      				// Auto-generated method stub
      				
      				//Create Dialog Fragment Class
       				Tennis_building myAlert59= new Tennis_building();
    				myAlert59.show(getFragmentManager(), "");
      			}
      		
      	    });
      	    
      	//Declare Marker for The Oaks building 
      	    ImageView markerOaks = new ImageView(this);
      	    markerOaks.setImageResource(R.drawable.blue_marker);
      	    markerOaks.setOnClickListener(new OnClickListener () {
      	    	
      	    	//Create a click on event for The Oaks building 
      			@Override
      			public void onClick(View v) {
      				// Auto-generated method stub
      				
      				//Create Dialog Fragment Class
      				Oaks_building myAlert60= new Oaks_building();
    				myAlert60.show(getFragmentManager(), "");
      			}
      		
      	    });
      	
      	//Declare Marker for Thrasher Hall building 
      	    ImageView markerThrasher = new ImageView(this);
      	    markerThrasher.setImageResource(R.drawable.blue_marker);
      	    markerThrasher.setOnClickListener(new OnClickListener () {
      	    	
      	    	//Create a click on event for Thrasher Hall building 
      			@Override
      			public void onClick(View v) {
      				// Auto-generated method stub
      				
      				//Create Dialog Fragment Class
      				Thrasher_building myAlert61= new Thrasher_building();
    				myAlert61.show(getFragmentManager(), "");
      			}
      		
      	    });	    
      	  
        // Declare Marker for Tompkins Hall building
        ImageView markerTompkins = new ImageView(this);
        markerTompkins.setImageResource(R.drawable.blue_marker);
        markerTompkins.setOnClickListener(new OnClickListener(){

			@Override
			public void onClick(View v) {
				//Auto-generated method stub
				
			//Create Dialog Fragment Class
			Tompkins_building myAlert62 = new Tompkins_building();
							myAlert62.show(getFragmentManager(), "");
			}
        	
        });
    
        
    	//Declare Marker for Tuskegee Univ. Police Dept building 
  	    ImageView markerPolice = new ImageView(this);
  	    markerPolice.setImageResource(R.drawable.blue_marker);
  	    markerPolice.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for Tuskegee Univ. Police Dept building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  			//Create Dialog Fragment Class
  				Police_building myAlert63= new Police_building();
				myAlert63.show(getFragmentManager(), "");
  			}
  		
  	    });	
  	    
  	
  	  
  	//Declare Marker for University Apartment building 
  	    ImageView markerUniversityApartment = new ImageView(this);
  	    markerUniversityApartment.setImageResource(R.drawable.blue_marker);
  	    markerUniversityApartment.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for University Apartment building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  			//Create Dialog Fragment Class
  				UniversityApartment_building myAlert64= new UniversityApartment_building();
				myAlert64.show(getFragmentManager(), "");
  			}
  		
  	    });	
  	  
  		//Declare Marker for University Chapel building 
  	    ImageView markerUniversityChapel = new ImageView(this);
  	    markerUniversityChapel.setImageResource(R.drawable.blue_marker);
  	    markerUniversityChapel.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for University Chapel building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  			//Create Dialog Fragment Class
  				UniversityChapel_building myAlert65= new UniversityChapel_building();
				myAlert65.show(getFragmentManager(), "");
  			}
  		
  	    });
  	    
  	//Declare Marker for Washington Field building 
  	    ImageView markerWashingtonField = new ImageView(this);
  	    markerWashingtonField.setImageResource(R.drawable.blue_marker);
  	    markerWashingtonField.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for Washington Field building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  				//Create Dialog Fragment Class
  				WashingtonField_building myAlert66= new WashingtonField_building();
				myAlert66.show(getFragmentManager(), "");
  			}
  		
  	    });
  	    
  	//Declare Marker for West Commons building 
  	    ImageView markerWest = new ImageView(this);
  	    markerWest.setImageResource(R.drawable.blue_marker);
  	    markerWest.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for West Commons building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  			//Create Dialog Fragment Class
  				West_building myAlert67= new West_building();
				myAlert67.show(getFragmentManager(), "");
  			}
  		
  	    });
  	    
  	    
  	//Declare Marker for White Hall building 
  	    ImageView markerWhite = new ImageView(this);
  	    markerWhite.setImageResource(R.drawable.blue_marker);
  	    markerWhite.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for White Hall building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  			//Create Dialog Fragment Class
  				White_building myAlert68= new White_building();
				myAlert68.show(getFragmentManager(), "");
  			}
  		
  	    });
  	    
  	    
  	//Declare Marker for Wilcox A building 
  	    ImageView markerWilcoxA = new ImageView(this);
  	    markerWilcoxA.setImageResource(R.drawable.blue_marker);
  	    markerWilcoxA.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for Wilcox A building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  				//Create Dialog Fragment Class
  				WilcoxA_building myAlert69= new WilcoxA_building();
				myAlert69.show(getFragmentManager(), "");
  			}
  		
  	    });
  	    
  	//Declare Marker for Wilcox B building 
  	    ImageView markerWilcoxB = new ImageView(this);
  	    markerWilcoxB.setImageResource(R.drawable.blue_marker);
  	    markerWilcoxB.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for Wilcox B building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  			//Create Dialog Fragment Class
  				WilcoxB_building myAlert70= new WilcoxB_building();
				myAlert70.show(getFragmentManager(), "");
  			}
  		
  	    });
  	    
  	    
  	//Declare Marker for Wilcox C building 
  	    ImageView markerWilcoxC = new ImageView(this);
  	    markerWilcoxC.setImageResource(R.drawable.blue_marker);
  	    markerWilcoxC.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for Wilcox C building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  			//Create Dialog Fragment Class
  				WilcoxC_building myAlert71= new WilcoxC_building();
				myAlert71.show(getFragmentManager(), "");
  			}
  		
  	    });
  	    
  	    
  	//Declare Marker for Wilcox D building 
  	    ImageView markerWilcoxD = new ImageView(this);
  	    markerWilcoxD.setImageResource(R.drawable.blue_marker);
  	    markerWilcoxD.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for Wilcox D building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  				//Create Dialog Fragment Class
  				WilcoxD_building myAlert72= new WilcoxD_building();
				myAlert72.show(getFragmentManager(), "");
  			}
  		
  	    });
  	    
  	//Declare Marker for Wilcox E building 
  	    ImageView markerWilcoxE = new ImageView(this);
  	    markerWilcoxE.setImageResource(R.drawable.blue_marker);
  	    markerWilcoxE.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for Wilcox E building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  			//Create Dialog Fragment Class
  				WilcoxE_building myAlert73= new WilcoxE_building();
				myAlert73.show(getFragmentManager(), "");
  			}
  		
  	    });
  	  
  	  	//Declare Marker for William V. Chambliss House building 
  	    ImageView markerWilliamV = new ImageView(this);
  	    markerWilliamV.setImageResource(R.drawable.blue_marker);
  	    markerWilliamV.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for William V. Chambliss building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  			//Create Dialog Fragment Class
  				WilliamV_building myAlert74= new WilliamV_building();
				myAlert74.show(getFragmentManager(), "");
  			}
  		
  	    });
  	    
  		//Declare Marker for Williams - Bowie Hall building 
  	    ImageView markerWilliamsB = new ImageView(this);
  	    markerWilliamsB .setImageResource(R.drawable.blue_marker);
  	    markerWilliamsB.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for Williams - Bowie Hall building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  			
  				//Create Dialog Fragment Class
  				WilliamsB_building myAlert75= new WilliamsB_building();
				myAlert75.show(getFragmentManager(), "");
  				
  			}
  		
  	    });
  	    
  	//Declare Marker for Younge Hall building 
  	    ImageView markerYounge = new ImageView(this);
  	    markerYounge.setImageResource(R.drawable.blue_marker);
  	    markerYounge.setOnClickListener(new OnClickListener () {
  	    	
  	    	//Create a click on event for Younge Hall building 
  			@Override
  			public void onClick(View v) {
  				// Auto-generated method stub
  				
  				//Create Dialog Fragment Class
  				Younge_building myAlert76= new Younge_building();
				myAlert76.show(getFragmentManager(), "");
  				
  			}
  		
  	    });
  	  
		
  	 
        // Setup building location using coordinates from the map
        // (MarkerBuildingName, x-coordinates, y-coordinates, 25% zoom, 
        //  standard zoom)
        tileView.addMarker(markerAbbott, 3436, 2415, -0.5f, -1.0f);
        tileView.addMarker(markerArmstrong, 3329, 1723, -0.5f, -1.0f);
        tileView.addMarker(markerBanneker, 1624,877, -0.5f, -1.0f);
        tileView.addMarker(markerBasil, 2113, 771, -0.5f, -1.0f);
        tileView.addMarker(markerBethune, 1519, 976, -0.5f, -1.0f);
        tileView.addMarker(markerBioethics, 1808, 564, -0.5f, -1.0f);
        tileView.addMarker(markerBooker, 2013, 1695, -0.5f, -1.0f);
        tileView.addMarker(markerBrimmer, 3612, 1434, -0.5f, -1.0f);
        tileView.addMarker(markerCampbell, 888, 1711, -0.5f, -1.0f);
        tileView.addMarker(markerCarnegie, 2610, 1662, -0.5f, -1.0f);
        tileView.addMarker(markerCarver, 3601, 1665, -0.5f, -1.0f);
        tileView.addMarker(markerCentralized, 700, 2258, -0.5f, -1.0f);
        tileView.addMarker(markerChambliss, 1299, 2391, -0.5f, -1.0f);
        tileView.addMarker(markerChappie, 1404, 2003, -0.5f, -1.0f);
        tileView.addMarker(markerConvenience, 2757, 730, -0.5f, -1.0f);
        tileView.addMarker(markerDouglass, 2488, 1111, -0.5f, -1.0f);
        tileView.addMarker(markerEast, 3275, 1218, -0.5f, -1.0f);
        tileView.addMarker(markerEmeryI, 1863, 2174, -0.5f, -1.0f);
        tileView.addMarker(markerEmeryII, 1784, 2271, -0.5f, -1.0f);
        tileView.addMarker(markerEmeryIII, 1611, 2268, -0.5f, -1.0f);
        tileView.addMarker(markerEmeryIV, 1514, 2369, -0.5f, -1.0f);
        tileView.addMarker(markerEmeryRB, 1717, 2296, -0.5f, -1.0f);
        tileView.addMarker(markerEngineering, 1342, 1781, -0.5f, -1.0f);
        tileView.addMarker(markerFord, 2998, 1779, -0.5f, -1.0f);
        tileView.addMarker(markerGeorge, 2340, 1598, -0.5f, -1.0f);
        tileView.addMarker(markerHarper, 797, 2077, -0.5f, -1.0f);
        tileView.addMarker(markerHarvey, 2139, 906, -0.5f, -1.0f);
        tileView.addMarker(markerHenderson, 630, 1747, -0.5f, -1.0f);
        tileView.addMarker(markerHousing, 1123, 1225, -0.5f, -1.0f);
        tileView.addMarker(markerHuntington, 2650, 1041, -0.5f, -1.0f);
        tileView.addMarker(markerJames, 2269, 710, -0.5f, -1.0f);
        tileView.addMarker(markerKellogg, 2208, 1560, -0.5f, -1.0f);
        tileView.addMarker(markerKresge, 1726, 1727, -0.5f, -1.0f);
        tileView.addMarker(markerLargeAnimal, 1053, 622, -0.5f, -1.0f);
        tileView.addMarker(markerLewis, 2720, 1114, -0.5f, -1.0f);
        tileView.addMarker(markerLogan, 3230, 1956, -0.5f, -1.0f);
        tileView.addMarker(markerMarable, 4015, 1429, -0.5f, -1.0f); 
        tileView.addMarker(markerMargaret, 2190, 1986, -0.5f, -1.0f);		
        tileView.addMarker(markerMilbank, 303, 2054, -0.5f, -1.0f);
        tileView.addMarker(markerMorrison, 1015, 1983, -0.5f, -1.0f);
        tileView.addMarker(markerNorth, 2311, 497, -0.5f, -1.0f);
        tileView.addMarker(markerOld, 2810, 1636, -0.5f, -1.0f);
        tileView.addMarker(markerOlivia, 2457, 901, -0.5f, -1.0f);
        tileView.addMarker(markerPatterson, 1269, 909, -0.5f, -1.0f);
        tileView.addMarker(markerPhysical, 3101, 809, -0.5f, -1.0f);
        tileView.addMarker(markerPost, 1154, 947, -0.5f, -1.0f);
        tileView.addMarker(markerPower, 2848, 870, -0.5f, -1.0f);
        tileView.addMarker(markerRobertCircle, 1111, 268, -0.5f, -1.0f);
        tileView.addMarker(markerRobert, 1994, 2107, -0.5f, -1.0f);
        tileView.addMarker(markerRockefeller, 3045, 1165, -0.5f, -1.0f);
        tileView.addMarker(markerRosenwald, 1402, 854, -0.5f, -1.0f);
        tileView.addMarker(markerROTC, 3494,1524, -0.5f, -1.0f);
        tileView.addMarker(markerRussell, 1779, 961, -0.5f, -1.0f);
        tileView.addMarker(markerRussellNursery, 1053, 2145, -0.5f, -1.0f);
        tileView.addMarker(markerSage, 3213, 1407, -0.5f, -1.0f);
        tileView.addMarker(markerSmall, 1035, 761, -0.5f, -1.0f);
        tileView.addMarker(markerSoftball, 1063, 2464, -0.5f, -1.0f);
        tileView.addMarker(markerTantum, 2152, 1165, -0.5f, -1.0f);
        tileView.addMarker(markerTennis, 1557, 1279, -0.5f, -1.0f);
        tileView.addMarker(markerOaks, 2708, 1826, -0.5f, -1.0f);
        tileView.addMarker(markerThrasher, 3322, 1547, -0.5f, -1.0f);
        tileView.addMarker(markerTompkins, 2796, 1374, -0.5f, -1.0f);
        tileView.addMarker(markerPolice, 2880, 1370, -0.5f, -1.0f);
        tileView.addMarker(markerUniversityApartment, 794, 2555, -0.5f, -1.0f);
        tileView.addMarker(markerUniversityChapel, 1933, 1505, -0.5f, -1.0f);
        tileView.addMarker(markerWashingtonField, 3697, 2061, -0.5f, -1.0f);
        tileView.addMarker(markerWest, 1079, 1333, -0.5f, -1.0f);
        tileView.addMarker(markerWhite, 2482, 1416, -0.5f, -1.0f);
        tileView.addMarker(markerWilcoxA, 2048, 1933, -0.5f, -1.0f);
        tileView.addMarker(markerWilcoxB, 1852, 1847, -0.5f, -1.0f);
        tileView.addMarker(markerWilcoxC, 1867, 2016, -0.5f, -1.0f);
        tileView.addMarker(markerWilcoxD, 1652, 1865, -0.5f, -1.0f);
        tileView.addMarker(markerWilcoxE, 1647, 1977, -0.5f, -1.0f);
        tileView.addMarker(markerWilliamV, 1181, 2266, -0.5f, -1.0f);
        tileView.addMarker(markerWilliamsB, 902, 936, -0.5f, -1.0f);
        tileView.addMarker(markerYounge, 1559, 1135, -0.5f, -1.0f);
        
	}



  
  	
  
	private void positionMap(Building masters) {
		//Auto-generated method stub
		//Set up change location for each building
		   currentTileView.setScale(masters.d);
		   currentTileView.slideToAndCenter(masters.x, masters.y );
		   
		   
		}
	}
