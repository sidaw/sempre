package edu.stanford.nlp.sempre.interactive.blocks;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.function.*;
import java.lang.reflect.Array;
import java.time.LocalDateTime;
import java.time.temporal.ChronoField;
import java.time.temporal.ChronoUnit;


import org.testng.collections.Lists;

import com.google.common.base.Function;
import com.google.common.collect.Sets;

import edu.stanford.nlp.sempre.ContextValue;
import edu.stanford.nlp.sempre.DateValue;
import edu.stanford.nlp.sempre.Json;
import edu.stanford.nlp.sempre.NaiveKnowledgeGraph;
import edu.stanford.nlp.sempre.NumberValue;
import edu.stanford.nlp.sempre.StringValue;
import edu.stanford.nlp.sempre.Value;
import edu.stanford.nlp.util.CollectionUtils;
import fig.basic.Option;
/**
 * Functional primitives
 * @author Sida Wang
 */

class RelationValue {
	public String field;
	public Object value;
	
	public RelationValue(String field, Object value) {
		this.field = field;
		this.value = value;
	}
}

enum CubeColor {
  Red(0), Orange(1), Yellow(2), Green(3), Blue(4), White(6), Gray(7), Black(8), None(20);
  private final int value;
  private static final int MAXCOLOR = 7;
  CubeColor(int value) { this.value = value; }
  public int toInt() { return this.value; }
  public boolean Compare(int i){return value == i;}
  public static CubeColor fromInt(int intc) {
    for(CubeColor c : CubeColor.values())
    {
      if (c.value == intc) return c;
    }
    return CubeColor.None;
  }
  public static CubeColor fromString(String color) {
    for(CubeColor c : CubeColor.values())
    {
      if (c.name().equalsIgnoreCase(color)) return c;
    }
    return CubeColor.None;
  }
}
enum Direction {
  Top, Bot, Left, Right, Front, Back, None;
  public static Direction fromString(String dir) {
    if (dir.equalsIgnoreCase("up") || dir.equalsIgnoreCase("top"))
      return Direction.Top;
    if (dir.equalsIgnoreCase("down") || dir.equalsIgnoreCase("bot"))
      return Direction.Bot;
    if (dir.equalsIgnoreCase("left"))
      return Direction.Left;
    if (dir.equalsIgnoreCase("right"))
      return Direction.Right;
    if (dir.equalsIgnoreCase("front"))
      return Direction.Front;
    if (dir.equalsIgnoreCase("back"))
      return Direction.Back;
    return Direction.None;
  }
}

public final class ActionLDCSWorld {
	
  public static class Options {
    @Option(gloss = "Verbosity")
    public int verbose = 0;
    @Option(gloss = "How many times to repeat")
    public int iterLimit = 20;
    @Option(gloss = "number of colums, so worldSize/numCols is the number of sheets")
    public int worldSize  = 16;
  }
  
  public static Options opts = new Options();
  public static final String COLOR = "COLOR";

  private static final Random random = new Random(1);
  private ActionLDCSWorld() { }

  public static String root(Function<World, World> action, ContextValue context) {
	  
    World world = World.fromContext(context);
    world = action.apply(world);
    world.applyPhysics();
    return world.toJSON();
  }

  public static String print(String methodName) {
	  
	  java.lang.reflect.Method method;
	  Event event = new Event();
	  try {
		  method = event.getClass().getMethod(methodName);
	  }
	  catch (Exception e) {
		  return e.toString();
	  }
	  
	  String res = "empty";
	  try {
		  res = Integer.toString((int)method.invoke(event));
	  }
	  catch (Exception e) {
		  return e.toString();
	  }
	  return res;
  }
  
  public static Function<World, World> newevent() {
	  return w -> {
		  Cube c = new Cube();
		  w.worldSet.add(c);
		  w.selected.clear();
//		  if (w.selected != null) w.selected.clear();
		  w.selected.add(c);
		  return w;
	  };
  }
  
