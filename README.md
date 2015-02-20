## SeNDeComp Website
This website uses (Jekyll)[http://jekyllrb.com/], which is a software tool for generating static websites from templates and plain text.  We use this because most of us would prefer to not have to deal with HTML every time we need to update our website.  Instead, we can just edit plain text files, and Jekyll will generate an updated website for us based on the templates and CSS someone else created a long time ago.  Because most of the data displayed on the site comes from just text files, a lot of the website's content can be modified without the need for anyone to feel uncomfortable looking at HTML if they are unfamiliar with it.    All of these plaintext files are located in one place, the `/_data` directory in the root of this repository.

## Regarding the Adding of Images
Adding images cannot be done via GitHub.  The following process outlines how to perform this task:
###### If you DO have the repository cloned:
  1. Pull any existing changes prior to making a change so that you get the latest version of the repository
  2. Navigate to the `img` directory and modify the pictures as you desire (see instructions below)
  3. Once you are done, commit your changes and push/sync with the server (this uploads your changes back to GitHub)
###### If you DO NOT have the repository cloned:
  1. Clone the repository to your local computer
  2. Navigate to the `img` directory and modify the pictures as you desire (see instructions below)
  3. Once you are done, commit your changes and push/sync with the server (this uploads your changes back to GitHub)

#### People Pictures
For steps 2 in both categories above, do the following to add a profile picture for someone:
  - Name the image by the person's last name
  - Add the image to the `img` directory
  - Make sure that the name of the image is added to their record in the `_data/members.yml` file

#### Gallery
For steps 2 in both categories above, do the following to add a picture to the gallery:
  - Add the image to the `img/pics` directory
  - Add an entry in the `_data/gallery.yml` (see details for this file below)

## Regarding Data Files (files in '/_data' directory)
Data files regarding research-specific information will begin with some acronym (usually three letters).
Currently, there are two: CIP (Critical Infrastructure Protection) and PER (Pervasive Computing).

Modifying the files can be done easily from GitHub (this website) by clicking on the file and then clicking the little pencil in the upper right-hand corner of the box displaying the file contents.

#### Data File Content Information
###### gallery.yml
  - name: the actual name+extension of the image in the '/img/pics/ directory
  - year: used for sorting the images to be displayed, with more recent ones appearing earlier

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
  - Images can not be added from GitHub; it must be done locally and then synced with GitHub - ask if you need help

\* CIP or PER
