Problems
---------------------------------
1. link for admin page and sign_out_path are not working while I used jquery 1.11.1 instead of version 1.11.3(disable jqurey in application.js and then put jquery_1.11.1.js file in assets/javascript folder)

solution: use gem 'jquery-rails','4.0.2' for using jquery 1.11.1

2. use of select tag (html5 tag) in rails4.

solution:

new.html.erb/edit.html.rb
---------------------------
<%= select_tag :country,options_for_select(countries),:class=>'form-control',:name => 'user[location]' %>
------------------------------------------------------------------
produces:
<select name="user[location]" id="country" class="form-control">
------------------------------------------------------------------

application_helper.rb
------------------------------

 def countries
    [
        ["Afghanistan", "AF"],
        ["Åland Islands ", " AX "],
        ["Albania", "AL"],
        [" Algeria ", " DZ "],
        ["American Samoa", "AS"],
        [" Andorra ", " AD "],
        ["Angola", "AO"],
        [" Anguilla ", " AI "],
        ["Antarctica", "AQ"],
        [" Antigua and Barbuda ", " AG "],
        ["Argentina", "AR"],
        [" Armenia ", " AM "],
        ["Aruba", "AW"],
        [" Australia ", " AU "],
        ["Austria", "AT"],
        [" Azerbaijan ", " AZ "],
        ["Bahamas", "BS"],
        [" Bahrain ", " BH "],
        ["Bangladesh", "BD"],
        [" Barbados ", " BB "],
        ["Belarus", "BY"],
        [" Belgium ", " BE "],
        ["Belize", "BZ"],
        [" Benin ", " BJ "],
        ["Bermuda", "BM"],
        [" Bhutan ", " BT "],
        ["Bolivia, Plurinational State of", "BO"],
        [" Bosnia and Herzegovina ", " BA "],
        ["Botswana", "BW"],
        [" Bouvet Island ", " BV "],
        ["Brazil", "BR"],
        [" British Indian Ocean Territory ", " IO "],
        ["Brunei Darussalam", "BN"],
        [" Bulgaria ", " BG "],
        ["Burkina Faso", "BF"],
        [" Burundi ", " BI "],
        ["Cambodia", "KH"],
        [" Cameroon ", " CM "],
        ["Canada", "CA"],
        [" Cape Verde ", " CV "],
        ["Cayman Islands", "KY"],
        [" Central African Republic ", " CF "],
        ["Chad", "TD"],
        [" Chile ", " CL "],
        ["China", "CN"],
        [" Christmas Island ", " CX "],
        ["Cocos (Keeling) Islands", "CC"],
        [" Colombia ", " CO "],
        ["Comoros", "KM"],
        [" Congo ", " CG "],
        ["Congo, The Democratic Republic of the", "CD"],
        [" Cook Islands ", " CK "],
        ["Costa Rica", "CR"],
        [" Côte D 'ivoire", "CI"],
        ["Croatia", "HR"],
        ["Cuba", "CU"],
        ["Cyprus", "CY"],
        ["Czech Republic", "CZ"],
        ["Denmark", "DK"],
        ["Djibouti", "DJ"],
        ["Dominica", "DM"],
        ["Dominican Republic", "DO"],
        ["Ecuador", "EC"],
        ["Egypt", "EG"],
        ["El Salvador ", " SV "],
        ["Equatorial Guinea", "GQ"],
        ["Eritrea ", " ER "],
        ["Estonia", "EE"],
        [" Ethiopia ", " ET "],
        ["Falkland Islands (Malvinas)", "FK"],
        ["Faroe Islands ", " FO "],
        ["Fiji", "FJ"],
        [" Finland ", " FI "],
        ["France", "FR"],
        [" French Guiana ", " GF "],
        ["French Polynesia", "PF"],
        ["French Southern Territories ", " TF "],
        ["Gabon", "GA"],
        [" Gambia ", " GM "],
        ["Georgia", "GE"],
        [" Germany ", " DE "],
        ["Ghana", "GH"],
        ["Gibraltar ", " GI "],
        ["Greece", "GR"],
        ["Greenland ", " GL "],
        ["Grenada", "GD"],
        ["Guadeloupe ", " GP "],
        ["Guam", "GU"],
        ["Guatemala ", " GT "],
        ["Guernsey", "GG"],
        ["Guinea ", " GN "],
        ["Guinea-bissau", "GW"],
        ["Guyana ", " GY "],
        ["Haiti", "HT"],
        ["Heard Island and McDonald Islands ", " HM "],
        ["Holy See (Vatican City State)", "VA"],
        [" Honduras ", " HN "],
        ["Hong Kong", "HK"],
        ["Hungary ", " HU "],
        ["Iceland", "IS"],
        ["India ", " IN "],
        ["Indonesia", "ID"],
        [" Iran Islamic Republic of ", " IR "],
        ["Iraq", "IQ"],
        [" Ireland ", " IE "],
        ["Isle of Man", "IM"],
        [" Israel ", " IL "],
        ["Italy", "IT"],
        [" Jamaica ", " JM "],
        ["Japan", "JP"],
        ["Jersey ", " JE "],
        ["Jordan", "JO"],
        [" Kazakhstan ", " KZ "],
        ["Kenya", "KE"],
        [" Kiribati ", " KI "],
        ["Korea, Democratic People' s Republic of ", " KP "],
        [" Korea, Republic of ", " KR "],
        [" Kuwait ", " KW "],
        [" Kyrgyzstan ", " KG "],
        [" Lao People 's Democratic Republic", "LA"],
        [" Latvia ", " LV "],
        ["Lebanon", "LB"],
        [" Lesotho ", " LS "],
        ["Liberia", "LR"],
        ["Libyan Arab Jamahiriya ", " LY "],
        ["Liechtenstein", "LI"],
        [" Lithuania ", " LT "],
        ["Luxembourg", "LU"],
        [" Macao ", " MO "],
        ["Macedonia, The Former Yugoslav Republic of", "MK"],
        [" Madagascar ", " MG "],
        ["Malawi", "MW"],
        [" Malaysia ", " MY "],
        ["Maldives", "MV"],
        [" Mali ", " ML "],
        ["Malta", "MT"],
        [" Marshall Islands ", " MH "],
        ["Martinique", "MQ"],
        [" Mauritania ", " MR "],
        ["Mauritius", "MU"],
        [" Mayotte ", " YT "],
        ["Mexico", "MX"],
        [" Micronesia, Federated States of ", " FM "],
        ["Moldova, Republic of", "MD"],
        [" Monaco ", " MC "],
        ["Mongolia", "MN"],
        [" Montenegro ", " ME "],
        ["Montserrat", "MS"],
        [" Morocco ", " MA "],
        ["Mozambique", "MZ"],
        [" Myanmar ", " MM "],
        ["Namibia", "NA"],
        [" Nauru ", " NR "],
        ["Nepal", "NP"],
        [" Netherlands ", " NL "],
        ["Netherlands Antilles", "AN"],
        [" New Caledonia ", " NC "],
        ["New Zealand", "NZ"],
        [" Nicaragua ", " NI "],
        ["Niger", "NE"],
        [" Nigeria ", " NG "],
        ["Niue", "NU"],
        ["Norfolk Island ", " NF "],
        ["Northern Mariana Islands", "MP"],
        [" Norway ", " NO "],
        ["Oman", "OM"],
        [" Pakistan ", " PK "],
        ["Palau", "PW"],
        [" Palestinian Territory, Occupied ", " PS "],
        ["Panama", "PA"],
        [" Papua New Guinea ", " PG "],
        ["Paraguay", "PY"],
        [" Peru ", " PE "],
        ["Philippines", "PH"],
        [" Pitcairn ", " PN "],
        ["Poland", "PL"],
        [" Portugal ", " PT "],
        ["Puerto Rico", "PR"],
        [" Qatar ", " QA "],
        ["Réunion", "RE"],
        [" Romania ", " RO "],
        ["Russian Federation", "RU"],
        [" Rwanda ", " RW "],
        ["Saint Barthélemy", "BL"],
        [" Saint Helena, Ascension and Tristan Da Cunha ", " SH "],
        ["Saint Kitts and Nevis", "KN"],
        [" Saint Lucia ", " LC "],
        ["Saint Martin", "MF"],
        [" Saint Pierre and Miquelon ", " PM "],
        ["Saint Vincent and the Grenadines", "VC"],
        [" Samoa ", " WS "],
        ["San Marino", "SM"],
        [" Sao Tome and Principe ", " ST "],
        ["Saudi Arabia", "SA"],
        [" Senegal ", " SN "],
        ["Serbia", "RS"],
        [" Seychelles ", " SC "],
        ["Sierra Leone", "SL"],
        [" Singapore ", " SG "],
        ["Slovakia", "SK"],
        [" Slovenia ", " SI "],
        ["Solomon Islands", "SB"],
        [" Somalia ", " SO "],
        ["South Africa", "ZA"],
        [" South Georgia and the South Sandwich Islands ", " GS "],
        ["Spain", "ES"],
        [" Sri Lanka ", " LK "],
        ["Sudan", "SD"],
        [" Suriname ", " SR "],
        ["Svalbard and Jan Mayen", "SJ"],
        [" Swaziland ", " SZ "],
        ["Sweden", "SE"],
        [" Switzerland ", " CH "],
        ["Syrian Arab Republic", "SY"],
        [" Taiwan, Province of China ", " TW "],
        ["Tajikistan", "TJ"],
        [" Tanzania, United Republic of ", " TZ "],
        ["Thailand", "TH"],
        [" Timor-leste ", " TL "],
        ["Togo", "TG"],
        [" Tokelau ", " TK "],
        ["Tonga", "TO"],
        [" Trinidad and Tobago ", " TT "],
        ["Tunisia", "TN"],
        [" Turkey ", " TR "],
        ["Turkmenistan", "TM"],
        [" Turks and Caicos Islands ", " TC "],
        ["Tuvalu", "TV"],
        [" Uganda ", " UG "],
        ["Ukraine", "UA"],
        [" United Arab Emirates ", " AE "],
        ["United Kingdom", "GB"],
        [" United States ", " US "],
        ["United States Minor Outlying Islands", "UM"],
        [" Uruguay ", " UY "],
        ["Uzbekistan", "UZ"],
        ["Vanuatu ", " VU "],
        ["Venezuela, Bolivarian Republic of", "VE"],
        [" Vietnam ", " VN "],
        ["Virgin Islands, British", "VG"],
        [" Virgin Islands, U.S.", " VI "],
        ["Wallis and Futuna", "WF"],
        [" Western Sahara ", " EH "],
        ["Yemen", "YE"],
        [" Zambia ", " ZM "],
        ["Zimbabwe", "ZW"]
    ]
  end


