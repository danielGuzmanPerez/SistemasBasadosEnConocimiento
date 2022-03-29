package challenge2;

import jade.core.Agent;
import jade.core.behaviours.OneShotBehaviour;
import net.sf.clipsrules.jni.*;
/**
 *
 * @author vdgp_
 */
 
public class Challenge2 extends Agent{
    Environment clips;
    @Override
     protected void setup() {
           clips = new Environment();
    System.out.println("Agent "+getLocalName()+" started.");
    addBehaviour(new MyOneShotBehaviour());
  } 

  private class MyOneShotBehaviour extends OneShotBehaviour {

    @Override
    public void action() {
      
        try {
            clips.load("../tarea/market/run.clp");
            clips.run();
            
            
            
        } catch (Exception ex) {
            
        }
    } 
    
    public int onEnd() {
      myAgent.doDelete();   
      return super.onEnd();
    } 
  }    // END of inner class ...Behaviour
   
}