  public static Function<World, World> deleteevent() {
	  return new Function<World, World>() {
		  public World apply(World w) {
//			  Set<Cube> cubes = w.worldSet;
//			  for (Cube c : cubes) c.title = "toDelete";
//			  Cube c = new Cube();
//			  cubes = cubes.add(c);
//			  cubes.clear();
			  w.worldList.clear();
//			  w.worldSet = new HashSet<Cube>();
//			  w.worldSet.add(c);
			  return w;
		  }
	  };
  }
//	  return w -> {
//		  Set<Cube> allcubes = w.worldSet; // TODOTODO TODO
		  
		  
		  
//		  for (Cube c : w.selected) if (true) allcubes.remove(c);
//		  for (Cube c : w.selected) if (allcubes.contains(c)) allcubes.remove(c);
//		  w.selected.clear();
//		  return w;
//	  };
//  }
  
  
  public static Function<World, World> update(RelationValue rv) {
	  return new Function<World, World>() {
		  public World apply(World w) {
			  List<Cube> cubes = w.worldList;
			  switch (rv.field) {
			  	case "title":
			  		for (Cube c : cubes) c.title = (String)rv.value;
			  		break;
			  	case "location":
			  		for (Cube c : cubes) c.location = (String)rv.value;
			  		break;
			  	case "start_weekday":
			  		for (Cube c : cubes) c.updateWeekday((int)rv.value, true);
			  		break;
			  	case "end_weekday":
			  		for (Cube c : cubes) c.updateWeekday((int)rv.value, false);
			  		break;
			  	case "duration_hours":
			  		for (Cube c : cubes) c.updateDuration((String)rv.value, true);
			  		break;
			  	case "duration_minutes":
			  		for (Cube c : cubes) c.updateDuration((String)rv.value, false);
			  		break;
			  	case "start_time":
			  		for (Cube c : cubes) c.updateTime((String)rv.value, true);
			  		break;
			  	case "end_time":
			  		for (Cube c : cubes) c.updateTime((String)rv.value, false);
			  		break;
			  	case "start_date":
			  		for (Cube c : cubes) c.updateDate((DateValue)rv.value, true);
			  		break;
			  	case "end_date":
			  		for (Cube c : cubes) c.updateDate((DateValue)rv.value, false);
			  		break;
			  	case "start_date_move":
			  		for (Cube c : cubes) c.updateDateKeepDuration((DateValue)rv.value, true);
			  		break;
			  	case "end_date_move":
			  		for (Cube c : cubes) c.updateDateKeepDuration((DateValue)rv.value, false);
			  		break;
			  }
			  return w;
		  }
	  };
  }

  public static Function<World, World> find(Function<World, Set<Cube>> s) {
	  return w -> {
		  w.selected = s.apply(w);
		  return w;
	  };
  }

  public static Function<World, Set<Cube>> intersect(Function<World, Set<Cube>> s1, Function<World, Set<Cube>> s2) {
	  return w -> {
		  Set<Cube> set1 = s1.apply(w);
		  set1.retainAll(s2.apply(w)); // intersect
		  return set1;
	  };
  }
  
  public static Function<World, Set<Cube>> union(Function<World, Set<Cube>> s1, Function<World, Set<Cube>> s2) {
	  return w -> {
		  Set<Cube> set1 = s1.apply(w);
		  Set<Cube> set2 = s2.apply(w);
		  for (Cube s : set1) {
			  if (!set2.contains(s)) {
				  set2.add(s);
			  }
		  }
		  return set2;
	  };
  }
  
  public static Function<World, Set<Cube>> has(RelationValue rv) {
	  return w -> {
		  
		  Set<Object> values = new HashSet<Object>();
		  
		  // convert strings to lowercase for search
		  if (rv.value instanceof String) rv.value = ((String) rv.value).toLowerCase();
		  
		  values.add(rv.value);
		  
//		  Set<Object> values = valuef.apply(w); TODO
		  Set<Cube> allcubes = w.worldList.stream().collect(Collectors.toSet());
		  
		  if (allcubes != null && !allcubes.isEmpty() && allcubes.iterator().next().get(rv.field) instanceof String) // handle uppercase strings
		      return allcubes.stream().filter(c -> values.contains(c.get(rv.field).toString().toLowerCase()))
		          .collect(Collectors.toSet());
		  else
			  return allcubes.stream().filter(c -> values.contains(c.get(rv.field)))
			          .collect(Collectors.toSet());
	      
	  };
  }
  
  /***
  // the has function, which always refers to Cubes, cant say has left 
  public static Function<World, Set<Cube>> has(String rel, Function<World, Set<Object>> valuef) {
    return w -> {
      Set<Object> values = valuef.apply(w);
      Set<Cube> allcubes = w.worldList.stream().collect(Collectors.toSet());
      return allcubes.stream().filter(c -> values.contains(c.get(rel)))
          .collect(Collectors.toSet());
    };
  }
  ***/

  
//  public static Function<World, World> move(String dir, Function<World, Set<Cube>> cubesf) {
//	    return new Function<World, World>() {
//	      public World apply(World w) {
//	        Set<Cube> cubes = cubesf.apply(w);
//	        for (Cube c : w.worldList) {
//	          if (cubes.contains(c)) c.move(Direction.fromString(dir));
//	        }
//	        return w;
//	      }
//	    };
//	  }
  
//public static Function<World, World> add(String field, String value, Function<World, Set<Cube>> cubesf) {
//  return new Function<World, World>() {
//    public World apply(World w) {
//      Set<Cube> cubes = addHelper(dir, cubesf).apply(w);
//      w.worldList.addAll( cubes.stream().map(
//          c -> {Cube d = c.copy(Direction.fromString(dir)); d.color = CubeColor.fromString(color); return d;}
//          )
//          .collect(Collectors.toList()) );
//      return w;
//    }
//  };
//}

  
  public static RelationValue relationvalue(String field, Object value) {
	  Object newValue = value;
	  if (field.equals("start_weekday") || field.equals("end_weekday")) {
		  newValue = Utils.weekdayToInt((String)value);
	  }
	  return new RelationValue(field, newValue);
  }
//  
//  public static RelationValue relationvalue(String field, DateValue value) {
//	  return new RelationValue(field, value);
//  }
  
