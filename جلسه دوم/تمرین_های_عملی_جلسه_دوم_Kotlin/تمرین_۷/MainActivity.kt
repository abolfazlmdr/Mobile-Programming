package com.example.kotlinbutton

import android.os.Bundle
import android.widget.Button
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        val button = findViewById<Button>(R.id.messageButton)
        button.setOnClickListener {
            Toast.makeText(this, "سلام! دکمه لمس شد.", Toast.LENGTH_SHORT).show()
        }
    }
}
