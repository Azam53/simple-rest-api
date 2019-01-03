# simple-rest-api
Its a Simple Rest Implementation 

# Steps to make it Work

Step 1 ] Just clone the repo in your web root

Step 2 ] There is one db.sql file, import the file in your database and add the your database username and password in 
          config / database.php

Step 3 ] And install postman on your machine which is used to test the api. Its availabale for all OS like mac ,linux and windows.

Step 4 ] Now use below url for checking the response:

a] Getting list of all products

     http://localhost/{your_folder_name}/apiv1/product/read.php
     
b] Getting search product by name

    http://localhost/{your_folder_name}/apiv1/product/search.php?s={search_string}
    
c] Creating a product.

    http://localhost/{your_folder_name}/apiv1/product/create.php
    
    And the json data which needs to be inserted should be in this below manner
    
    {
            "name": "Cotton Pillow",
            "description": "The best pillow for kids.",
            "price": "20.00",
            "category_id": "2",
            "category_name": "Household"
    }
    
 d] Updating a product.
  
     http://localhost/{your_folder_name}/apiv1/product/update.php   
    {
            "id": 23,
            "name": "Cotton Pillow",
            "description": "The best pillow for kids.",
            "price": "20.00",
            "category_id": "2",
            "category_name": "Household"
    }
  
 e] Deleting a product.
 
     http://localhost/{your_folder_name}/apiv1/product/delete.php
    {
    "id" : "106"
     }
  
