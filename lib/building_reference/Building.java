package android.tigermap;

public class Building {
	// Declare public variable x, y, and name
	public int x, y;
	public double d;
	public String name;
	
	// Create a Constructor
	public Building( String _name, int _x, int _y, double _d) {
		
		//Storing the parameter to variable
		x = _x;
		y = _y;
		d = _d;
		name = _name;
		
	}
	
	// Display the ToastIt of the Building Name
	public String toString(){
		return( name);
	}
}
