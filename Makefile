# Make sure this profile has Lambda loading and execution permissions
site_PROFILE=Matt-Lab-Dev
#Make sure this is correct for KMS and Lambda
#Keep them the same region for performance!
REGION=us-west-2


#Deliverable
SRC=index.html album.css main.js
SEND=.index.html.sent .album.css.sent .main.js.sent
ZIP=zip
ZIPOPTIONS=-r
ZIPFILE=call-site.zip
site=call-site
PROFILE=Matt-qtpetpix


#Flags
#Flag for updating Lambda
site_DELIVERED=site_delivered
site_TESTED=site_tested
site_ROLE_TESTED=site_role_tested


$(site_DELIVERED): $(SRC)
   $(foreach var, $(SRC), aws s3 cp $(var) s3://qtpetpix.com --profile $(PROFILE))
	touch $(site_DELIVERED)

all: $(site_DELIVERED) 

