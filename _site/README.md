# UIUC Statistics 100 (Flanagan) Site for Spring 2020

## Software Required:
  - Git
  - Jupyter notebook
  - Ruby
  - Jekyll
  - Pyperclip (Instructions included in tools/calendar-generator.ipynb)

## General Guide to Managing the STAT 100 Website.
  - Weekly announcements, semester name, section info, class times, instructor info, course webpages, textbook info, office hours, technical support info, section info in bonus work section of syllabus, exam schedule info, practise exam info and settings, FAQs info (that changes from semester to semester, viewability of grade calculator, etc. can all be updated in _data/info.yml.
  - Grade calculator viewability is controlled by "grade-calc" found in _data/info.yml around line 130. Set to "T" to show the link, otherwise it will be nonexistent rather than greyed out.
  - Content on the staff page can be manipulated in _data/staff.yml
  - Calendar content can be edited and copied in tools/calendar-generator.ipynb, and then pasted in _includes/calendar.html (note: remove all text from _includes/calendar.html before pasting new html text).
  - Course name, semester name, and mission statement (found in footer section of all pages) can all be edited in _config.yml (found in main directory).
  - To update exam schedule tables for midterms and finals (found on the exam schedule page), edit their .tgn files (found in tools folder) by uploading to https://www.tablesgenerator.com/ and then copy the final draft and paste to their respective .html files in _includes folder (_includes/exam_schedule.html, and _includes/final-schedule).
  - To edit practice exams content, edit values found in _data/info.yml (exam section starts around line 80, and the practice exam variables are around line 115). Also, the show-exams attribute for the exams variables in _data/info.yml determines whether or not a viewer can access the practice exams for any midterm "family". i.e. setting exam 3 show-exams = F will grey out and disconnect all links for exam 3 except for exam key for notebook exam. _includes/practice-exams.html and _includes/practice-finals.html do not need to be altered. (T will show all practice exams in a midterm "family", FF will grey out all links, and F or anything else will grey out everything except for the notebook exam key link)
  - Add exams or syllabus pdf to assets/docs/exams or assets/docs folders respectively. Carefully observe how exam pdfs are named - this is integral to the code that generates the practice exam links.
  - Staff images need to be added to assets/img/staff-photos folder. The staff photo names needs to be the staff members UIUC netID, and with .jpg extension (with .jpg spelling, and lowercased). i.e. for an employee named John Doe with netID: jdoe, his staff photo should be named jdoe.jpg.
  - Some content in pages folder may need to be edited if general policies change over time, such as time of homework deadline stated in calendar.md, data program links in index.md, grading policies found in syllabus.md, etc. If there are issues or questions about changing anything, especially where liquid code is found, please email me at the provided address below.
  - Any documents not mentioned in this guide will most likely not need to be changed. If there are any mistakes, or if I forgot to mention something, or if any major or structural changes are necessary then please email me at the provided address at the bottom of this page.

## Data entry locations (\_data):
  - \_config.yml (in main directory)
  - info.yml (contains most general data. Found in _data folder)
  - staff.yml (staff data. Found in _data folder)

## Other Data (assets folder):
  - docs folder (contains pdfs)
  - img folder (contains images)

## Special tools (tools folder):
  - calendar-generator.ipynb (creates dynamic calendar)
    - Upon completion of run, pyperclip copies the html text to clipboard, then you will need to paste the copied text to \_includes/calendar.html
  - exam_schedule.tgn (template that can be uploaded to https://www.tablesgenerator.com/ for customisation)
  - final-schedule.tgn (template that can be uploaded to https://www.tablesgenerator.com/)

## Other entry locations:
  - _includes folder:
    - calendar.html
    - exam_schedule.html
    - final-schedule.html
    - grade.html (if grade distribution table changes)
  - pages folder:
    - Any .md file may need to be changed if less frequent than semester to semester changes need to be made.

## Updates needed:
  - add new background photos

For any questions about the site (data entry, structure, bugs, etc) please email me at wreger2@illinois.edu
