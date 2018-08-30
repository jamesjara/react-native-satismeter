
package com.jamesjara.rnsatismeter;

import android.app.Activity;
import android.content.Intent;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReadableMap;
import java.util.HashMap;

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
  public void run(Boolean force){
    final Activity activity = getCurrentActivity();
    SatisMeter.identify(activity, this.key, this.userid, traits);
    // @TODO implement forceSurvey Method
  }
}