  public static String reset(String name) {
    
	Event e = new Event();
	
	String res = "";
	
	res += "start time: " + e.start.toString() + "   ";
	res += "end time: " + e.end.toString() + "   ";
	res += "name: " + e.name + "   ";
	res += "location: " + e.location + "   ";
	
//	res += e.update(true, "temp", "temp");
	
	res += "======updated=====";
	
	res += "start time: " + e.start.toString() + "   ";
	res += "end time: " + e.end.toString() + "   ";
	res += "name: " + e.name + "   ";
	res += "location: " + e.location + "   ";

	
	return res;
//	return print("update");
//	  
//	  
//    World world = new World(Lists.newArrayList());
//    world.worldList.add(new Cube(1,1,0,CubeColor.Red.toString()));
//    world.worldList.add(new Cube(2,2,0,CubeColor.Orange.toString()));
//    world.worldList.add(new Cube(2,2,1,CubeColor.Orange.toString()));
//    world.worldList.add(new Cube(3,3,0,CubeColor.Yellow.toString()));
//    world.worldList.add(new Cube(1,3,0,CubeColor.Green.toString()));
//    world.worldList.add(new Cube(3,1,0,CubeColor.Blue.toString()));
//    
//    return world.toJSON();
  }

  // Control flow
  public static Function<World, World> repeat(NumberValue times, 
      Function<World, World> action) {
    return w -> {
      for (int i = 0; i < times.value ; i++) {
        w = action.apply(w);
      }
      return w;
    };
  }
  public static Function<World, World> seq(Function<World, World> s1, 
      Function<World, World> s2) {
    return new Function<World, World>() {
      public World apply(World w) {
        return s2.apply(s1.apply(w));
      }
    };
  }
  public static Function<World, World> scope(Function<World, World> action) {
    return new Function<World, World>() {
      public World apply(World w) {
        w.push();
        w = action.apply(w);
        w.pop();
        return w;
      }
    };
  }
  public static Function<World, World> physics() {
    return new Function<World, World>() {
      public World apply(World w) {
        return w;
      }
    };
  }

  public static Function<World, World> remove(Function<World, Set<Cube>> cubesf) {    
    return new Function<World, World>() {
      public World apply(World w) {
        Set<Cube> cubes = cubesf.apply(w);
        w.worldList.removeAll(cubes);
        return w;
      }
    };
  }

  public static Function<World, World> move(String dir, Function<World, Set<Cube>> cubesf) {
    return new Function<World, World>() {
      public World apply(World w) {
        Set<Cube> cubes = cubesf.apply(w);
        for (Cube c : w.worldList) {
          if (cubes.contains(c)) c.move(Direction.fromString(dir));
        }
        return w;
      }
    };
  }


  
  public static Function<World, World> add(String color, String dir, Function<World, Set<Cube>> cubesf) {
    return new Function<World, World>() {
      public World apply(World w) {
        Set<Cube> cubes = addHelper(dir, cubesf).apply(w);
        w.worldList.addAll( cubes.stream().map(
            c -> {Cube d = c.copy(Direction.fromString(dir)); d.color = CubeColor.fromString(color); return d;}
            )
            .collect(Collectors.toList()) );
        return w;
      }
    };
  }

  // X = cubes [];
  public static Function<World, World> mark(Function<World, Set<Cube>> cubesf) {
    return name(cubesf, "S");
  }
  public static Function<World, Set<Cube>> marked() {
    return named(sets("all"), "S");
  }
  public static Function<World, World> name(Function<World, Set<Cube>> cubesf, String name) {
    return new Function<World, World>() {
      public World apply(World w) {
        String namestack = w.stackName(name);
        Set<Cube> cubes = cubesf.apply(w);

        for (Cube c : w.worldList) {
          if (cubes.contains(c)) c.names.add(namestack);
          else c.names.remove(namestack);
        }
        return w;
      }
    };
  }

  public static Function<World, Set<Cube>> setops(String op,
      Function<World, Set<Cube>>  f1,
      Function<World, Set<Cube>>  f2) {
    return setop(op, f1, f2);
  }
  public static Function<World, Set<Value>> setopv(String op,
      Function<World, Set<Value>>  f1,
      Function<World, Set<Value>>  f2) {
    return setop(op, f1, f2);
  }
  
