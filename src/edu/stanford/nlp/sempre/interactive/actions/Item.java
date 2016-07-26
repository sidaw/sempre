package edu.stanford.nlp.sempre.interactive.actions;
import java.util.Set;

//individual stacks
public abstract class Item {
  public abstract void update(String rel, Object value);
  public abstract Object get(String rel);
	// TODO Auto-generated method stub  
  
  // added
	public void move(String rel, Object value) {}
}