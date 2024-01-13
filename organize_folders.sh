#!/bin/bash

# Function to create date folder
create_date_folder() {
    today=$(date +"%d_%b_%Y")
    mkdir "$today"
    echo "Folder $today created."
}

# Function to create month and year folder
create_month_year_folder() {
    current_month_year=$(date +'%b_%Y')
    if [ ! -d "$current_month_year" ]; then
        mkdir "$current_month_year"
        echo "Folder $current_month_year created."
    else
        echo "Folder $current_month_year already exists."
    fi
}

# Desktop
cd Desktop || exit
create_month_year_folder
cd "$current_month_year" || exit
create_date_folder
cd

# Downloads
cd Downloads || exit
create_month_year_folder
cd "$current_month_year" || exit
create_date_folder
cd

# Pictures
cd Pictures || exit
create_month_year_folder
cd "$current_month_year" || exit
create_date_folder
cd

# Documents
cd Documents || exit
create_month_year_folder
cd "$current_month_year" || exit
create_date_folder
cd


