for $x in doc("ships.xml")/ships/class
where $x/@numGuns>9
order by $x
return <class>{data($x/@name)}</class>