----------------------------------------------------------

3. I'm not able to show previous data which is stored in database in select tag in user->edit.html.rb

solution:
use this :
<% @role=Role.all %>
<%= f.collection_select :role_id,@role,:id, :name, prompt: true %>
 or
<%= f.collection_select :role_id,Role.all,:id, :name, prompt: true %>
here,:id is value and :name is showing role name in edit form.

4. bootstrap.js is not work with jquery 1.11.1,it should be use jquery 1.11.3 version for working bootstrap.js


5. I'm not able to use html tag from databese(it shows as like <h1>HTML5</h1> in frontend when I give input to database in <h1>HTML5</h1> from backend.)I want to see Only HTML5 in frontend.

solution:
use 'html_safe' method for it. as an example:
Before: <%= @course.name %> (it shows <h1>HTML5</h1> in frontend)
After: <%= @course.name.html_safe %> (it shows HTML5 in frontend)


6. I have Found  error after installing tinymce gem,it shows that tinymice asstets file did not find in folder.

solution: restart server again, it will work after restarting server.

7. Not work gem tinymce.

solution: Use tinymce for html5 ,it is easy to integrate, avoid gem tinymce.

8. I'm not set up the homepage image path.

solution:
make new style and include the image such as :

<style>
    .hero-opaque {
        background-image: url("assets/static/certification.png")
    }
