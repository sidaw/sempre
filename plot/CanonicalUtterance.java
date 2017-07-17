import java.util.*;

public class CanonicalUtterance
{
	String path;
	String value;
	public CanonicalUtterance() { }
	public CanonicalUtterance(String path, String value) {
		this.path = path;
		this.value = value;
	}


	public String simple_canonical_utterance()
	{
		String u = "Set "+path+" to "+value;
		return u;

	}


	public String complex_canonical_utterance()
	{
		String u = "";
		if(value.equals("blue"))
		{
			u = "Set the color of "+path+" to "+value;
		}
		return u;

	}

	public static void main(String [] args)
	{
		CanonicalUtterance u = new CanonicalUtterance("/axis/title", "blue");
		System.out.println(u.simple_canonical_utterance());
	}

}



