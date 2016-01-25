<html>
<head>
    <meta charset="utf-8">
    <title>Guest RSVP</title>
    <meta name="layout" content="main">
</head>

<body>
<g:form controller="guest" action="rsvp">
    <label class="rsvp-header">First Name:</label>
    <g:textField class="yourname rsvp-header" name="firstName" id="firstName" placeholder="First Name"
                 autocomplete="off"/><br/>

    <label class="rsvp-header">Last Name:</label>
    <g:textField class="yourname" name="lastName" id="lastName" placeholder="Last Name" autocomplete="off"/><br/>

    <input class="btn col-lg-3 btn-success rsvp-button" type="Submit" value="RSVP"/>
</g:form>

</body>
</html>