  // Set operations, union, intersection, diff
  public static <T> Function<World, Set<T>> setop(String op,
      Function<World, Set<T>>  f1,
      Function<World, Set<T>>  f2) {
    return new Function<World, Set<T>>() {
      @Override
      public Set<T> apply(World w) {
        Set<T> l1 = f1.apply(w);
        Set<T> l2 = f2.apply(w);
        Collection<T> retval;
        if (op.equals("or") )
          retval = CollectionUtils.union(l1, l2);
        else if (op.equals("and"))
          retval = CollectionUtils.intersection(l1, l2);
        else if (op.equals("sub") || op.equals("diff") || op.equals("except"))
          retval = CollectionUtils.diff(l1, l2);
        else
          throw new RuntimeException("unsupported set operation: " + op);
        return retval.stream().collect(Collectors.toSet());
      };
    };
  }

  // convert simple cube filters
  public static Function<World, Set<Cube>> filter(Function<World, Set<Cube>> cubesf, Function<Cube, Boolean> simplef) {
    return new Function<World, Set<Cube>>() {
      public Set<Cube> apply(World w) {
        Set<Cube> cubes = cubesf.apply(w);
        return cubes.stream().filter( c -> simplef.apply(c) ).collect(Collectors.toSet());
      }
    };
  }

  public static Function<World, Set<Cube>> filter(Function<Cube, Boolean> simplef) {
    return new Function<World, Set<Cube>>() {
      public Set<Cube> apply(World w) {
        return w.worldList.stream().filter( c -> simplef.apply(c) ).collect(Collectors.toSet());
      }
    };
  }

  public static Function<Cube, Boolean> colored(CubeColor color) {
    return new Function<Cube, Boolean>() {
      public Boolean apply(Cube c) {
        return c.color == color;
      }
    };
  }

  public static Function<Cube, Boolean> truef() {
    return new Function<Cube, Boolean>() {
      public Boolean apply(Cube s) {
        return true;
      }
    };
  }


  // handles color and name
  public static Function<Cube, Boolean> equals(Function<Cube, Object> propf, String value) {
    return new Function<Cube, Boolean>() {
      @SuppressWarnings("unchecked")
      public Boolean apply(Cube c) {
        Object prop = propf.apply(c);
        if (prop instanceof CubeColor)
          return ((CubeColor) prop).name().equalsIgnoreCase(value);
        else if (prop instanceof Set)
          return ((Set<String>) prop).contains(value);
        else
          throw new RuntimeException("unsupported equality");
      }
    };
  }


  public static Function<Cube, Boolean> compare(String comp, Function<Cube, NumberValue> g1, Function<Cube, NumberValue> g2) {
    return new Function<Cube, Boolean>() {
      public Boolean apply(Cube s) {
        double propval = g1.apply(s).value;
        NumberValue val = g2.apply(s);
        if (comp.equals(">") && propval > val.value)
          return true;
        else if (comp.equals(">=") && propval >= val.value)
          return true;
        else if ((comp.equals("=") || comp.equals("==") ) && (int)propval == (int)val.value)
          return true;
        else if (comp.equals("<=") && propval <= val.value)
          return true;
        else if (comp.equals("<") && propval < val.value)
          return true;
        else if (comp.equals("!=") && propval != val.value)
          return true;
        else
          return false;
      }
    };
  }
  public static Function<Cube, Boolean> compare(String comp, NumberValue g1, Function<Cube, NumberValue> g2) {
    return compare(comp, constant(g1), g2);
  }
  public static Function<Cube, Boolean> compare(String comp, Function<Cube, NumberValue> g1, NumberValue g2) {
    return compare(comp, g1, constant(g2));
  }
  public static Function<Cube, Boolean> compare(String comp, NumberValue g1, NumberValue g2) {
    return compare(comp, constant(g1), constant(g2));
  }

  public static Function<Cube, NumberValue> negative(Function<Cube, NumberValue> getf) {
    return new Function<Cube, NumberValue>() {
      public NumberValue apply(Cube s) {
        NumberValue orig = getf.apply(s);
        return new NumberValue(-orig.value, orig.unit);
      }
    };
  }

  public static Function<Cube, Object> get(String property) {
    return new Function<Cube, Object>() {
      public Object apply(Cube s) {
        return s.get(property);
      }
    };
  }

  public static Function<Cube, NumberValue> constant(NumberValue constant) {
    return new Function<Cube, NumberValue>() {
      public NumberValue apply(Cube s) {
        return constant;
      }
    };
  }

