
package com.jamesjara.rnsatismeter;

import android.app.Activity;
import android.content.Intent;
import java.util.HashMap;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.ReadableMapKeySetIterator;
import com.facebook.react.bridge.ReadableType;
import android.util.Log;
import com.satismeter.SatisMeter;

public class RNSatismeterModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;
  private String key;
  private String userid;
  private ReadableMap traits;

  public RNSatismeterModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNSatismeter";
  }

  @ReactMethod
  public void setKey(String key){
     this.key = key;
  }

  @ReactMethod
  public void setUserId(String userid){
    this.userid = userid;
  }

  @ReactMethod
  public void setUserTraits(ReadableMap traits){
    this.traits = traits;
  }

  @ReactMethod
  public void run(){
    final Activity activity = getCurrentActivity();
    HashMap<String, Object> trait = new HashMap();
    
    ReadableMapKeySetIterator iterator = this.traits.keySetIterator();
    while(iterator.hasNextKey()){
	    String key = iterator.nextKey();
	    ReadableType type = this.traits.getType(key);
	    if(type == ReadableType.String){
		trait.put((String) key, (String) this.traits.getString(key));
	    }
    }
   
    SatisMeter.identify(activity, this.key, "jamesjara@gmail.com" , trait);
    // @TODO implement forceSurvey Method
  }
}
