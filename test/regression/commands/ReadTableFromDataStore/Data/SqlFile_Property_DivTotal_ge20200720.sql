/*
Test specifying information with ${property} notation
- known to work with HydroBase 20200720
- don't query quality, dwc, maxq_date, or nobs since no longer filled in
- can use wd and id in the query
*/
select meas_num, structure_num, irr_year, fdu, ldu, maxq, amt_nov, amt_dec from vw_CDSS_AnnualAmt
where wd = 1 and id = ${id} and irr_year >= 1970 and irr_year <= 1990 order by irr_year