  // performs arithmetics
  public static Function<Cube, NumberValue> arith(String op, Function<Cube, NumberValue> f1, Function<Cube, NumberValue> f2) {
    return new Function<Cube, NumberValue>() {
      public NumberValue apply(Cube s) {
        double val1 = f1.apply(s).value;
        double val2 = f2.apply(s).value;
        if (op.equals("+")) {
          return new NumberValue(val1 + val2);
        } else if (op.equals("-")) {
          return new NumberValue(val1 - val2);
        } else if (op.equals("%")) {
          return new NumberValue(val1 % val2);
        }  else
          throw new RuntimeException("operator " + op + " is not supported.");
      }
    };
  }
  public static Function<Cube, NumberValue> arith(String op, Function<Cube, NumberValue> f, NumberValue n) {
    return arith(op, f, constant(n));
  }
  public static Function<Cube, NumberValue> arith(String op, NumberValue n, Function<Cube, NumberValue> f) {
    return arith(op, constant(n), f);
  }

  public static Function<World, Set<Cube>> argmin(Function<World, Set<Cube>> cubesf,
      Function<Cube, NumberValue> f) {
    return argmax(cubesf, negative(f));
  }

  public static Function<World, Set<Cube>> argmax(Function<World, Set<Cube>> cubesf, Function<Cube, NumberValue> f) {
    return new Function<World, Set<Cube>>() {
      @Override
      public Set<Cube> apply(World w) {
        int maxvalue = Integer.MIN_VALUE;
        Set<Cube> cubes = cubesf.apply(w);
        for (Cube c : cubes) {
          int cvalue = (int)f.apply(c).value;
          if (cvalue > maxvalue) maxvalue = cvalue;
        }
        final int maxValue = maxvalue;
        return cubes.stream().filter(c -> f.apply(c).value >= maxValue).collect(Collectors.toSet());
      }
    };
  }

  public static Function<World, Set<Cube>> named(Function<World, Set<Cube>> cubesf, String name) {
    return new Function<World, Set<Cube>>() {
      @Override
      public Set<Cube> apply(World w) {
        Set<Cube> cubes = cubesf.apply(w);
        return cubes.stream().filter(c -> c.names.contains(w.stackName(name))).collect(Collectors.toSet());
      }
    };
  }

  // get neighbors left of, right of, etc.
  public static Function<World, Set<Cube>> ofs(String dirstr, Function<World, Set<Cube>> cubesf) {
    return w -> {
      Direction dir = Direction.fromString(dirstr);
      Set<Cube> cubes = cubesf.apply(w);
      Set<Cube> allcubes = w.worldList.stream().collect(Collectors.toSet());
      return cubes.stream().map(c -> c.copy(dir)).filter(c -> allcubes.contains(c))
          .collect(Collectors.toSet());
    };
  }

  // get some other value
  public static Function<World, Set<Object>> ofv(String rel, Function<World, Set<Cube>> cubesf) {
    return w -> {
      Set<Cube> cubes = cubesf.apply(w);
      return cubes.stream().map(c -> c.get(rel))
          .collect(Collectors.toSet());
    };
  }
  
  
  // the has function, which always refers to Cubes, cant say has left 
  public static Function<World, Set<Cube>> has(String rel, Function<World, Set<Object>> valuef) {
    return w -> {
      Set<Object> values = valuef.apply(w);
      Set<Cube> allcubes = w.worldList.stream().collect(Collectors.toSet());
      return allcubes.stream().filter(c -> values.contains(c.get(rel)))
          .collect(Collectors.toSet());
    };
  }
  
  public static Function<World, Set<Object>> val(String oneValue) {
     CubeColor color = CubeColor.fromString(oneValue);
     if (color != CubeColor.None) return single(color);
     else return single(oneValue);
  }
  
  public static Function<World, Set<Object>> single(Object oneValue) {
    return w -> Sets.newHashSet(oneValue);
  }

  // get cubes at extreme positions
  public static Function<World, Set<Cube>> addHelper(String dirstr, Function<World, Set<Cube>> cubesf) {
    return w -> {
      Direction dir = Direction.fromString(dirstr);
      Set<Cube> cubes = cubesf.apply(w);
      Set<Cube> allcubes = w.worldList.stream().collect(Collectors.toSet());
      return cubes.stream().map(c -> {
        while(allcubes.contains(c.copy(dir)))
          c = c.copy(dir);
        return c;
      }).collect(Collectors.toSet());
    };
  }
  
  //get cubes at extreme positions
  public static Function<World, Set<Cube>> veryx(String dirstr, Function<World, Set<Cube>> cubesf) {
    Direction dir = Direction.fromString(dirstr);
    switch (dir) {
    case Back: return argmax(cubesf, c -> new NumberValue(c.row));
    case Front: return argmax(cubesf, c -> new NumberValue(-c.row));
    case Left: return argmax(cubesf, c -> new NumberValue(c.col));
    case Right: return argmax(cubesf, c -> new NumberValue(-c.col));
    case Top: return argmax(cubesf, c -> new NumberValue(c.height));
    case Bot: return argmax(cubesf, c -> new NumberValue(-c.height));
    default: throw new RuntimeException("invalid direction");
    }
  }
    
