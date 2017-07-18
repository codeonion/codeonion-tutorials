package com.codeonion.myproject;

import android.app.Activity;
import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends Activity {

    public Button button_oldssguide;


    public void openoldssguide(){
        button_oldssguide = (Button)findViewById(R.id.button_menu_openssguide);
        button_oldssguide.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent intention_to_open_oldssGuide = new Intent(MainActivity.this, OldssguideActivity.class);
                startActivity(intention_to_open_oldssGuide);
            }
        });
    }
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.mainmenu_layout);

        openoldssguide();
    }
}
