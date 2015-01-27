## sendecomp.github.io
Website for the SeNDeComp program at Missouri S&amp;T

#### Comments on Modifying Data Files (files in '/_data' directory)
**Abbrevations**
  - CIP = Critical Infrastructure Protection
  - PL = Personalized Learning
  - SA = Situational Awareness

Note: **Wrap all values in quotation marks**

##### *-labs.yml
  - name (**required**): full name of lab with any shorthand in parenthesis
  - website (**required**): full link to the website of the lab
  - location (**optional**): city/state/country where lab is located

##### *-projects.yml
  - name (**required**): full name of lab with any shorthand in parenthesis
  - description (**required**): full link to the website of the lab
  - status (**optional**): "Active" or "Complete"
  - members: this is an array of entries, do not put anything on this line (see other examples in file for format)
    - name (**required**): name of person #1
    - link (**optional**): full link to their website
  - sponsors: this is an array of entries, do not put anything on this line (see other examples in file for format)
    - name (**required**): name of sponsor #1
    - link (**optional**): full link to their website

##### *-publications.yml
  - citation (**required**): full citation* (entry won't show up if this is blank)
  - year (**required**)
  - status (**required**): "In Progress" or "Published"
  - awards (**optional**)
  - fulltext (**optional**): full link to where the publication can be obtained

##### *-venues.yml
  - name (**required**): full name of venue with shorthand in parenthesis
  - website (**required**): full link to website of the venue*
  - location (**optional**): city and country where conference takes place, or last location in which it took place 
  - type (**required**): "Conference," "Publisher," "Journal," etc
