
<table class="TableSearch" border=2 bordercolor="lightblue">
  <tbody style="border: 2px solid lightblue; border-radius: 20px;">
  <tr class="header">
    <td><i>
<svg width="25" height="33">
  <rect x="0" y="20" rx="50" ry="20" width="150" height="150" style="fill:lightgreen;stroke:black;stroke-width:1;opacity:0.6" />
</svg>
<%
response.expires=-1
dim a(23)
'Fill up array with Shelter Info

    a(1)="Friendship Shelter - 1335 S Coast Hwy, Laguna Beach, CA 92651 - (949) 494-6928" + "<br><br>"
    a(2)="ASL Laguna Beach - 20652 Laguna Canyon Rd, Laguna Beach, CA 92651 - (949) 497-2959" + "<br>" + "- Open: 5pm - 9am"  + "<br>" + "- Dinner: 6:30pm" + "<br>" + "- Available Beds: 45" + "<br>" + "- Homeless visitors per day: 60 - 100" + "<br>" + "- Type: Temp Emergency Night Shelter" + "<br>" + "- System: 20 Residents + 25 daily lottery" + "<br>" + "- NonSheltered: Parking Lot sleeping with no access to shelter 9pm-6:30am." + "<br>" + "- Laundry: Yes" + "<br>" + "- Shower: Yes" + "<br>" + "- Bed Type: Floor Matt" + "<br>" + "- TV: 5pm - 10:30pm" + "<br>" + "- Computer with Internet: 2" + "<br>" +"- Transportation: Van 8:30am-9:30am and 4:30pm-5:30pm Shelter<--->Laguna Beach Bus Station, DMV & Social Services once a month, Handicapped accessible" + "<br><br>"
    a(3)="Orange County Rescue Mission - 1 Hope Dr, Tustin, CA 92782 - (714) 247-4300" + "<br><br>"
    a(4)="The Courtyard - 400 W Santa Ana Blvd, Santa Ana, CA 92701 - (714) 910-0436" + "<br><br>"
    a(5)="HIS House - 907 Bradford Ave, Placentia, CA 92870 - (714) 993-5774" + "<br><br>"
    a(6)="211 Orange County - Santa Ana, CA 92705 - (949) 646-4357" + "<br><br>"
    a(7)="Bridges at Kraemer - 1000 N Kraemer Pl, Anaheim, CA 92806 - (714) 836-7188" + "<br><br>"
    a(8)="Hunington Youth - 7291 Talbert Ave, Huntington Beach, CA 92648 - (714) 842-6600" + "<br><br>"
    a(9)="Thomas House - 12601 Morningside Ave # 6, Garden Grove, CA 92843 - (714) 554-0357" + "<br><br>"
    a(10)="Colette’s Children’s Home - 7372 Prince Dr, Huntington Beach - (714) 596-1380" + "<br><br>"
    a(11)="Laura's House - 999 Corporate Dr #225, Ladera Ranch, CA 92694 - (949) 361-3775" + "<br><br>"
    a(12)="Casa Teresa - 1660 W Broadway # 221, Anaheim, CA 92802 - (714) 538-4860" + "<br><br>"
    a(13)="Pathway Of Hope - 626 N Pauline St, Anaheim, CA 92805 - (714) 680-3691" + "<br><br>"
    a(14)="First Day - 12426 Whittier Blvd, Whittier, CA 90602 - (562) 945-4304" + "<br><br>"
    a(15)="New Vista - 514 W Amerige Ave, Fullerton, CA 92832 - (714) 680-3691" + "<br><br>"
    a(16)="Jordan's Disciples - 1616 E Pine St, Compton, CA 90221 - (323) 577-5941" + "<br><br>"
    a(17)="The Salvation Army - 5600 Rickenbacker Rd, Bell, CA 90201 - (323) 263-1206" + "<br><br>"
    a(18)="Salvation Army - 818 E 3rd St, Santa Ana, CA 92701 - (714) 542-9750" + "<br><br>"
    a(19)="New Beginnings Outreach - 5753 29th St, Riverside, CA 92509 - (951) 332-1489" + "<br><br>"
    a(20)="Illumination Foundation - 15161 Jackson St, Midway City, CA 92655 - (714) 880-8220" + "<br><br>"
    a(21)="LA Mission - 303 E 5th St, Los Angeles, CA 90013 - (213) 629-1227" + "<br><br>"
    a(22)="Visionministry - 566 San Pedro St, Los Angeles, CA 90013 - (323) 708-0466" + "<br><br>"
    a(23)="Jovenes Inc - 1208 Pleasant Ave, Los Angeles, CA 90033 - (323) 260-8035" + "<br><br>"

'get the q parameter from URL
q=ucase(request.querystring("q"))

'lookup all hints from array if length of q>0
if len(q)>0 then
  hint=""
  for i=1 to 23
    if q=ucase(mid(a(i),1,len(q))) then
      if hint="" then 
        hint=a(i)
      else 

         hint= hint & " " & "<tr><td><br><i>" & a(i) & "</td></tr>"

      end if
    end if
  next
end if

'Output "no suggestion" if no hint were found
'or output the correct values
if hint="" then

response.write("no suggestion <br><br> ")

else

  response.write(hint)

end if
%></td></tr></table></tbody>