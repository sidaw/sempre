package edu.stanford.nlp.sempre.interactive.actions;
import java.time.LocalDateTime;
import java.time.temporal.ChronoUnit;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.testng.collections.Lists;
import edu.stanford.nlp.sempre.Json;
import fig.basic.LogInfo;

class Person {
	 public String first;
	 public String last;
	 public String email;
	}

//individual stacks
public class  Event extends Item {
	
	public String title;
  public String location;
  public LocalDateTime start;
  public LocalDateTime end;
  public int[] repeats; // [0,6] days of week, [7] monthly, [8] yearly
  public HashSet<Person> guests;
  public Set<String> names;
	
  
  public Event() {
    this.title = "meeting";
		this.location = "none";
		this.repeats = new int[9];
		this.guests = new HashSet<Person>();
		this.names = new HashSet<>();
			
		this.start = LocalDateTime.now();
		if (this.start.getMinute() > 30) {
			this.start = this.start.plusHours(1);
			this.start = this.start.truncatedTo(ChronoUnit.HOURS);
		}
		else {
			this.start = this.start.truncatedTo(ChronoUnit.HOURS);
			this.start = this.start.plusMinutes(30);
		}
		this.end = this.start.plusHours(1);
  }
  
  public Event(String title, String location) {
  	this();
  	this.title = title;
  	this.location = location;
  }
  
  public Event(String title, String location, LocalDateTime start, LocalDateTime end, int[] repeats, HashSet<Person> guests) {
  	this();
  	this.title = title;
  	this.location = location;
  	this.start = start.plusMinutes(0); //TODO better way?
  	this.end = end.plusMinutes(0);
  	for (int i : repeats) this.repeats[i] = repeats[i];
  	// TODO guests

  }
   
  public Event copy() { // TODO needed?
    return this.clone();
  }
  
  @Override
  public Object get(String property) {
    Object propval;
    if (property.equals("title"))
        propval = this.title;
    else if (property.equals("location"))
        propval = this.location;
    else if (property.equals("start_time"))
        propval = this.start;
    else if (property.equals("end_time"))
        propval = this.end;
    else if (property.equals("duration_hours"))
        propval = this.start.until(this.end, ChronoUnit.HOURS);
    else if (property.equals("duration_minutes"))
        propval = this.start.until(this.end, ChronoUnit.MINUTES);
    else if (property.equals("start_weekday"))
        propval = this.start.getDayOfWeek().getValue();
    else if (property.equals("end_weekday"))
        propval = this.end.getDayOfWeek().getValue();
    else
      throw new RuntimeException("property " + property + " is not supported.");
    
    LogInfo.log(propval.toString());
    LogInfo.log(propval instanceof String); //TODO right now duration is a string, but should be something like time unit
    return propval;
  }
  
  @Override
  public void update(String property, Object value) {
    if (property.equals("title") && value instanceof String)
    	this.title = (String)value;
    else if (property.equals("location") && value instanceof String)
    	this.location = (String)value;
    else if (property.equals("start_weekday") && value instanceof String)
    	updateWeekday(Utils.weekdayToInt((String)value), "start");
    else if (property.equals("end_weekday") && value instanceof String)
    	updateWeekday(Utils.weekdayToInt((String)value), "end");
    else if (property.equals("duration_hours") && value instanceof String)
    	updateDuration((String)value, "hours");
    else if (property.equals("duration_minutes") && value instanceof String)
    	updateDuration((String)value, "minutes");
    
    //TODO continue
    
    else
      throw new RuntimeException("UPDATE setting property " + property + " is not supported.");
  }
  
  public void move(String property, Object value) {
    if (property.equals("start_weekday") && value instanceof String)
    	moveWeekday(Utils.weekdayToInt((String)value), "start");
    else if (property.equals("end_weekday") && value instanceof String)
    	moveWeekday(Utils.weekdayToInt((String)value), "end");
    
    //TODO continue
    
    else
      throw new RuntimeException("MOVE setting property " + property + " is not supported.");
  }
  
