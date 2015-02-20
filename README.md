## SeNDeComp Website
This website uses (Jekyll)[http://jekyllrb.com/], which is a software tool for generating static websites from templates and plain text.  We use this because most of us would prefer to not have to deal with HTML every time we need to update our website.  Instead, we can just edit plain text files, and Jekyll will generate an updated website for us based on the templates and CSS someone else created a long time ago.  Because most of the data displayed on the site comes from just text files, a lot of the website's content can be modified without the need for anyone to feel uncomfortable looking at HTML if they are unfamiliar with it.    All of these plaintext files are located in one place, the `/_data` directory in the root of this repository.

## Regarding Data Files (files in '/_data' directory)
Data files regarding research-specific information will begin with some acronym (usually three letters).
Currently, there are two: CIP (Critical Infrastructure Protection) and PER (Pervasive Computing).

Modifying the files can be done easily from Github (this website) by clicking on the file and then clicking the little pencil in the upper right-hand corner of the box displaying the file contents.

#### Data File Content Information
###### *-labs.yml
*This file contains a list of labs at other institutions that are conducting research relevant to the specific research area\*.*
  - name (**required**): full name of lab with any shorthand in parenthesis
  - website (**required**): full link to the website of the lab
  - location (**optional**): city/state/country where lab is located

###### *-projects.yml
*This file contains a list of projects conducted under the specific research area\*.*
  - name (**required**): full name of lab with any shorthand in parenthesis
  - description (**required**): full link to the website of the lab
  - status (**optional**): "Active" or "Complete"
  - members: this is an array of entries, do not put anything on this line (see other examples in file for format)
    - name (**required**): name of person #1
    - link (**optional**): full link to their website
  - sponsors: this is an array of entries, do not put anything on this line (see other examples in file for format)
    - name (**required**): name of sponsor #1
    - link (**optional**): full link to their website

###### *-publications.yml
*This file contains a list of publications relevant to the specific research area\*.*
  - citation (**required**): full citation* (entry won't show up if this is blank)
  - year (**required**)
  - status (**required**): "In Progress" or "Published"
  - awards (**optional**)
  - fulltext (**optional**): full link to where the publication can be obtained

###### *-venues.yml
*This file contains a list of publication venues relevant to the specific research area\*.*
  - name (**required**): full name of venue with shorthand in parenthesis
  - website (**required**): full link to website of the venue*
    - *Please make sure that the links you enter are not ones that will likely change year-to-year.*
  - type (**required**): "Conference," "Publisher," "Journal," etc

**Notes:**
  - Wrap all values in quotation marks
  - Images can not be added from Github; it must be done locally and then synced with Github - ask if you need help

\* CIP or PER
