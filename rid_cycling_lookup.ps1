for ($n=241685; $n -le 251685; $n++)
{
    $check_sid = 'S-1-5-21-838102356-056003423-8812413925-' + $n
	get-aduser -filter {sid -like $check_sid} | select name, sid
}

function enum-RIDs 
{
	for ($n=231685; $n -le 241685; $n++)
	{
	    $check_sid = 'S-1-5-21-838102356-056003423-8812413925-' + $n
		get-aduser -filter {sid -like $check_sid} -server <domain_controller>:389 | select name, sid
	}
}
