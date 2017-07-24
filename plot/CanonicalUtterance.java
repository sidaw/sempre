import java.util.*;

public class CanonicalUtterance
{
	String path;
	String value;
	public CanonicalUtterance() { }
	//path should be seperated by period, e.g. encoding.y.timeUnit
	public CanonicalUtterance(String path, String value) {
		this.path = path;
		this.value = value;
	}


	public String get_simple_canonical_utterance()
	{     
		String first_path_key = "";  
		if(path.split("\\.").length > 0)  {
		    first_path_key = path.split("\\.")[0];
         }	
		if(first_path_key.equals("encoding") || first_path_key.equals("layer") || first_path_key.equals("config") || first_path_key.equals("spec"))
		{   
			int startPath = first_path_key.length() + 1;
			path = path.substring(startPath);
		}
		String u = "Set "+path+" to "+value+".";
		return u;

	}


	public String get_canonical_utterance()
	{
		String u = "";
		if(path.equals("encoding.x.scale.nice"))
		{
			u = "Set scale to human-friendly value: "+value+".";
		}  
		else if(path.equals("spec.encoding.color.field"))  
		{
			u = "Set the encoding type for the color field to be "+value+".";
		}  
		else if(path.equals("encoding.y.stack")) 
		{
			u = "Set stack offset to be "+value+".";
		}
		else if(path.equals("layer.encoding.y.aggregate")) 
		{
			u = "Aggregate over the y-axis data using the "+value+" operation.";
		} 
		else if(path.equals("layer.encoding.x.aggregate")) 
		{
			u = "Aggregate over the x-axis data using the "+value+" operation.";
		}
		else if(path.equals("encoding.y.aggregate")) 
		{
			u = "Aggregate over the y-axis data using the "+value+" operation.";
		} 
		else if(path.equals("encoding.x.aggregate")) 
		{
			u = "Aggregate over the x-axis data using the "+value+" operation.";
		} 
		else if(path.equals("transform.filter")) 
		{
			u = "Apply filter "+value+".";
		}
		else if(path.equals("encoding.x.scale")) 
		{
			u = "Zero baseline value included in the x scale domain is "+value+".";
		} 
		else if(path.equals("encoding.y.scale")) 
		{
			u = "Zero baseline value included in the y scale domain is "+value+".";
		} 
		else if(path.equals("encoding.color.type")) 
		{
			u = "Set the color data type to "+value+".";
		}
		else if(path.equals("encoding.color.field")) 
		{
			u = "Color the plot using color field from "+value+" data source.";
		}
		else if(path.equals("encoding.color")) 
		{
			u = "Set the color of the marks to "+value+".";
		} 
		else
		{
			u = get_simple_canonical_utterance();
		}
		return u;

	}

	public static void main(String [] args)
	{
		CanonicalUtterance u = new CanonicalUtterance("encoding.y.timeUnit", "blue");
		System.out.println(u.get_canonical_utterance());
	}

}



