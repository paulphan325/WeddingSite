<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Ring in the Anderson's</title>
    <meta name="layout" content="main">
    <link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
</head>

<body>

<div class="title-area text-center">
    <h3 class="signature"><strong>Caitlin Weber & John Anderson</strong></h3>
    <h6 class="wedding-date">December 31st, 2016</h6>
    <h6 id="daysUntil" class="wedding-date"></h6>

    <div class="profile-image">

        <asset:image src="backgrounds/TopField.JPG" class="img-circle welcome-image"/>
    </div>
</div>

%{--<g:render template="/templates/ourStory"/>--}%

%{--<g:render template="/templates/weddingParty"/>--}%

<g:render template="/templates/registry"/>


<g:render template="/templates/hotelBlock"/>

<g:render template="/templates/thingsToDo"/>

</body>
</html>