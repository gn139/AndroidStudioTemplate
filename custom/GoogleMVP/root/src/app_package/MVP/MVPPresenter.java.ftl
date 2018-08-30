package ${packageName}.${classToResource(activityClass)};

import android.support.annotation.NonNull;

public class ${presenterClass} implements ${contractClass}.Presenter {

    private final ${contractClass}.View view;

    public ${presenterClass}(@NonNull ${contractClass}.View view) {
        this.view = view;
        view.setPresenter(this);
    }

    @Override
    public void start() {

    }
}
