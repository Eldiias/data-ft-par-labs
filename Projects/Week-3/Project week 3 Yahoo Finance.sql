USE yahoo_finance;

SELECT * from yahoo_finance_sql;


#US Market 
#Reasonable PE Ratio 
select * from yahoo_finance_sql
where Country = 'us_market' and `PE Ratio` < 20 and `PE Ratio` > 5
order by `Dividend Yield` DESC 
limit 200
;

#US Market 
#High PE Ratio 
select * from yahoo_finance_sql
where Country = 'us_market' and `PE Ratio` > 15
order by `Dividend Yield` DESC 

;

#US Market 
#High daily trade volume
select * from yahoo_finance_sql
where Country = 'us_market' and `PE Ratio` > 15
order by `3 Month Average Daily Volume` DESC ;