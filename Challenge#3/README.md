Challenge3
=====  

challenge3-desc
----- 
    We have a nested object, we would like a function that you pass in the object and a key and get back the value. How this is implemented is up to you.

 
    Example Inputs
    object = {“a”:{“b”:{“c”:”d”}}}
    key = a/b/c
 
    object = {“x”:{“y”:{“z”:”a”}}}
    key = x/y/z
    value = a

challenge3-output
----- 

```bash
USAGE : sh ./challenge3/objectparser.sh  help

     2 params Required  

     1 - inputString 
     2 - keyName to find 

    example 1 : 
               sh ./challenge3/objectparser.sh  {“a”:{“b”:{“c”:”d”}}} a/b/c >> Output : d  
    
    example 2 : 
               sh ./challenge3/objectparser.sh {“x”:{“y”:{“z”:”a”}}} x/y/z  >> Output : a  
 
```