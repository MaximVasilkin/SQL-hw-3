select name, release_date from Album
where release_date between '2018-01-01' and '2018-12-31';

select name, lenght_seconds from Track
where lenght_seconds = greatest(lenght_seconds) limit 1;

select name from Track
where lenght_seconds >= 210;

select name from Compilation
where release_date between '2018-01-01' and '2020-12-31';

select name from Singer
where name not like '% %';

select name from Track
where name ilike '%мой%' or name ilike '%my%';
