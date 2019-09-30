/*In this query I look at the opening hours for each business throughout the week. Then I look at businesses that received 0-25 reviews,25-100 reviews and
 100-1000 reviews. I want to know whether the total number of hours open during the week influences the number of reviews a business gets. With this query I found that if I order the businesses DESC by looking at the total hours open,
   I found that from the top 25 in terms of TOTAL HOURS 12 businesses received more than 25 reviews. When running the same query but ordering ASC, I found that from the lowest 25 in terms of TOTAL HOURS 0 businesses received more than 25 reviews. 
*/

SELECT B.name,
       B.city,
       MAX(B.review_count) AS MaxReviews,
       C.category,
       B.state,
       B.stars,
       CASE
       WHEN B.review_count BETWEEN 0 AND 25 THEN '0-25 reviews'
       WHEN B.review_count BETWEEN 25 AND 100 THEN '25-100 reviews'
       WHEN B.review_count BETWEEN 100 AND 1000 THEN '100-1000 reviews' 
       END AS review_number,
			     MAX(CASE WHEN H.hours LIKE "%monday%" THEN ((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,8,4))) + (24*(((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,8,4))) < 0))
			     END) AS Monday_totalhours,
			     MAX(CASE WHEN H.hours LIKE "%tuesday%" THEN ((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,9,4))) + (24*(((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,9,4))) < 0))
			     END) AS Tuesday_totalhours,			     
			     MAX(CASE WHEN H.hours LIKE "%wednesday%" THEN ((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,11,5))) + (24*(((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,11,5))) < 0))
			     END) AS Wednesday_totalhours,
			     MAX(CASE WHEN H.hours LIKE "%thursday%" THEN ((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,10,5))) + (24*(((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,10,5))) < 0))
			     END) AS Thursday_totalhours,
			     MAX(CASE WHEN H.hours LIKE "%friday%" THEN ((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,8,5))) + (24*(((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,8,5))) < 0))
			     END) AS Friday_totalhours,
			     MAX(CASE WHEN H.hours LIKE "%saturday%" THEN ((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,10,5))) + (24*(((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,10,5))) < 0))
			     END) AS Saturday_totalhours,			     
			     MAX(CASE WHEN H.hours LIKE "%sunday%" THEN ((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,8,5))) + (24*(((SUBSTR(H.hours,-5,5) -
			     SUBSTR(H.hours,8,5))) < 0))
			     END) AS Sunday_totalhours
FROM business B INNER JOIN category C
ON B.id == C.business_id
INNER JOIN hours H
ON B.id == H.business_id
GROUP BY review_number,B.id
ORDER BY (Monday_totalhours+Tuesday_totalhours+Wednesday_totalhours+Thursday_totalhours+Friday_totalhours+Saturday_totalhours+Sunday_totalhours) DESC;


    
    
