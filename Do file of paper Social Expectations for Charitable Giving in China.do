*Type of donee: 1=A charity; 2=Set up by government; 3= Set up by grassroots groups
*Type of donor: 1=Citizen; 2=Government employee; 3=Company employee; 4=Charity employee
*Income: 1.	Less than 10k; 2. 10k -20k; 3. 20k-50k; 4. 50k-100k; 5.	100k-200k; 6. 200k-300k; 7. 300k-500k; 8. 500k-1m; 9. 1m-2m; 10. 2m-5m; 11. More than 5m
*Education: 1. Uneducated; 2. Primary school; 3. Junior secondary school; 4. Senior secondary school; 5. Junior college; 6.	Bachelor's degree; 7. Master’s degree; 8. Doctoral degree


*table 1
tab Donee_type Donor_type

*table 3
oneway age Donee_type, tabulate

oneway gender Donee_type, tabulate

oneway income Donee_type, tabulate

oneway edu Donee_type, tabulate

oneway religion Donee_type, tabulate

oneway age Donor_type, tabulate

oneway gender Donor_type, tabulate

oneway income Donor_type, tabulate

oneway edu Donor_type, tabulate

oneway religion Donor_type, tabulate

*table 4
tab age_group

tab gender

tab income_group

tab edu_group

tab religion

tab Region_east

*table 5
reg Expt_Donation i.Donee_type i.Donor_type i.region, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt i.region, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu religion i.marital home_mem18 home_mem65 i.region, robust

*table a
reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu religion i.marital home_mem18 home_mem65 i.region if Region_east==1, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu religion i.marital home_mem18 home_mem65 i.region if Region_east==0, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age income edu religion i.marital home_mem18 home_mem65 i.region if gender==1, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age income edu religion i.marital home_mem18 home_mem65 i.region if gender==0, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu religion i.marital home_mem18 home_mem65 i.region if age_group==1, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu religion i.marital home_mem18 home_mem65 i.region if age_group==2, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu religion i.marital home_mem18 home_mem65 i.region if age_group==3, robust

*table b
reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu i.marital home_mem18 home_mem65 i.region if religion==1, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu i.marital home_mem18 home_mem65 i.region if religion==0, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu religion i.marital home_mem18 home_mem65 i.region if income_group==1, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu religion i.marital home_mem18 home_mem65 i.region if income_group==2, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu religion i.marital home_mem18 home_mem65 i.region if edu_group==1, robust

reg Expt_Donation i.Donee_type i.Donor_type trust_gen trust_neigh trust_relat trust_chari trust_cen_govt trust_locl_govt volunteer donation age gender income edu religion i.marital home_mem18 home_mem65 i.region if edu_group==2, robust
