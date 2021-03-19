<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta name="viewport" content="width=device-width"/>
  <meta charSet="utf-8"/>
  <title>Sign up - Musiqua</title>
  <link rel='stylesheet'  href='resources/css/sign_up.css' type='text/css' media='all' />
  <link href="resources/css/fonts.css" rel="stylesheet" type="text/css"  media="all" />
</head>
<body>

  <!--Header-->
  <header class="header default">
    <div class=" left-part">
      <a class="logo scroll" href="index">
        <h2 class="mb-0 uppercase">musiqua.</h2>
      </a>
    </div>
    <div class="right-part">
      <nav class="main-nav">
        <ul class="main-menu list-inline">
          <li><a class="scroll list-inline-item" href="index">Home</a></li>
        </ul>
      </nav>
    </div>
  </header>

  <div class="container_sing_up">
    <div class="header2">
      <h3 class="title title2">Sign up for free to start listening.</h3>
    </div>
    <div class="Facebook"><a href="#" class="face_btn face_btn2">Sign up with Facebook</a></div>
    <span class="divider">or</span>
    <form method="POST">
      <h3 class="text-style center-text">Sign up with your email address</h3>
      <div class="cell">
        <div class="label_field"><label for="gender" class="color_label">Gender?</label></div>
        <div class="GenderSelect input_checkbox">
          <label class="container_checkbox"><input type="radio" name="gender" value="male" aria-invalid="false" class="male_check inner_checkbox_format"/><span class="indicator outer_checkbox"></span><span class="label_checkbox color_label_checkbox">Male</span></label>
          <label class="container_checkbox"><input type="radio" name="gender" value="female" aria-invalid="false" class="female_check inner_checkbox_format"/><span class="indicator outer_checkbox"></span><span class="label_checkbox color_label_checkbox">Female</span></label>
          <label class="container_checkbox"><input type="radio" name="gender" value="nomentioned" aria-invalid="false" class="notMentioned_check inner_checkbox_format"/><span class="indicator outer_checkbox"></span><span class="label_checkbox color_label_checkbox">Not mentioned</span></label>
        </div>
      </div>
      <div class="cell">
        <div class="label_field"><label for="email" class="color_label">Username</label></div>
        <input type="text" id="username" name="username" placeholder="Enter your username." aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
        <span class="erreur">${erreurs['username']}</span>
      </div>
      <div class="cell">
        <div class="label_field"><label for="email" class="color_label">Email</label></div>
        <input type="text" id="email" name="email" placeholder="Enter your email." aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
        <span class="erreur">${erreurs['email']}</span>
      </div>
      <div class="cell">
        <div class="label_field"><label for="email" class="color_label">First Name</label></div>
        <input type="text" id="name" name="firstname" placeholder="Enter your first name." aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
      </div>
      <div class="cell">
        <div class="label_field"><label for="email" class="color_label">Last Name</label></div>
        <input type="text" id="name" name="lastname" placeholder="Enter your last name." aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
      </div>
      <div class="cell">
        <div class="label_field"><label for="password" class="color_label">Create a password</label></div>
        <input type="password" autoComplete="new-password" name="password" name="password" placeholder="Create a password." aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>

      </div>
      <div class="cell">
        <div class="label_field"><label for="password" class="color_label">Confirm your password</label></div>
        <input type="text" autoComplete="confirm" name="confirm" name="confirm" placeholder="Insert the password again." aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
      </div>
      <!-- Music preference -->
      <div class="cell">
        <div class="label_field"><label for="music_type" class="color_label">What do you like to listen to?</label></div>
        <div class="music_preference input_checkbox">
          <label class="container_checkbox"><input type="checkbox" name="chk" value="house" aria-invalid="false" class="house inner_checkbox_format"/><span class="indicator outer_checkbox"></span><span class="label_checkbox color_label_checkbox">house</span></label>
          <label class="container_checkbox"><input type="checkbox" name="chk" value="pop" aria-invalid="false" class="pop inner_checkbox_format"/><span class="indicator outer_checkbox"></span><span class="label_checkbox color_label_checkbox">pop</span></label>
          <label class="container_checkbox"><input type="checkbox" name="chk" value="metal" aria-invalid="false" class="metal inner_checkbox_format"/><span class="indicator outer_checkbox"></span><span class="label_checkbox color_label_checkbox">metal</span></label>
          <label class="container_checkbox"><input type="checkbox" name="chk" value="classical" aria-invalid="false" class="classical inner_checkbox_format"/><span class="indicator outer_checkbox"></span><span class="label_checkbox color_label_checkbox">classical</span></label>
          <label class="container_checkbox"><input type="checkbox" name="chk" value="jazz" aria-invalid="false" class="jazz inner_checkbox_format"/><span class="indicator outer_checkbox"></span><span class="label_checkbox color_label_checkbox">jazz</span></label>
        </div>
      </div>
      <!-- Billing address -->
      <div>
        <div class="cell">
          <div class="label_field"><label for="country" class="color_label">Country</label></div>
          <input type="text" id="country" name="country" placeholder="Enter your home country." aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
        </div>
        <div class="cell">
          <div class="label_field"><label for="displayname" class="color_label">City</label></div>
          <input type="text" id="city" name="city" placeholder="Enter your home city." aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
        </div>
        <div class="cell">
          <div class="label_field"><label for="displayname" class="color_label">Address</label></div>
          <input type="text" id="address" name="address" placeholder="Enter your address." aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
        </div>
        <div class="cell">
          <div class="label_field"><label for="displayname" class="color_label">House number</label></div>
          <input type="text" id="number" name="number" placeholder="Enter your house number." aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
        </div>
        <div class="cell">
          <div class="label_field"><label for="displayname" class="color_label">PosteCode</label></div>
          <input type="text" id="CAP" name="postecode" placeholder="Enter your postecode." aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
        </div>
      </div>
      <!-- birth date -->
      <div class="cell">
        <div class="label_field"><label class="color_label">Your date of birth?</label></div>
        <div data-testid="dob-parent" class="date_container">
          <div data-testid="month" class="month style_month">
            <div class="cell no-bottom-pad">
              <div class="label_field"><label for="month" class="color_label">Month</label></div>
              <div class="selectMonth">
                <select id="month" name="month" aria-invalid="false" class=" select_month">
                  <option selected="" disabled="" value="">Month</option>
                  <option value="01">January</option>
                  <option value="02">February</option>
                  <option value="03">March</option>
                  <option value="04">April</option>
                  <option value="05">May</option>
                  <option value="06">June</option>
                  <option value="07">July</option>
                  <option value="08">August</option>
                  <option value="09">September</option>
                  <option value="10">October</option>
                  <option value="11">November</option>
                  <option value="12">December</option>
                </select>
              </div>
            </div>
          </div>
          <div data-testid="day" class="day_container">
            <div class="cell no-bottom-pad">
              <div class="label_field"><label for="day" class="color_label">Day</label></div>
              <input type="text" id="day" inputMode="numeric" maxLength="2" name="day" pattern="((0?[1-9])|([12][0-9])|(3[01]))" placeholder="DD" aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
            </div>
          </div>
          <div data-testid="year" class="year_container">
            <div class="cell no-bottom-pad">
              <div class="label_field"><label for="year" class="color_label">Year</label></div>
              <input type="text" id="year" inputMode="numeric" maxLength="4" name="year"  placeholder="YYYY" aria-invalid="false" class="input-box input_box_style some_settings_for_small_screen"/>
            </div>
          </div>
        </div>
      </div>
      <!-- policy check -->
      <div class="cell"><label class="policy_check"><input type="checkbox" name="thirdParty" class="inner_checkbox_format"/><span class="indicator_policy format_policy_check"></span><span class="policy_text">Share my registration data with Musiqua's content providers for marketing purposes.</span></label></div>

      <div class="center-text">
        <p class="text_term_conditions">By clicking on Sign up, you agree to Musiqua's Terms and Conditions of Use.</p>
        <p class="text_term_conditions">To learn more about how Musiqua collects, uses, shares and protects your personal data please read Musiqua's Privacy Policy.</p>
        <div class="sign_up_btn"><button type="submit" class="btn_style pointer">Sign up</button></div>
        <p class="account">Have an account? <a href="Login">Log in</a>.</p>
      </div>
    </form>
  </div>

  <!-- javascript libraries -->
  <script src="lib/jquery.js"></script>
  <!-- javascript scripts -->
  <script src="js/script.js"></script>
</body>
</html>
