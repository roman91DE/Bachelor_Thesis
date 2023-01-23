global hs_group hs_group
global t t
global ylist  LN_Exporte_CHN_Others
global xlist ln_GDP_CHN ln_GDP_others eu_ad us_ad 
describe $hs_group $t $ylist $xlist
summarize $hs_group $t $ylist $xlist
sort $hs_group $t
xtset $hs_group $t
xtdescribe
xtsum $hs_group $t $ylist $xlist
reg $ylist $xlist t
xtreg $ylist $xlist,re
xtreg $ylist $xlist t_square ,re
xtreg $ylist $xlist D07 D08 D09 D10 D11 D12 D13,re
xtreg d.($ylist $xlist D07 D08 D09 D10 D11 D12 ),re
quietly xtreg $ylist $xlist, re
xttest0
global hs_group hs_group
global t t
global ylist  LN_Exporte_CHN_Others_quantities
global xlist ln_GDP_CHN ln_GDP_others eu_ad us_ad
describe $hs_group $t $ylist $xlist
summarize $hs_group $t $ylist $xlist
sort $hs_group $t
xtset $hs_group $t
xtdescribe
xtsum $hs_group $t $ylist $xlist
reg $ylist $xlist t
xtreg $ylist $xlist,re
xtreg $ylist $xlist t_square ,re
xtreg $ylist $xlist D07 D08 D09 D10 D11 D12 D13,re
xtreg d.($ylist $xlist D07 D08 D09 D10 D11 D12 ),re
quietly xtreg $ylist $xlist, re
xttest0