</style>


9. I am not able to show single course because it needs course id.

solution: 

<a href="<%= course_path(course.id) %>"><img src="/assets/<%= course.course_img %>" alt="<%= course.name %>"></a><br/>

10. How to convert database date to normal date

solution: <%= @course.start.strftime('%a %b %d %H:%M:%S %Z %Y') %>

Here, a= week day,b=month name, d=date,H=hour,M=minute ,S=second,Z=zone,Y=Year


11. why background image is not show when I use url_to_asset/image_url method in rails 4? Example:
I use showing my hero image in home page as code as two ways but all are failed

i. background-image: <%= url_to_asset("certification.png")%>;
ii. background-image: <%= image_url('static/certification.png') %>;*/

Solution:
use asset_path method
background-image:url(<%= asset_path "hero/certification.png" %>);

12. How to remove black color block from a:hover?

 Solution:
 use this in last css(in here week.scss is last css):

 a:hover {
   background-color: transparent;
   text-underline: none;
   color: brown;
 }


13. How to retrieve data(course and week) from a database in select option?

solution:
<% @course = Course.all
       @week = Week.all
    %>

    <%= select_tag 'lecture[course_id]', options_from_collection_for_select(@course, 'id', 'name') %>

    <%= select_tag 'lecture[week_id]', options_from_collection_for_select(@week, 'id', 'name') %>