  public static Function<World, Set<Cube>> sets(String fname) {
    return new Function<World, Set<Cube>>() {
      @Override
      public Set<Cube> apply(World w) {
        return w.worldList.stream().collect(Collectors.toSet());
      }
    };
  }
}

// the world of stacks
class World {
  public static final int worldSize = ActionLDCSWorld.opts.worldSize;
  // alternative representation
  // row, col, basically 
  public Set<Cube> worldSet;
  //world list is always up to date,
  // with world array used only when needed
  public List<Cube> worldList;
  
  public Set<Cube> selected;
  // how does find work with cubes 
  // coreNLP
  // 
  
  public Map<String,Set<Cube>> vars;
  // this is probably the place to deal with disconnected stuff
  private int stackLevel = 0;

  @SuppressWarnings("unchecked")
  private void updateWorldMap() {
    worldSet = worldList.stream().collect(Collectors.toSet());
  }

  private void updateWorldList() {
    worldList = worldSet.stream().collect(Collectors.toList());
  }

  public void applyPhysics() {
    updateWorldMap();
    updateWorldList();
  }

  @SuppressWarnings("unchecked")
  public World(List<Cube> worldlist) {
	this.selected = new HashSet<Cube>(); // added
    this.worldList = worldlist;
    updateWorldMap();
  }

  public void push() {stackLevel++;}
  public void pop() {stackLevel--;}
  // local variables starts with _
  public String stackName(String name) {
    //if (name.contains("[],"))
    //  throw new RuntimeException("the name should not contain JSON characters");
    if (name.startsWith("_"))
      return stackLevel + name;
    else return name;
  }

  public String toJSON() {
    // updateWorldArray();
    // updateWorldList();
    // return "testtest";
	  
	  
	if (this.selected != null && !this.selected.isEmpty())
		return Json.writeValueAsStringHard(this.worldList.stream().map(c -> c.toJSON()).collect(Collectors.toList()))
			+ " selected: "
			+ Json.writeValueAsStringHard(this.selected.stream().map(c -> c.toJSON()).collect(Collectors.toList()));
	else 
		return Json.writeValueAsStringHard(this.worldList.stream().map(c -> c.toJSON()).collect(Collectors.toList()))
				+ " selected EMPTY";
    // return this.worldlist.stream().map(c -> c.toJSON()).reduce("", (o, n) -> o+","+n);
  }

  public static World fromContext(ContextValue context) {
    NaiveKnowledgeGraph graph = (NaiveKnowledgeGraph)context.graph;
    String wallString = ((StringValue)graph.triples.get(0).e1).value;
    return fromJSON(wallString);
  }

  private static World fromJSON(String wallString) {
    @SuppressWarnings("unchecked")
    List<List<Object>> cubestr = Json.readValueHard(wallString, List.class);
    List<Cube> cubes = cubestr.stream().map(c -> {return Cube.fromJSONObject(c);})
        .collect(Collectors.toList());
    //throw new RuntimeException(a.toString()+a.get(1).toString());
    return new World(cubes);
  }
}

//individual stacks
class Cube {  
  
  public CubeColor color;
  int row, col, height;
  public Set<String> names;
  
  public String title;
  public String location;
  public LocalDateTime start;
  public LocalDateTime end;
  public List<Person> guests;
  public int[] repeats; // [0,6] days of week, [7] monthly, [8] yearly
  
  public Cube(int row, int col, int height, String color, String title) {
//	  this(); //forward all construction to default TODO
	  this(row, col, height);
	  this.color = CubeColor.fromString(color);
//	  this.title = title;
    
  }
  
  public Cube(int row, int col, int height, String color) {
//	  this(); //forward all construction to default TODO
	  this(row, col, height);
	  this.color = CubeColor.fromString(color);
  }
  
  // used as a key
  public Cube(int row, int col, int height) {
    this();
    this.row = row; this.col = col; this.height = height;
  }
  
