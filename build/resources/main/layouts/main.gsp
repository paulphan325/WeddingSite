<!doctype html>
<html lang="en" class="no-js">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        %{--<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet">--}%
        %{--<!-- Latest compiled and minified JavaScript -->--}%
        %{--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>--}%
        <asset:stylesheet src="application.css"/>
        <asset:javascript src="application.js"/>
        <g:layoutHead/>
    </head>
    <body>
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
                <li><g:link url="/">HOME</g:link></li>
                <li><g:link controller="guest" action="story">OUR STORY</g:link></li>
                <li><g:link controller="guest" action="weddingParty">WEDDING PARTY</g:link></li>
                <li><g:link controller="guest" action="venue">VENUE</g:link></li>
                <li><g:link controller="guest" action="registry">REGISTRY</g:link></li>
                <li><g:link controller="guest" action="faq">FAQ</g:link> </li>
                <li><g:link controller="guest" action="rsvp">RSVP</g:link></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </nav>
        <g:layoutBody/>
        <div class="footer text-center" role="contentinfo"></div>
    </body>
</html>
