package ${packageName}.${classToResource(activityClass)};

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import ${applicationPackage}.R;

public class ${fragmentClass} extends Fragment implements ${contractClass}.View{

    private ${contractClass}.Presenter presenter;

    public ${fragmentClass}() {
        // Required empty public constructor
    }

    public static ${fragmentClass} newInstance() {
        return new ${fragmentClass}();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container,
                             Bundle savedInstanceState) {
        // Inflate the layout for this fragment
        return inflater.inflate(R.layout.${fragmentLayoutName}, container, false);
    }


    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override
    public void onResume() {
        super.onResume();
        presenter.start();
    }

    @Override
    public void onDetach() {
        super.onDetach();
    }

    @Override
    public void setPresenter(@NonNull ${contractClass}.Presenter presenter) {
        this.presenter = presenter;
    }
}
