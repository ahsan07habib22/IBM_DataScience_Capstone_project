select * from spacextable;
select unique(launch_site) from spacextable;

select launch_site from spacextable
where launch_site like 'CCA%' limit 5;

select sum(payload_mass__kg_) as sumpayload
from spacextable
where payload like '%CRS%';

select avg(payload_mass__kg_) from spacextable
where booster_version like 'F9 v1.1';

select unique(landing__outcome) from spacextable;

select unique(mission_outcome) from spacextable;

select min(date) from spacextable
where landing__outcome like '%Success%';

select booster_version from spacextable
where payload_mass__kg_ between 4000 and 6000
and  landing__outcome = 'Success (drone ship)';

select count(mission_outcome) from spacextable
where mission_outcome like '%Success%';

select booster_version, payload_mass__kg_ from spacextable
where payload_mass__kg_ = (select max(payload_mass__kg_) from spacextable);

select landing__outcome, booster_version, launch_site, DATE 
from spacextable
where landing__outcome = 'Failure (drone ship)'
and date like '%2015%';

select count(*) as landout, date from spacextable
where date between '2010-06-04 ' and '2017-03-20'
and landing__outcome = 'Success (ground pad)'
or landing__outcome = 'Failure (drone ship)'
group by date
order by date 
desc;

SELECT * FROM spacextable where dayname(DATE)='Friday' LIMIT 5

