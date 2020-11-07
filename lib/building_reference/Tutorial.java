package android.tigermap;


import java.util.ArrayList;
import java.util.List;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;


public class Tutorial extends Activity {
	
	private List<VideoList> myVideos = new ArrayList<VideoList>(); 
	final Context context = this;
	@Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.tutorial);
        
        populateVideoList();
        populateListView();
        registerClickCallback();
    }
	
	

	



	private void populateVideoList() {
		// TODO Auto-generated method stub
		myVideos.add(new VideoList("Map Tutorial","03:03", R.drawable.map));
		myVideos.add(new VideoList("Video Tutorial","01:37", R.drawable.tutorial));
		myVideos.add(new VideoList("Feedback Tutorial","02:23", R.drawable.feedback));
	}
	
	private void populateListView() {
		// TODO Auto-generated method stub
		ArrayAdapter<VideoList> adapter = new MyListAdapter();
		ListView list = (ListView) findViewById(R.id.VideoListView);
		list.setAdapter(adapter);
	}
	
	private class MyListAdapter extends ArrayAdapter<VideoList> {

		public MyListAdapter() {
			super(Tutorial.this, R.layout.list_view, myVideos);
			// TODO Auto-generated constructor stub
		}

		@Override
		public View getView(int position, View convertView, ViewGroup parent) {
			// TODO Auto-generated method stub
			View itemView = convertView;
			if(itemView == null){
				itemView = getLayoutInflater().inflate(R.layout.list_view, parent,false);
			//return super.getView(position, convertView, parent);
			
		}
		VideoList currentVideo = myVideos.get(position);
		
		
		ImageView imageView = (ImageView)itemView.findViewById(R.id.item_icon);
		imageView.setImageResource(currentVideo.getIcon());
		
		TextView nameText = (TextView) itemView.findViewById(R.id.item_txtvideotitle);
		nameText.setText(currentVideo.getName());
		
		TextView timeText = (TextView) itemView.findViewById(R.id.item_txtvideotime);
		timeText.setText(currentVideo.getTime());
		
		
		
		return itemView;
		}
		
	} 
	private void registerClickCallback() {
		// TODO Auto-generated method stub
		ListView list = (ListView) findViewById(R.id.VideoListView);
		list.setOnItemClickListener(new AdapterView.OnItemClickListener() {

			@Override
			public void onItemClick(AdapterView<?> parent, View view,
					int position, long id) {
				// TODO Auto-generated method stub
				if(position == 0)
				{
					 Intent intent = new Intent(context, Video1.class);
				      startActivity(intent);
				}
				else if (position == 1)
				{
					 Intent intent = new Intent(context, Video2.class);
				      startActivity(intent);
				}
				
				else if (position == 2)
				{
					 Intent intent = new Intent(context, Video3.class);
				      startActivity(intent);
				}
			}
		});
	}
	
}

