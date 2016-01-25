<html>
<head>
    <meta charset="utf-8">
    <title>The Anderson Wedding</title>
    <meta name="layout" content="main">
    <link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
</head>

<body>
%{--<nav class="navbar navbar-default" role="navigation">--}%
    %{--<div class="container-fluid">--}%
        %{--<!-- Brand and toggle get grouped for better mobile display -->--}%
        %{--<div class="navbar-header">--}%
            %{--<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">--}%
                %{--<span class="sr-only">Toggle navigation</span>--}%
                %{--<span class="icon-bar"></span>--}%
                %{--<span class="icon-bar"></span>--}%
                %{--<span class="icon-bar"></span>--}%
            %{--</button>--}%
            %{--<a class="navbar-brand" href="#">Brand Logo</a>--}%
        %{--</div>--}%

        %{--<!-- Collect the nav links, forms, and other content for toggling -->--}%
        %{--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">--}%
            %{--<ul class="nav navbar-nav">--}%
                %{--<li><a href="#rsvp">RSVP</a> </li>--}%
                %{--<li><a href="#registries">Registries</a></li>--}%
                %{--<li><a href="#where">Accomidations</a></li>--}%
                %{--<li><a href="#explore">Explore</a></li>--}%
            %{--</ul>--}%
        %{--</div><!-- /.navbar-collapse -->--}%
    %{--</div><!-- /.container-fluid -->--}%
%{--</nav>--}%
<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Brand Logo</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="pull-left"><a href="#">Dashboard</a></li>
                <li class="active"><a href="#">Stories</a></li>
                <li><a href="#">Videos</a></li>
                <li><a href="#">Photos</a></li>
                <li class="social pull-right"><a href="#">Social Links</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>


<section id="when" class="full dark photo img-responsive top-photo">
    <div class="countdown">
        <script type="text/javascript">
            today = new Date();
            BigDay = new Date("December 31, 2016");
            msPerDay = 24 * 60 * 60 * 1000;
            timeLeft = (BigDay.getTime() - today.getTime());
            e_daysLeft = timeLeft / msPerDay;
            daysLeft = Math.floor(e_daysLeft);
            e_hrsLeft = (e_daysLeft - daysLeft) * 24;
            hrsLeft = Math.floor(e_hrsLeft);
            minsLeft = Math.floor((e_hrsLeft - hrsLeft) * 60);
            document.write("<div class='daysToGo'>" + daysLeft + "</div><small>days until the wedding of</small>");
        </script>
    </div>

    <div class="transbox">
        <p>John Robert Anderson <br/>& <br/> Caitlin Elizabeth Weber</p>
    </div>
    <!--<img class="sigs" src="sigs.png" style="position: absolute; bottom: 530px; left: 50%; margin-left: -357px;">
    <h1>Saturday<br>July 11th, 2015<br>Raleigh, NC</h1>
    -->
</section>
<section id="rsvp" class="light">
    <h2 class="rsvp-header">R.S.V.P.</h2>
    <br/>
    <br/>
    <h4 class="rsvp-header">Enter one member of your party</h4>

    <g:form controller="guest" action="rsvp">
        <label class="rsvp-header">First Name:</label>
        <g:textField class="yourname rsvp-header" name="firstName" id="firstName" placeholder="First Name"
                     autocomplete="off"/><br/>

        <label class="rsvp-header">Last Name:</label>
        <g:textField class="yourname" name="lastName" id="lastName" placeholder="Last Name" autocomplete="off"/><br/>

        <input class="btn col-lg-3 btn-success rsvp-button" type="Submit" value="RSVP"/>
    </g:form>

    <g:link controller="guest" action="rsvp">RSVP Link</g:link>

    <div class="spinner" style="display: none;"></div>

    <p class="notice" style="display: none;">I'm sorry, your name isn't on the list. <br> <a
            href="mailto:jra.hockey4@gmail.com?subject=You Forgot to Invite Me :)">Is this a mistake?</a></p>

    <div class="test">
        <form id="yourresponse" style="display: none;">
            <h3 id="question">Will you be able to celebrate with us?</h3>
            <table id="response" style="display: none;">
                <tbody>
                <tr>
                    <td style="padding-right:40px;">
                        <input data-type="response" type="checkbox" id="yes">
                        <label for="yes">I wouldn't miss it for the world.</label>
                    </td>
                    <td style="padding-left:40px;">
                        <input data-type="response" type="checkbox" id="no">
                        <label for="no">Will celebrate from afar.</label>
                    </td>
                </tr>
                </tbody>
            </table>

            <div class="guest-count">
                <label class="guest-label">How Many?</label>
                <input class="guest-input" type="text" value="1">
            </div>
            <button class="guest-button" id="click" type="button">Send RSVP</button>
        </form>
    </div>

    <p class="final" style="display: none; margin-top: 100px;">Thank you!</p>

</section>
<section class="photo top dock-photo"></section>

<!--Registry -->
<section id="registries" class="light">
    <h2>Registries</h2>
    <h4 class="rsvp-header">Something about how we dont want gifts but like we actually do</h4>
    <table style="text-align: center;">
        <tbody>
        <tr>
            <td><g:link url="http://ncl.com"><asset:image src="/icons/Cruise-Logo.png"/></g:link></td>

            <td><a target="_blank" href="http://www.target.com"><asset:image src="icons/target-bw.png"
                                                                             class="registry target"
                                                                             onmouseover="this.src = '/assets/icons/target.png'"
                                                                             onmouseout="this.src = '/assets/icons/target-bw.png'"/></a>
            </td>
        </tr>
        </tbody>
    </table>
</section>

<!-- where -->
<section id="where" class="radisson-photo">
    <div class="where">
        <p>Radisson Blu<br>Mall of America,<br>Bloomington, Minnesota</p>
    </div>
</section>
<section id="accommodations" class="light">
    <h1 class="rsvp-header">Accommodations</h1>

    <div class='hotel'>
        <div class="rsvp-header accomidations">
            <ul>
                <li>Free Airport Shuttle</li>
                <li>$169/night</li>
                <li>Use Code: Weber-Anderson Wedding PhoneNumberLink</li>
                <li><g:link
                        url="https://www.google.com/maps/dir//Radisson+Blu+Mall+of+America,+Mall+of+America,+2100+Killebrew+Dr,+Bloomington,+MN+55425/@44.852963,-93.24176,17z/data=!3m1!5s0x87f62f6c391abe2b:0xc67197b91cc6e394!4m13!1m4!3m3!1s0x87f62f6db969c385:0x79b562aee2b6540f!2sRadisson+Blu+Mall+of+America!3b1!4m7!1m0!1m5!1m1!1s0x87f62f6db969c385:0x79b562aee2b6540f!2m2!1d-93.24176!2d44.852963">Directions</g:link></li>
            </ul>

        </div>
    </div>
</section>
<section class="photo vines-photo"></section>
<section id="explore" class="light">
    <h2 class="rsvp-header">Explore The Area</h2>
    <table>
        <tbody>
        <tr>
            <th>Food Bride and Groom Favorites</th>
            <th>Sweets</th>
            <th>Drink</th>
            <th>Fun</th>
        </tr>
        <tr>
            <td>
                <ul>
                    <li><a href="http://www.redcowmn.com" target="_blank">Red Cow</a></li>
                </ul>
            </td>
            <td>
                <ul>
                    <li><a href="http://www.bluemoonbakery.com" target="_blank">Downtown Saint Paul Candy Store</a>
                    </li>
                </ul>
            </td>
            <td>
                <ul>
                    <li><a href="http://www.CremaCoffeeBakery.com" target="_blank">Shamrocks</a></li>
                    <li><a href="http://www.CremaCoffeeBakery.com" target="_blank">Skinners</a></li>
                </ul>
            </td>
            <td>
                <ul>
                    <li><a href="http://www.parkwestvillage.net/" target="_blank">Nikelodean Universe</a></li>
                </ul>
            </td>
        </tr>
        </tbody>
    </table>
</section>
<section id="credit" class="dark">
    <a target="_blank" href="http://www.dirkesphoto.net/"><h2 style="margin: 0; padding: 0;">Photography by Craig
    Dirkes</h2></a>
</section>
</body>
</html>