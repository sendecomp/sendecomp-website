SeNDeComp Website
=================

This website uses [Jekyll](http://jekyllrb.com/), which is a software tool for generating static websites from templates and plain text. We use this because most of us would prefer to not have to deal with HTML every time we need to update our website. Instead, we can just edit plain text files, and Jekyll will generate an updated website for us based on the templates and CSS someone else created a long time ago. Because most of the data displayed on the site comes from just text files, a lot of the website's content can be modified without the need for anyone to feel uncomfortable looking at HTML if they are unfamiliar with it. All of these plaintext files are located in one place, the `/_data` directory in the root of this repository.

Adding Images
------------------------------

Adding images cannot be done via GitHub. The following process outlines how to perform this task:

### If you DO have the repository cloned:

1.	Pull any existing changes prior to making a change so that you get the latest version of the repository
2.	Navigate to the `img` directory and modify the pictures as you desire (see instructions below)
3.	Once you are done, commit your changes and push/sync with the server (this uploads your changes back to GitHub)

### If you DO NOT have the repository cloned:

1.	Clone the repository to your local computer
2.	Navigate to the `img` directory and modify the pictures as you desire (see instructions below)
3.	Once you are done, commit your changes and push/sync with the server (this uploads your changes back to GitHub)

### Pictures of Members

For steps 2 in both categories above, do the following to add a profile picture for someone:

-	Name the image by the person's last name
-	Add the image to the `img` directory
-	Make sure that the name of the image is added to their record in the `_data/members.yml` file

### Pictures in Gallery

For steps 2 in both categories above, do the following to add a picture to the gallery: - Add the image to the `img/pics` directory - Add an entry in the `_data/gallery.yml` (see details for this file below)

Data Files (the `/_data` directory)
-----------------------------------

Data files regarding research-specific information will begin with some acronym (usually three letters). Currently, there are two: CIP (Critical Infrastructure Protection) and PER (Pervasive Computing).

Modifying the files can be done easily from GitHub (this website) by clicking on the file and then clicking the little pencil in the upper right-hand corner of the box displaying the file contents.

### members.yml

*This file contains the list of students associated with the SeNDeComp research program.*

-	name `required`: first name followed by last name
-	degree `required`: degree program follow by (BS, MS, and/or PhD). Ex: `Computer Engineering (PhD)`
-	standing `required`: `Active` or `Alumni`
-	graduating `required`: year then month (fully spelled out), ex. `2015 December`
-	focus `required`: research emphasis, ex. `"Analysis and Modeling of Cyber-Physical Systems"`
-	emp `optional`: If known, add the employer to which the member was first hired after graduating (Alumni only), otherwise leave blank
-	website `required`: full link to their personal website, ex. `http://web.mst.edu/~sedighs`
-	photo `required`: name of file in `/img` directory for their photo, ex. `Sedigh.jpg` (please name profile pictures using the person's last name)

### *.primary-investigators.yml

*This data file pretty much follows the same rules as `members.yml` with some unnecessary information omitted.*

### gallery.yml

*This file contains the list of images to display in the gallery on the home page.*

-	name `required`: name of file in `/img/pics` directory for their photo, ex. `something.jpg`
-	year `required`: used for sorting the images to be displayed, with more recent ones appearing earlier

### *-labs.yml

*This file contains a list of labs at other institutions that are conducting research relevant to the specific research area*.\*

-	name `required`: full name of lab with any shorthand in parenthesis
-	website `required`: full link to the website of the lab
-	location `required`: city/state/country where lab is located

### *-projects.yml

*This file contains a list of projects conducted under the specific research area*.\*

-	name `required`: full name of lab with any shorthand in parenthesis
-	desc `optional`: full description of the project
-	status `optional`: `Active` or `Complete`
-	members: this is an array of entries, do not put anything on this line (see other examples in file for format)
	-	name `required`: name of person #1
	-	link `optional`: full link to their website
-	sponsors: this is an array of entries, do not put anything on this line (see other examples in file for format)
	-	name `required`: name of sponsor #1
	-	link `optional`: full link to sponsor website

### publications.yml

*This file contains a list of publications.

-	citation `required`: full citation (entry won't show up if this is blank)
-	year `required`: used for sorting purposes
-	status `required`: stick to one of the following:
	-	"To Appear" (aka "In Preparation")
	-	"Under Review" (submitted but not yet published)
	-	"Published" (Make sure to add link to final publication)
-	awards `optional`: list any awards here separated by commas; leave blank if none
-	area `required`: `per` or `cip` (lowercase)
-	fulltext `optional`: full link to where the publication can be obtained; leave blank if none

### *-venues.yml

*This file contains a list of publication venues relevant to the specific research area*.\*

-	name `required`: full name of venue with shorthand in parenthesis
-	website `required`: full link to website of the venue
	-	*Please make sure that the links you enter are not ones that will likely change year-to-year.*
-	type `required`: "Conference," "Publisher," "Journal," etc

**Notes:** 
- Try to wrap all values in quotation marks 
- Images can not be added from GitHub; it must be done locally and then synced with GitHub - ask if you need help

\* CIP or PER
