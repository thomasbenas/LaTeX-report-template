#!/usr/bin/bash
################################################################################
#                              CleanLaTeX build Files                          #
#                                                                              #
# Allows you to delete the compilation files of a document LaTeX               #
#                                                                              #
# 22/07/2021  Thomas Benas    Original code.                                   #
#                                                                              #
################################################################################
################################################################################
################################################################################
#                                                                              #
#  Copyright (C) 2021 Thomas Benas                                             #
#  thomas@benas.fr                                                             #
#                                                                              #
#  This program is free software; you can redistribute it and/or modify        #
#  it under the terms of the GNU General Public License as published by        #
#  the Free Software Foundation; either version 2 of the License, or           #
#  (at your option) any later version.                                         #
#                                                                              #
#  This program is distributed in the hope that it will be useful,             #
#  but WITHOUT ANY WARRANTY; without even the implied warranty of              #
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               #
#  GNU General Public License for more details.                                #
#                                                                              #
#  You should have received a copy of the GNU General Public License           #
#  along with this program; if not, write to the Free Software                 #
#  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA   #
#                                                                              #
################################################################################
################################################################################
################################################################################
Help()
{
   # Display Help
   echo "Allows you to delete the compilation files of a document LaTeX"
   echo
   echo "Syntax: cleanLaTeX [h|g|V]"
   echo "options:"
   echo "g     Print the GPL license notification."
   echo "h     Print this Help."
   echo "V     Print software version and exit."
   echo
}

Version()
{
    echo "
    
        V 1.0.0 - 2021 by Thomas Benas (thomas@benas.fr)
    
    "
}

Licence()
{
    echo "
    ################################################################################
    #                                                                              #
    #  Copyright (C) 2021 Thomas Benas                                             #
    #  thomas@benas.fr                                                             #
    #                                                                              #
    #  This program is free software; you can redistribute it and/or modify        #
    #  it under the terms of the GNU General Public License as published by        #
    #  the Free Software Foundation; either version 2 of the License, or           #
    #  (at your option) any later version.                                         #
    #                                                                              #
    #  This program is distributed in the hope that it will be useful,             #
    #  but WITHOUT ANY WARRANTY; without even the implied warranty of              #
    #  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               #
    #  GNU General Public License for more details.                                #
    #                                                                              #
    #  You should have received a copy of the GNU General Public License           #
    #  along with this program; if not, write to the Free Software                 #
    #  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA   #
    #                                                                              #
    ################################################################################
    "
}

################################################################################
################################################################################
# Main program                                                                 #
################################################################################
################################################################################
while getopts ":h :V :g" option; do
   case $option in
        h) # display Help
            Help
            exit;;
        V) # display Version
            Version
            exit;;
        g) # display licence GPL
            Licence
            exit;;
        \?) # incorrect option
            echo "Error: Invalid option"
            exit;;
   esac
done

extensions=(
    "toc"
    "aux"
    "fls"
    "log"
    "out"
    "synctex.gz"
    "fdb_latexmk"
)
counter=0

DeleteFiles()
{
    for ext in ${extensions[@]};
    do
        FILE=./*.$ext
        
        if test -f $FILE;then
            rm -R $FILE
            let "counter+=1"
        fi  
    done
}

ShowState()
{
    message="*** No build files to remove ***"
    if test $counter -gt 0;
    then
        message="*** Succes ***"
    fi
    echo "$message"
}

DeleteFiles
ShowState
