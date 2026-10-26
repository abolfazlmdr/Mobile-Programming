package com.example.studentform;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        EditText nameInput = findViewById(R.id.nameInput);
        Button submitButton = findViewById(R.id.submitButton);
        TextView resultText = findViewById(R.id.resultText);

        submitButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                String name = nameInput.getText().toString().trim();

                if (name.isEmpty()) {
                    Toast.makeText(MainActivity.this,
                            "لطفاً نام خود را وارد کنید", Toast.LENGTH_SHORT).show();
                } else {
                    resultText.setText("سلام " + name + "!");
                }
            }
        });
    }
}
