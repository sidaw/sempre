import java.util.*;

public class CanonicalUtterance {
	String path;
	String value;
	String [][] complexUtterances = {complexPath("encoding.x.scale.nice", "Set scale to human-friendly value: "),
		complexPath("spec.encoding.color.field", "Set the encoding type for the color field to be "),
		complexPath("encoding.y.stack", "Set stack offset to be "), 
		complexPath("layer.encoding.y.aggregate", "Aggregate over the y-axis data using "),
		complexPath("layer.encoding.x.aggregate", "Aggregate over the x-axis data using "),
		complexPath("encoding.y.aggregate", "Aggregate over the y-axis data using "),
		complexPath("encoding.x.aggregate", "Aggregate over the x-axis data using "),
		complexPath("transform.filter","Apply filter "), 
		complexPath("encoding.x.scale","Zero baseline value included in the x scale domain is "),
		complexPath("encoding.y.scale","Zero baseline value included in the y scale domain is "),
		complexPath("encoding.color.field","Color the plot using color field from data source: "),
		complexPath("encoding.color.type","Set the color data type to "),
		complexPath("encoding.color","Set the color of the marks to ")}; 
		
	public CanonicalUtterance() { }	  
	
	//path should be seperated by period, e.g. encoding.y.timeUnit
	public CanonicalUtterance(String path, String value) {
		this.path = path;
		this.value = value;
	}

	public String getSimpleCanonicalUtterance() {	  
		String first_path_key = "";	 
		if(path.split("\\.").length > 0)  {
			first_path_key = path.split("\\.")[0];
		 }	
		//check if path starts with a high level key that can be removed when generating utterance
		if(first_path_key.equals("encoding") || first_path_key.equals("layer") || first_path_key.equals("config") || first_path_key.equals("spec")) {	
			int startPath = first_path_key.length() + 1;
			path = path.substring(startPath);
		}
		String u = "Set " + path + " to " + value + ".";
		return u;
	}

	public String getCanonicalUtterance() {
		String u = getSimpleCanonicalUtterance();
		for (int i=0; i<complexUtterances.length; i++) { 
			if(path.equals(complexUtterances[i][0])) {
				u = complexUtterances[i][1] + value + ".";
			}		
		}
		return u;
	}
	
	public String[] complexPath(String path, String utterance) { 
		String [] p = {path, utterance};
		return p;
	}

	public static void main(String [] args) {	
		//example
		CanonicalUtterance u = new CanonicalUtterance("transform.filter", "blue");
		System.out.println(u.getCanonicalUtterance());
	}
}



