create database Projects;
use Projects;
#How many unicorn companies are there?
select * from unicorn_companies;
select count(Company) from unicorn_companies;

#What is the average valuation and funding amount for unicorn companies?
select avg(Valuation) as Avg_Valuation, avg(Funding) as Avg_Funding from unicorn_companies;

#How many companies became unicorns each year?
select distinct Year_Founded, count(Company)as no_of_companies_per_year from unicorn_companies group by Year_Founded order by Year_Founded asc;

#Which companies became unicorns in 2021 and what are their valuations?
select Company, Valuation,Year_Founded from unicorn_companies where Year_Founded=2021;

#Most valuable unicorn for each year
select Year_Founded, max(Valuation) as max_valuation from unicorn_companies group by Year_Founded order by max_valuation asc;

#Which industry has the highest number of unicorn_companies?
select distinct Industry, count(Company) from unicorn_companies group by Industry order by count(Company) desc;

#Which countries has produced the most unicorn companies
select distinct Country, count(Company) as unicorn_companies from unicorn_companies group by Country order by unicorn_companies desc;

select Country,Company, max(Valuation) as max_valuation from unicorn_companies group by Country,
 
select Country, Valuation, Company from unicorn_companies where Country='United States' order by Valuation desc;

select distinct Country,Company,Valuation from unicorn_companies 
                where (Country, Valuation) in 
                           (select Country, max(Valuation) from unicorn_companies group by Country order by Valuation desc); 
select distinct Country from unicorn_companies; 

