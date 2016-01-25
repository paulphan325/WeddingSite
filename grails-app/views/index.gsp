<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>My Wedding Website</title>
    <meta name="layout" content="main">
    <link href='http://fonts.googleapis.com/css?family=Oleo+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
</head>

<body>

<g:render template="/templates/storyModel"/>

<nav class="navbar navbar-fixed-top" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse navbar-ex1-collapse">
        <ul class="nav navbar-nav">
            <li><a href="#ourStory">STORIES</a></li>
            <li><a href="#weddingParty">WEDDING PARTY</a></li>
            <li><a href="#rsvp">RSVP</a></li>
            <li><a href="#venue">VENUE</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
</nav>

<div class="title-area text-center">
    <h3 class="signature">John Anderson & Caitlin Weber</h3>
    <h6 class="wedding-date">December 31st, 2016</h6>

    <div class="profile-image">

        <asset:image src="backgrounds/TopField.JPG" class="img-circle welcome-image"/>
        %{--<div class="frame-photo">--}%
            %{--<asset:image src="backgrounds/FaceBubble.png" class="welcome-image-background"/>--}%
        %{--</div>--}%
    </div>
</div>

<div class="section stories-area text-center" id="ourStory">
    <div class="section-title">OUR STORY</div>

    <div class="stories">
        <div class="stories-box">
            <div class="stories-card">
                <asset:image src="BeanFactory.jpg" class="story-image"/>
                <div><p class="story-caption">First Date</p></div>
            </div>
            <a data-toggle="modal" data-target="#firstDateStory" class="view-more"></a>
        </div>

        <div class="stories-box">
            <div class="stories-card">
                <asset:image src="icons/target.png" class="story-image"/>
                <div><p class="story-caption">The Proposal</p></div>
            </div>
            <a><div class="view-more"></div></a>
        </div>

        <div class="stories-box">
            <div class="stories-card">
                <asset:image src="icons/target.png" class="story-image"/>
                <div><p class="story-caption">Picking A Venue</p></div>
            </div>
            <a><div class="view-more"></div></a>
        </div>

        <div class="stories-box">
            <div class="stories-card">
                <asset:image src="icons/target.png" class="story-image"/>
                <div><p class="story-caption">The Honeymoon</p></div>
            </div>
            <a><div class="view-more"></div></a>
        </div>

        <div class="stories-box">
            <div class="stories-card">
                <asset:image src="icons/target.png" class="story-image"/>
                <div><p class="story-caption">Our Future Journey</p></div>
            </div>
            <a><div class="view-more"></div></a>
        </div>
    </div>
</div>

%{--Wedding Party Info--}%
<div class="section text-center">
    <div class="section-title text-center" id="weddingParty">WEDDING PARTY</div>

    <div class="wedding-party-wrapper">
        <div class="wedding-party-side">
            <div class="section-title text-center">BRIDE</div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                <i class="fa fa-2x fa-angle-double-down" data-toggle="collapse" data-target="#brideParty1"></i>
                    <div class="wedding-party-name">Ellie</div>
                    <div class="wedding-party-role">Maid of Honor</div>
                    <div id="brideParty1" class="collapse">Some funny text about Ellie</div>
                </div>
            </div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                <i class="fa fa-2x fa-angle-double-down text-right" data-toggle="collapse" data-target="#brideParty2"></i>
                    <div class="wedding-party-name">Angie</div>
                    <div class="wedding-party-role">Bridesmaid</div>
                    <div id="brideParty2" class="collapse">Some funny text about Angie</div>
                </div>
            </div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                <i class="fa fa-2x fa-angle-double-down text-right" data-toggle="collapse" data-target="#brideParty3"></i>
                    <div class="wedding-party-name">Carli</div>
                    <div class="wedding-party-role">Bridesmaid</div>
                <div id="brideParty3" class="collapse">Some funny text about Carli</div>
                </div>
            </div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                <i class="fa fa-2x fa-angle-double-down" data-toggle="collapse" data-target="#brideParty4"></i>
                    <div class="wedding-party-name">Nicole</div>
                    <div class="wedding-party-role">Bridesmaid</div>
                <div id="brideParty4" class="collapse">Some funny text about Nicole</div>
                </div>
            </div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                    <i class="fa fa-2x fa-angle-double-down" data-toggle="collapse" data-target="#brideParty5"></i>
                    <div class="wedding-party-name">Hedi</div>
                    <div class="wedding-party-role">Bridesmaid</div>
                    <div id="brideParty5" class="collapse">Some funny text about Hedi</div>
                </div>
            </div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                    <i class="fa fa-2x fa-angle-double-down" data-toggle="collapse" data-target="#brideParty6"></i>
                    <div class="wedding-party-name">Sara-Bella</div>
                    <div class="wedding-party-role">Bridesmaid</div>
                    <div id="brideParty6" class="collapse">Some funny text about Sara-Bella</div>
                </div>
            </div>
        </div>

        <div class="wedding-party-side">
            <div class="section-title text-center">GROOM</div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                <i class="fa fa-2x fa-angle-double-down" data-toggle="collapse" data-target="#groomParty1"></i>
                    <div class="wedding-party-name">Adam</div>
                    <div class="wedding-party-role">Best Man</div>
                <div id="groomParty1" class="collapse">Some funny text about Adam</div>
                </div>
            </div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                <i class="fa fa-2x fa-angle-double-down" data-toggle="collapse" data-target="#groomParty2"></i>
                    <div class="wedding-party-name">Kai</div>
                    <div class="wedding-party-role">Groomsman</div>
                <div id="groomParty2" class="collapse">Some funny text about Kai</div>
                </div>
            </div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                <i class="fa fa-2x fa-angle-double-down text-right" data-toggle="collapse" data-target="#groomParty3"></i>
                    <div class="wedding-party-name">Kyle</div>
                    <div class="wedding-party-role">Groomsman</div>
                <div id="groomParty3" class="collapse">Some funny text about Kyle</div>
                </div>
            </div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                <i class="fa fa-2x fa-angle-double-down" data-toggle="collapse" data-target="#groomParty4"></i>
                    <div class="wedding-party-name">Caleb</div>
                    <div class="wedding-party-role">Groomsman</div>
                <div id="groomParty4" class="collapse">Some funny text about Caleb</div>
                </div>
            </div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                    <i class="fa fa-2x fa-angle-double-down" data-toggle="collapse" data-target="#groomParty5"></i>
                    <div class="wedding-party-name">Matthew</div>
                    <div class="wedding-party-role">Groomsman</div>
                    <div id="groomParty5" class="collapse">Some funny text about Matthew</div>
                </div>
            </div>

            <div class="wedding-party-member">
                <asset:image src="icons/target.png" class="wedding-party-image"/>
                <div class="wedding-party-text">
                    <i class="fa fa-2x fa-angle-double-down" data-toggle="collapse" data-target="#groomParty6"></i>
                    <div class="wedding-party-name">Placeholder</div>
                    <div class="wedding-party-role">Groomsman</div>
                    <div id="groomParty6" class="collapse">Some funny text about Placeholder</div>
                </div>
            </div>
        </div>
    </div>

</div>

</body>
</html>