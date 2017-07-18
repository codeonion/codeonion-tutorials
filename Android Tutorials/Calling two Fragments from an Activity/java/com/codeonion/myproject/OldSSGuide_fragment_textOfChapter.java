package com.codeonion.myproject;

import android.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.util.zip.Inflater;

/**
 * Created by codeonion on 7/17/2017.
 */

public class OldSSGuide_fragment_textOfChapter extends Fragment {

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        //return super.onCreateView(inflater, container, savedInstanceState);
        return inflater.inflate(R.layout.oldssguide_bottom_text_layout, container, false);
    }

    public void displayChapterText(String result){
        TextView chapterText = (TextView) getActivity().findViewById(R.id.text_oldssguide_chapter_text);
        chapterText.setText(result);
    }
}
