<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>CEO Checker</title>
</head>
<body>

% if error == True:
    Sorry, there was an error loading the group data. 
    The group ID you provided didn't return any valid
    groups. Is the group public/open? Did you enter the ID
    correctly? <br/><br/>

    Feel free to reach out to masnun [at] transcendio.net 
    with any feedback.

% else: 

<img src="http://graph.facebook.com/{{ data['owner']['id']}}/picture" alt="ceo" /><br/>
</strong> <a href="https://facebook.com/{{ data['owner']['id']}}">{{ data['owner']['name'] }}</a> is the CEO of 
<a href="https://facebook.com/groups/{{ data['id'] }}">{{ data['name'] }}</a>.<br/><br/> 
{{ data['description'] }}

%end

</body>
</html>