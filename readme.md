#    Installing the Program
##           Mac
<p>
    Place the file installationmac.sh inside the folder
    where you would like the program to be installed. 
    The installer will create a new directory inside that
    folder for the program.
</p>
<p>
    The installer installs the following software on your 
    computer:
    <ul>
        <li>Homebrew</li>
        <li>Git</li>
        <li>cURL</li>
        <li>SEO-Searcher</li>
        <li>Python3 (Should be preinstalled)</li>
        <li>Required dependencies and libraries for the scraper</li>
    </ul>
</p>

### Future installation files coming.

##        Using the Program

<p>
   <ol>
       <li>Run search.sh</li>
       <li> When prompted, input the following:
           <ul>
               <li>Keyword</li>
               <li>URL to be scraped</li>
               <li>Tags to be searched</li>
           </ul>
           <p>    
                note- the keyword should be entered capitalized, and the program will search in a "case-insensitive" manner. the tags should be exactly as they appear in the html file, and separated only by spaces.
           </p></li>
       <li>Your results are displayed on the screen, and if it does not already exist, a log file is created that shows the keyword, url, and date and time that the search was done. The results are NOT stored, the user must store them.
       </li>
   </ol>
</p>

## Troubleshooting

<p>
    If your installation goes smoothly and you get a permission error when trying to launch the program, run the following command in the terminal:
</p>

<p>
    ```
        chmod u+rxw search.sh
    ```
</p>






