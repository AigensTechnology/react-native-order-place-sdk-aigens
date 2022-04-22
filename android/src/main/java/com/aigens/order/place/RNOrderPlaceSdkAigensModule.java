
package com.aigens.order.place;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.aigens.sdk.OrderPlace;
import org.json.JSONObject;
import org.json.JSONException;
import android.util.Log;
import androidx.annotation.Nullable;
public class RNOrderPlaceSdkAigensModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNOrderPlaceSdkAigensModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNOrderPlaceSdkAigens";
  }

  @ReactMethod
  //public void openByod(ReadableMap options2, @Nullable Callback failureCallback, @Nullable Callback successCallback) {
  public void openByod(@Nullable Callback failureCallback, @Nullable Callback successCallback) {
    Log.d("RNOrderPlaceSdkAigensModule", "openbyod");
    JSONObject options = new JSONObject();
    JSONObject member = new JSONObject();
    String features = "gps,scan,googlepay";
    String protocolArray="alipays://,octopus:,alipayhk://,https://play.google.com,tel:,mailto:,hsbcpaymepay://";
    try {
        member.putOpt("memberId", "ABCDEFGH");
        member.putOpt("source", "genki");
        member.putOpt("session", "ABCDEFGH");//same as memberId
        member.putOpt("language", "zh");//en,zh,zh-cn
        member.putOpt("name", "Optional Name");// Optional (with actual data)
        member.putOpt("gender", "M");//F,M
        member.putOpt("phone", "87654321");//(with actual data)
        member.putOpt("email", "membersemail@email.com");//(with actual data)
        options.putOpt("member", member);
        options.putOpt("features", features);
        options.putOpt("systemOpenUrl",protocolArray);
    } catch (JSONException e) {
    }
    // uat
    String url = "https://www.google.com.hk/";
    // prd
    // String url = "...";
    OrderPlace.openUrl(this.reactContext, url, options);

  }

}