  public Cube() {
	  
	//Cube
    this.row = Integer.MAX_VALUE; this.col = Integer.MAX_VALUE; this.height = Integer.MAX_VALUE;
    this.color = CubeColor.fromString("None");
    this.names = new HashSet<>();
    
    //Calendar
    this.title = "meeting";
	this.location = "temp";
	this.guests = new ArrayList<Person>();
	this.repeats = new int[9];
		
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
  
  public boolean isLetter(char c) {
	  return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
  }
  
  //advance start and end (start True) or just end (start False) to next occurrence of weekday (Mon = 1, Sun = 7)
  public void advanceToNextDay(int weekday, boolean start) {
	  if (start) {
		  while (this.start.getDayOfWeek().getValue() != weekday) {  
			  this.start = this.start.plusDays(1);
			  if (this.start.isAfter(this.end)) this.end = this.end.plusDays(1);
		  }
	  }
	  else {
		  while (this.end.getDayOfWeek().getValue() != weekday) {  
			  this.end = this.end.plusDays(1);
		  }
	  }
  }

  // start : true indicates updating the start and end. start : false indicates only end date updated
  public void updateWeekday(int value, boolean start) {
	  //convert to integer and advance start/end date
	  if (value != -1) advanceToNextDay(value, start);
  }
  
  public void updateDuration(String duration, boolean hours) {
	  try {
		  int d = Integer.parseInt(duration);
		  if (hours) this.end = this.end.plusHours(d - start.until(end, ChronoUnit.HOURS));
		  else this.end = this.end.plusMinutes(d - start.until(end, ChronoUnit.MINUTES));
	  } catch (NumberFormatException e) {
		  try {
			  float f = Float.parseFloat(duration);
			  if (hours && Math.abs((f - Math.floor(f)) - 0.5) < 0.1) this.end = this.end.plusMinutes(30);
			  int d = (int) Math.floor(f);
			  if (hours) this.end = this.end.plusHours(d - start.until(end, ChronoUnit.HOURS));
			  else this.end = this.end.plusMinutes(d - start.until(end, ChronoUnit.MINUTES));
		  }
		  catch (Exception err) {
			  // do nothing
		  }
	  }
  }
  
  public void updateTime(String time, boolean start) {
	  throw new RuntimeException("update time not yet implemented");
  }
  
  public void updateDate(DateValue time, boolean start) {
	  
	  if (start) {
		  // update start
		  if (time.day != -1) this.start = this.start.with(ChronoField.DAY_OF_MONTH, time.day);
		  if (time.month != -1) this.start = this.start.with(ChronoField.MONTH_OF_YEAR, time.month);
		  if (time.year != -1) this.start = this.start.with(ChronoField.YEAR, time.year);
	  }
	  
	  if (!start) { // updating end
		  if (time.day != -1) this.end = this.end.with(ChronoField.DAY_OF_MONTH, time.day);
		  if (time.month != -1) this.end = this.end.with(ChronoField.MONTH_OF_YEAR, time.month);
		  if (time.year != -1) this.end = this.end.with(ChronoField.YEAR, time.year);
	  }
  }
	  
  public void updateDateKeepDuration(DateValue time, boolean start) {
	  
	  // save current duration
	  long duration_min = this.start.until(end, ChronoUnit.MINUTES);
	  
	  if (start) {
		  // update start
		  if (time.day != -1) this.start = this.start.with(ChronoField.DAY_OF_MONTH, time.day);
		  if (time.month != -1) this.start = this.start.with(ChronoField.MONTH_OF_YEAR, time.month);
		  if (time.year != -1) this.start = this.start.with(ChronoField.YEAR, time.year);
		  
		  // update end
		  this.end = this.start.plusMinutes(duration_min);
		  
	  }
	  
	  if (!start) { // updating end
		  if (time.day != -1) this.end = this.end.with(ChronoField.DAY_OF_MONTH, time.day);
		  if (time.month != -1) this.end = this.end.with(ChronoField.MONTH_OF_YEAR, time.month);
		  if (time.year != -1) this.end = this.end.with(ChronoField.YEAR, time.year);
		  
		  // if new end time is before start time, update start time
		  this.start = this.end.plusMinutes(-duration_min);
	  }  
  }
  
  public Cube move(Direction dir) {
    switch (dir) {
    case Back: this.row +=1; break;
    case Front: this.row -= 1; break;
    case Left: this.col += 1; break;
    case Right: this.col -= 1; break;
    case Top: this.height += 1; break;
    case Bot: this.height -= 1; break;
    case None: break;
    }
    return this;
  }
  public Cube copy(Direction dir) {
    Cube c = this.clone();
    switch (dir) {
    case Back: c.row += 1; break;
    case Front: c.row -= 1; break;
    case Left: c.col += 1; break;
    case Right: c.col -= 1; break;
    case Top: c.height += 1; break;
    case Bot: c.height -= 1; break;
    case None: break;
    }
    return c;
  }
  public Object get(String property) {
    Object propval;
    if (property.equals("height"))
      propval = new NumberValue(this.height);
    else if (property.equals("row"))
      propval = new NumberValue(this.row);
    else if (property.equals("col"))
      propval = new NumberValue(this.col);
    else if (property.equals("color"))
      propval = this.color;
    else if (property.equals("name"))
      propval = this.names;
    
    //calendar
    else if (property.equals("title"))
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
        propval = this.start.until(this.end, ChronoUnit.HOURS);
    else if (property.equals("start_weekday"))
        propval = this.start.getDayOfWeek().getValue();
    else if (property.equals("end_weekday"))
        propval = this.end.getDayOfWeek().getValue();
    
    
    else
      throw new RuntimeException("property " + property + " is not supported.");
    return propval;
  }
  @SuppressWarnings("unchecked")
  public static Cube fromJSON(String json) {
    List<Object> props = Json.readValueHard(json, List.class);
    return fromJSONObject(props);
  }
  @SuppressWarnings("unchecked")
  public static Cube fromJSONObject(List<Object> props) {
    Cube retcube = new Cube();
    retcube.row = ((Integer)props.get(0));
    retcube.col = ((Integer)props.get(1));
    retcube.height = ((Integer)props.get(2));
    retcube.color = CubeColor.fromString(((String)props.get(3)));
    
    // calendar 
    retcube.title = ((String)props.get(4));
    retcube.location = ((String)props.get(5));
    retcube.start = LocalDateTime.parse(((String)props.get(6)));
    retcube.end = LocalDateTime.parse(((String)props.get(7)));
    
    retcube.names.addAll((List<String>)props.get(8));
    return retcube;
  }
  public Object toJSON() {
    List<String> globalNames = names.stream().collect(Collectors.toList());
//    List<Object> cube = Lists.newArrayList(row, col, height, color.toString(), globalNames);
    List<Object> cube = Lists.newArrayList(color, title, location, start.toString(), end.toString());
    return cube;
  }

  @Override
  public Cube clone() {
    Cube c = new Cube(this.row, this.col, this.height, this.color.toString());
    return c;
  }
  @Override
  public int hashCode() {
    final int prime = 53;
    int result = 1;
    result = prime * result + col;
    result = prime * result + height;
    result = prime * result + row;
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
    Cube other = (Cube) obj;
    if (col != other.col)
      return false;
    if (height != other.height)
      return false;
    if (row != other.row)
      return false;
    
    
    // calendar TODO
    if (title != other.title)
        return false;
    if (location != other.location)
        return false;
    if (start != other.start)
        return false;
    if (end != other.end)
        return false;
    
    
    return true;
  }

}



class Person {
 public String first;
 public String last;
 public String email;
}

class Event {
  public String name;
  public LocalDateTime start;
  public LocalDateTime end;
  public String location;
  public List<Person> guests;
  public int[] repeats; // [0,6] days of week, [7] monthly, [8] yearly
  
