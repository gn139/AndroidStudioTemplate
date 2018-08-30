package ${packageName}.${classToResource(activityClass)};

import android.os.Bundle;
import android.support.v4.app.FragmentTransaction;
import android.support.v7.app.AppCompatActivity;

import ${applicationPackage}.R;

public class ${activityClass} extends AppCompatActivity {

    private ${presenterClass} presenter; 

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.${activityLayoutName});

        ${fragmentClass} fragment =
                (${fragmentClass}) getSupportFragmentManager().findFragmentById(R.id.contentFrame);
        if (fragment == null) {
            fragment = ${fragmentClass}.newInstance();
            FragmentTransaction transaction = getSupportFragmentManager().beginTransaction();
            transaction.add(R.id.contentFrame, fragment);
            transaction.commit();
        }

        // Create the presenter
        presenter = new ${presenterClass}(fragment);
    }
}
