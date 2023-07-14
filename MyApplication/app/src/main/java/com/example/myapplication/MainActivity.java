package com.example.myapplication;

import androidx.appcompat.app.AppCompatActivity;
import androidx.constraintlayout.widget.ConstraintLayout;

import android.os.Bundle;

public class MainActivity extends AppCompatActivity {

    ConstraintLayout layout;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        layout=findViewById(R.id.lay);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}