  public void updateDuration(String duration, String op) {
  	
  	boolean hours;
  	if (op.equals("hours")) hours = true;
  	else hours = false;
  	
	  try {
		  int d = Integer.parseInt(duration);
	  	this.end = this.start;
		  if (hours)
		  	this.end = this.end.plusHours(d - start.until(end, ChronoUnit.HOURS));
		  else this.end = this.end.plusMinutes(d - start.until(end, ChronoUnit.MINUTES));
	  } catch (NumberFormatException e) {
		  try {
			  float f = Float.parseFloat(duration);
			  if (hours && Math.abs((f - Math.floor(f)) - 0.5) < 0.1) this.end = this.end.plusMinutes(30);
			  int d = (int) Math.floor(f);
			  this.end = this.start;
			  if (hours) this.end = this.end.plusHours(d - start.until(end, ChronoUnit.HOURS));
			  else this.end = this.end.plusMinutes(d - start.until(end, ChronoUnit.MINUTES));
		  }
		  catch (Exception err) {
			  // do nothing
		  }
	  }
  }
  
  //advance start and end (start True) or just end (start False) to next occurrence of weekday (Mon = 1, Sun = 7)
  public void moveWeekday(int weekday, String op) {
	  if (weekday == -1) return;
	  
	  if (op.equals("start")) {
		  while (this.start.getDayOfWeek().getValue() != weekday) {  
			  this.start = this.start.plusDays(1);
			  this.end = this.end.plusDays(1);
		  }
	  }
	  else if (op.equals("end")) {
		  while (this.end.getDayOfWeek().getValue() != weekday) {
		  	this.start = this.start.plusDays(1);
			  this.end = this.end.plusDays(1);
		  }
	  }
  }
  
  //advance start and end (start True) or just end (start False) to next occurrence of weekday (Mon = 1, Sun = 7)
  public void updateWeekday(int weekday, String op) {
	  if (weekday == -1) return;
	  
	  if (op.equals("start")) {
		  while (this.start.getDayOfWeek().getValue() != weekday) {  
			  this.start = this.start.plusDays(1);
		  }
	  }
	  else if (op.equals("end")) {
		  while (this.end.getDayOfWeek().getValue() != weekday) {  
			  this.end = this.end.plusDays(1);
		  }
	  }
  }
  

  @SuppressWarnings("unchecked")
  public static Event fromJSON(String json) {
    List<Object> props = Json.readValueHard(json, List.class);
    return fromJSONObject(props);
  }
  @SuppressWarnings("unchecked")
  public static Event fromJSONObject(List<Object> props) {
    Event retcube = new Event();
    retcube.title = ((String)props.get(0));
    retcube.location = ((String)props.get(1));
    retcube.start = LocalDateTime.parse(((String)props.get(2)));
    retcube.end = LocalDateTime.parse(((String)props.get(3)));

    retcube.names.addAll((List<String>)props.get(4));
    return retcube;
  }
  public Object toJSON() {
  	List<String> globalNames = names.stream().collect(Collectors.toList());
    List<Object> event = Lists.newArrayList(title, location, start.toString(), end.toString(), globalNames);
    return event;
  }

  @Override
  public Event clone() {
    return new Event(this.title, this.location, this.start, this.end, this.repeats, this.guests);
  }
  @Override
  public int hashCode() {
    final int prime = 53;
    int result = 1;
    for (int i = 0; i < this.title.length(); i++) result = prime * result + title.charAt(i);
    result = prime * result + this.start.hashCode();
    result = prime * result + this.end.hashCode();
    return result;
  }
  @Override
  public boolean equals(Object obj) {
    
  	if (this == obj)
      return true;
    if (obj == null)
      return false;
    if (getClass() != obj.getClass())
      return false;
        
    Event other = (Event) obj;
    if (title != other.title)
      return false;
	  if (location != other.location)
	      return false;
	  if (start != other.start)
	      return false;
	  if (end != other.end)
	      return false;
	  // TODO locations, repeats
	  
    return true;
  }
}

class Utils {
  // convert weekday to int (mon - 1, sun - 7), else -1
  public static int weekdayToInt(String weekday) {
  	weekday = weekday.toLowerCase();
	  switch (weekday) {
	  	case ("monday") : case ("mon") : case ("mn") : case ("m") :
	  		return 1;
	  	case ("tuesday") : case ("tue") : case ("tu") :
	  		return 2;
	  	case ("wednesday") : case ("wed") : case ("we") : case ("w") :
	  		return 3;
	  	case ("thursday") : case ("thur") : case ("thu") : case("th") :
	  		return 4;
	  	case ("friday") : case ("fri") : case ("fr") :
	  		return 5;
	  	case ("saturday") : case ("sat") : case ("sa") :
	  		return 6;
	  	case ("sunday") : case ("sun") : case ("su") :
	  		return 7;
	  }
	  return -1;
  }
}