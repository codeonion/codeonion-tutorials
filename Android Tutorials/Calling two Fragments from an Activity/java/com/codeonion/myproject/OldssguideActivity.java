package com.codeonion.myproject;

import android.app.Activity;
import android.os.Bundle;

public class OldssguideActivity extends Activity implements OldSSGuide_fragment_spinner.ChapterChanger{

    @Override
    public void searchForChapter(String chapterName){
        OldSSGuide_fragment_textOfChapter oldSSGuide_fragment_textOfChapter = (OldSSGuide_fragment_textOfChapter)getFragmentManager().findFragmentById(R.id.fragment_oldssguide_text_chapters);

        String sampleee = "hahah";
        oldSSGuide_fragment_textOfChapter.displayChapterText(sampleee);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.oldssguide_layout);
    }
}