14. how to get my current route address?

solution:
<%= current_uri = request.env['PATH_INFO'] %>

15. How to get my router's last part?

solution: create a method in applicationHelper.rb(it will not work if you put write in applicationHelper.rb,see problem 16 and it's solution) and call it in from anywhere:

 def subject_path
    @current_uri = request.env['PATH_INFO'].split('/')
    @l=@current_uri[2]
  end


16. Problem creates while I put subject_path() in applicationHelper.rb

solution :

method subject_path() should write in a controller under private section,for solving this problem, write this method
 in homeController.rb under private section

17. How to render a simple text in a view page from a controller ?

solution:
render :text => 'No syllabus',:layout => true


18. How to retrieve all syllabuses data of a particular course ?

solution:
Model which has many: table name must be pluralize
Model which belongs_to : table name must singular

Example: a courses has many syllabuses ,for this relation

Model->course.rb
class Course < ActiveRecord::Base
  has_many :syllabuses
end

Model->syllabus.rb
class Syllabus < ActiveRecord::Base
  belongs_to :course
end


Now we have to declare a simple sql command which will retrieve all syllabuses under a course from a controller.

def subject
    id= subject_path() // id is the course id which will find out

    @syllabus= Syllabus.find_by_course_id(id) //this is find out the course details

    @syllabuses=Syllabus.where(course_id: id)  // this is find out all syllabus under a course

    @last_date = Syllabus.where(course_id: id).last! // this is find out the last element of syllabus under a course.

    if @syllabuses.nil?
      render :text => 'No syllabus',:layout => true
    end

  end


  Now we have to call the global varible from controller as like as:

  <%= @syllabus.course.code %>: <%= @syllabus.course.name %>

  <% @syllabuses.each do |s| %>
      <%= s.id %>
      <%= s.name %>
      <% end %>
  <%= @last_date.deadline.strftime('%B %d, %Y')  %>



19. how to drop specific table from databse in rails 4 from terminal ?
solution :
rails c
ActiveRecord::Migration.drop_table(:lectures)
-------------------------------------
here :lectures is the table name.

20. How to purge/truncate full database?

solution: rake db:purge