  public Event() {
	this.name = "new meeting";
	this.location = "";
	this.guests = new ArrayList<Person>();
	this.repeats = new int[9];
		
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

  public void updateLocation(String value) {
    this.location = value;
  }
  
  public void updateName(String value) {
	  this.location = value;
  }
  
  public void updateStartTime(String value) {
	  this.location = value;
  }
  
  public void updateStartDate(String value) {
	  this.location = value;
  }
  
  public void updateEndTime(String value) {
	  this.location = value;
  }
  
  public void updateEndDate(String value) {
	  this.location = value;
  }
  
  
//  public void updateStartTime() {
//		LocalDateTime ref;
//    ref = start ? this.start : this.end;
//  }


//  public Event(
//        String name,
//        String startTime,
//        String endTime,
//        String startDate,
//        String endDate,
//        String startWeekday,
//        String endWeekday,
//        String location,
//        List<Person> guests,
//        Array[] repeats) {
//
//    // name
//    this.name = name ? name : "new meeting";
//    this.start = LocalDateTime.now();
//    this.end = this.start.plusHours(1.0);
//    
//    // start time
//    this.start = LocalDateTime.now();
//    if (startTime) {
//      this.start = this.start.withHour(getHour(startTime));
//      this.start = this.start.withMinute(getMinute(startTime)));
//    }
//    else {
//      if (this.start.getMinute() > 30) {
//        this.start = this.start.withMinute(0);
//        this.start = this.start.plusHours(1.0);
//      }
//      else {
//        this.start = this.start.withMinute(30);
//      }
//    }
//
//    // start date
//    if (startDate) {
//     this.start = this.start.withDayOfMonth(getDate(startDate));
//    }
//    
//    // end time
//    this.end = this.start.plusHours(1.0);
//    if (endTime) {
//      
//    }
//    if (endTime && endTime.isAfter(this.startTime)) this.endTime = endTime;
//    else this.endTime = this.startTime.plusHours(1.0);
//
//    // start date 
//    this.startDate ? startDate : LocalDate.now();
//
//    // end date
//    if (endDate && endDate.isAfter(startDate)) this.endDate = endDate;
//    else if (endDate && endTime.isAfter(startTime)) this.endDate = endDate;
//    else this.endDate = this.startDate
//
//
//    this.endDate = endDate : LocalDate(default);
//    this.location ? location : "";
//
//
//    for(int i = 0; i < repeats.length; i++)
//      this.repeats[i] = repeats[i];
//  }

}

class Utils {
	  // convert weekday to int (mon - 1, sun - 7), else -1
	  public static int weekdayToInt(String weekday) {
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




