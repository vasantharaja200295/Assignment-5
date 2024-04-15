-- Task 2

-- 2. Listing all Events:
SELECT * FROM Event;

-- 3. Selecting events with available tickets:
SELECT * FROM Event WHERE available_seats > 0;

-- 4. Selecting events with a partial match on event name with 'cup':
SELECT * FROM Event WHERE event_name LIKE '%cup%';

-- 5. Selecting events with ticket price range between 1000 to 2500:
SELECT * FROM Event WHERE ticket_price BETWEEN 1000 AND 2500;

-- 6. Retrieving events with dates falling within a specific range:
SELECT * FROM Event WHERE event_date BETWEEN '2024-04-20' AND '2024-04-23';

-- 7. Retrieving events with available tickets and also have "Concert" in their name:
SELECT * FROM Event WHERE available_seats > 0 AND event_name LIKE '%Concert%';

-- 8. Retrieving users in batches of 5, starting from the 6th user:
SELECT * FROM Customer LIMIT 5 OFFSET 5;

-- 9. Retrieving booking details containing booked no of tickets more than 4:
SELECT * FROM Booking WHERE num_tickets > 4;

-- 10. Retrieving customer information whose phone number ends with '000':
SELECT * FROM Customer WHERE phone_number LIKE '%000';

-- 11. Retrieving events in order whose seat capacity is more than 15000:
SELECT * FROM Event WHERE total_seats > 15000 ORDER BY total_seats;

-- 12. Selecting events name not starting with 'x', 'y', 'z':
SELECT * FROM Event WHERE event_name NOT LIKE 'x%' AND event_name NOT LIKE 'y%' AND event_name NOT LIKE 'z%';




