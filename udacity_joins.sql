/*Questions
1.Provide a table for all web_events associated with account name of Walmart.
There should be three columns. Be sure to include the primary_poc, time of the event, and the channel for each event.
Additionally, you might choose to add a fourth column to assure only Walmart events were chosen.

2.Provide a table that provides the region for each sales_rep along with their associated accounts. 
Your final table should include three columns: the region name, the sales rep name, and the account name. 
Sort the accounts alphabetically (A-Z) according to account name.

3.Provide the name for each region for every order, as well as the account name and the unit price they paid (total_amt_usd/total) for the order. 
Your final table should have 3 columns: region name, account name, and unit price. 
A few accounts have 0 for total, so I divided by (total + 0.01) to assure not dividing by zero.*/





--
select * --a.name,a.primary_poc ,w.occurred_at event_time,w.channel 
from web_events w
	left join accounts a
	on w.account_id = a.id
where a.name ='Walmart'
