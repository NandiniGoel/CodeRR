<link rel="stylesheet" type="text/css" href="http://www.educatemygirl.org/css/bootstrap.css">
<div class="span5"><center><div class="page-header"><center><br><h1>Welcome 
	<% if user_signed_in? %>
	<%= current_user.first_name %>! 
	<% else %>
    <% end %>
	 <br>Educate My Girl Coder App</div></h1>
<br>
  <a href="http://limitless-ocean-5518.herokuapp.com/buttons/new" class="btn btn-primary" style="color: white;">
  	<b>Create a Button</a></b> | <a href="http://limitless-ocean-5518.herokuapp.com/scaffolds/new" class="btn btn-success" style="color: white;"><b>Create a Form</a></b><br><br>
  	 <a href="http://limitless-ocean-5518.herokuapp.com/textmarquees/new" class="btn btn-warning" style="color: white;">
  	 	<b>Create Text Marquee</a></b> |
 <a href="http://limitless-ocean-5518.herokuapp.com/dropdowns/new" class="btn btn-danger" style="color: white;">
  	 	<b>Create Dropdown </a></b>

</center>
</div>
<div class="span5">
  <center>
    <br>
    <h2>Hey Buddies! Let us write our own codes. </h2>
      <H3>Now you don't need to search anymore. Fill in the fields and get the code.</H3>
      This app makes life easy for programmers.<br>
Create your website without much efforts.
<br><br>
<% if user_signed_in? %>

<% else %>
<br>
<%= link_to "Sign up", new_user_registration_path, :class => 'btn-large btn-success'  %> or 
  <%= link_to "Login", new_user_session_path, :class => 'btn-large btn-primary'  %><br><br><br><br>
  Wanna Support Us?<br><br>
  <a href="http://www.youcaring.com/other/educate-my-girl-computer-program/112232" class="btn-large btn-warning" target="_blank">Click Here </a>
  <% end %>

        </center>
</div>



