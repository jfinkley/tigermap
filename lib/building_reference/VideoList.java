package android.tigermap;

public class VideoList {
    private String name;
    private String time;
    private int icon;
   
    public VideoList(){
        super();
    }
   
    public VideoList(String name, String time, int icon) {
        super();
        this.name = name;
        this.time = time;
        this.icon = icon;
    }

    public String getName(){
		return name;
    	
    }
    
    public String getTime(){
		return time;
    	
    }
    
    public int getIcon(){
		return icon;
    	
    }
}
