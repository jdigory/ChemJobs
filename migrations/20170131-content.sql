UPDATE content SET category = NULL WHERE category = '';

ALTER TABLE content ADD page_title VARCHAR(255) AFTER page_text;

ALTER TABLE content ADD page_banner VARCHAR(255) AFTER page_title;

UPDATE content SET
    page_title = 'Technical recruiting for the chemical, refining &amp; gas processing industries',
    page_banner = 'Technical recruiting for the chemical, refining &amp; gas processing industries'
WHERE code = 'index';

-- make PK be 'id'
ALTER TABLE content CHANGE code id VARCHAR(90) NOT NULL;
