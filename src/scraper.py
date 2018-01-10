import sys
import collections
from bs4 import BeautifulSoup

assert(len(sys.argv) >= 3), "No Tags Found, Please Input Tags"

####################################
# pull the requested tags
####################################
tags = []

for i in range(len(sys.argv)):
    if i == 1:
        keyword = sys.argv[1]
    if i > 1:
        tags.append(sys.argv[i])

assert(keyword != None),"Invalid Keyword"

for i in range(len(tags)):
    assert(type(tags[i]) == str), "Invalid Tags"

####################################
# initialize all their counts to 0
####################################
tag_counts = [0 for i in tags]

####################################
# Search case-insensitive
#####################################
keyword_upper = keyword.upper()
keyword_lower = keyword.lower()
keyword_capitalized = keyword

######################################
# make soup
#####################################
with open('target.html', 'r') as f:
    html_text = f.read()

target = BeautifulSoup(html_text, "html.parser")

#######################################
# define our counting function
#######################################
def findOccurences(target_tag):
    count = 0
    try:
        tags = target.find_all(target_tag)
        for tag in tags:
            contents = tag.contents[0]
            if keyword in contents:
                count += 1
            if keyword_upper in contents:
                count += 1
            if keyword_lower in contents:
                count += 1

    except:
        print('No {} found'.format(target_tag))

    return count

##############################################
# do some counting
#############################################
for i in range(len(tags)):
    tag_counts[i] = findOccurences(tags[i])

#################################################
# print out the results
################################################
print('\nYour keyword \'{}\' has occured the '.format(keyword),
    'following number of times')
print(' according to the corresponding tags:\n')

for i in range(len(tags)):
    print('{}:\t{}'.format(tags[i],tag_counts[i]))

