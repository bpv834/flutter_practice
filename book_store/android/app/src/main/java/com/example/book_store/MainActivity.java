package com.example.book_store;

import android.os.Bundle;
import android.view.WindowManager; // Add this import statement
import io.flutter.embedding.android.FlutterActivity;

public class MainActivity extends FlutterActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        getWindow().addFlags(WindowManager.LayoutParams.FLAG_HARDWARE_ACCELERATED); // Enable Hardware Acceleration
        super.onCreate(savedInstanceState);
    }
}
