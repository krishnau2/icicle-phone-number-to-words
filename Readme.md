# Number to word finder


* git clone git@github.com:krishnau2/icicle_number_to_word.git

* cd icicle_number_to_word

* bundle install

* To run ruby ./lib/app.rb

* This will prompt the user to give the phone number

* To run test: rspec

# Logic

* For the given number length and the minimum length find the partition combinations. 
Example: Length = 6 & min_length = 2 then we need these partiton combinations
[2, 2, 2], [3, 3], [4, 2], [2, 4], [6]. 
That meanse for decoding the giving number you can first take two digits at a time of 3 sets or 3 digits at a time of sets 2 or one 4 digit and one 2 digit etc. 

* After getting the partition decode the phone number based on each partition. ie: if you are taking [4, 2] partition then take the first 4 digits from the number and then take the last 2 digits from the number.

* Find the Letter mapping for each digit. ie: 2 is mapped to 'a', 'b', 'c'. So for example if you are given the phone number as "254857" and you are dividing [4,2]. 
"2548" => [['a', 'b', 'c'], ['j', 'k', 'l'], ['g', 'h', 'i'], ['t', 'u', 'v']]
"57" => [['j', 'k', 'l'], ['p', 'q', 'r', 's']]

* Next need to make the words by creating combinations of each letter in the mapping we got. 

* Check the words generated with the dictionary to find actual words. 

* If you are not finding any actual words from dictionary for "2548" then no need to check "57"

* if you find couple of actual words for "2548" and "57" then find the combination of these two to get the comblete combination. 
 
