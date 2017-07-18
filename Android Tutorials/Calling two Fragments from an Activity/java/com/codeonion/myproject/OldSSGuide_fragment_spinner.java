package com.codeonion.myproject;

import android.app.Fragment;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Spinner;

/**
 * Created by codeonion on 7/17/2017.
 */

public class OldSSGuide_fragment_spinner extends Fragment {

    public ChapterChanger chapterChangerInterfaceImpementor;

    public interface ChapterChanger{
        void searchForChapter(String chapterName);
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        this.chapterChangerInterfaceImpementor = (ChapterChanger)context;
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        //return super.onCreateView(inflater, container, savedInstanceState);
        return inflater.inflate(R.layout.oldssguide_top_spinner_layout,container, false);
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
	
	// This button is faulty. The purpose is to change text in
	// fragment OldSSGuide_fragment_textOfChapter when a chapter
	// is selected. Help is appreciated.
        Button searchChapter = (Button) getActivity().findViewById(R.id.button_oldssguide_showChapterText);
        searchChapter.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                Spinner chaptersSpinner = (Spinner)getActivity().findViewById(R.id.spinner_oldssguide_chapters);
                chapterChangerInterfaceImpementor.searchForChapter(chaptersSpinner.getSelectedItem().toString());
            }
        });
    }
}