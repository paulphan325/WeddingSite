<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My Wedding Website</title>
    <meta name="layout" content="main">
    <link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
</head>

<body>

<g:render template="/templates/storyModelFirstDate"/>

<nav class="navbar navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-items">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div id="navbar-items" class="collapse navbar-default navbar-collapse">
        <ul class="nav navbar-nav">
            <li><a href="#ourStory">STORIES</a></li>
            <li><a href="#weddingParty">WEDDING PARTY</a></li>
            <li><a href="#rsvp">RSVP</a></li>
            <li><a href="#venue">VENUE</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
</nav>

<div class="title-area text-center">
    <h3 class="signature"><strong>Caitlin Weber & John Anderson</strong></h3>
    <h6 class="wedding-date">December 31st, 2016</h6>
    <h6 id="daysUntil" class="wedding-date"></h6>

    <div class="profile-image">

        <asset:image src="backgrounds/TopField.JPG" class="img-circle welcome-image"/>
    </div>
</div>

<g:render template="/templates/ourStory"/>

<g:render template="/templates/weddingParty"/>

<g:render template="/templates/registry"/>

<g:render template="/templates/venue"/>

<g:render template="/templates/hotelBlock"/>

<g:render template="/templates/thingsToDo"/>

</body>
</html>