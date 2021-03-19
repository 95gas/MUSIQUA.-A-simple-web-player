<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Your profile</title>

  <!-- Css -->
  <link rel='stylesheet'  href='resources/css/profilepage.css' type='text/css' media='all' />
  <link rel='stylesheet'  href='resourcescss/fonts.css' type='text/css' media='all' />
  <link rel='stylesheet'  href='resources/font/FontAwesome/css/all.css' type='text/css' media='all' />


</head>
<body>
  <!--Header-->
  <header class="header default">
    <div class=" left-part">
      <a class="logo scroll" href="index">
        <h1 class="mb-0 uppercase">musiqua.</h1>
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

  <div class="sectionTitle paddingBottom">
    <span class="heading-t3"></span>
    <h2> Your personal information</h2>
    <span class="heading-b3"></span>
  </div><!-- end sectionTtile -->

  <div class="container_info">

    <!-- Name and surname -->
    <div class="row">
      <div class="margin-top">
        <form >
          <span class="pad-left">
            <label for="fname" class="pad-right-sm">First name</label>
            <input class="long" type="text" id="fname" name="fname">
          </span>
          <span class="pad-right edit">
            <button type="submit" class="btn" id="editable_info" disabled="disabled">
              <i class="fas fa-pen"></i>
            </button>
          </span>
          <span>
            <label for="lname" class="pad-right-sm">Last name</label>
            <input class="long" type="text" id="lname" name="lname">
          </span>
          <span class="edit">
            <button type="submit" class="btn" id="editable_info" disabled="disabled">
              <i class="fas fa-pen"></i>
            </button>
          </span>
        </form>
      </div>
    </div>

    <!-- Birthdate -->
    <div class="row">
      <div class="margin-top">
        <form action="">
          <span class="pad-left">
            <label for="fname" class="pad-right-sm">Birthdate</label>
            <input class="pad-right-sm short" type="text" id="day" name="day">
            <input class="pad-right-sm short" type="text" id="month" name="month">
            <input class="short" type="text" id="year" name="year">
          </span>
          <span class="edit">
            <button type="submit" class="btn" id="editable_info" disabled="disabled">
              <i class="fas fa-pen"></i>
            </button>
          </span>
        </form>
      </div>
    </div>

    <!-- Divider -->
    <div class="heading-b3"></div>

    <!-- Address -->
    <div class="row">
      <div class="margin-top">
        <form action="">
          <!-- country -->
          <span class="pad-left">
            <label for="fname" class="pad-right-sm">Country</label>
            <input class="pad-right-sm medium" type="text" id="country" name="country">
          </span>
          <span class="edit">
            <button type="submit" class="btn" id="editable_info" disabled="disabled">
              <i class="fas fa-pen"></i>
            </button>
          </span>


          <!-- city -->
          <span class="pad-left">
            <label for="fname" class="pad-right-sm">City</label>
            <input class="pad-right-sm medium" type="text" id="city" name="city">
          </span>
          <span class="edit">
            <button type="submit" class="btn" id="editable_info" disabled="disabled">
              <i class="fas fa-pen"></i>
            </button>
          </span>


          <!-- street name -->
          <span class="pad-left">
            <label for="fname" class="pad-right-sm">Street</label>
            <input class="pad-right-sm medium" type="text" id="street" name="street">
          </span>
          <span class="edit">
            <button type="submit" class="btn" id="editable_info" disabled="disabled">
              <i class="fas fa-pen"></i>
            </button>
          </span>


          <!-- street number -->
          <div class="new line" style="padding-top: 15px;">
            <span class="pad-left">
              <label for="fname" class="pad-right-sm">Number</label>
              <input class="pad-right-sm short" type="text" id="number_house" name="number_house">
            </span>
            <span class="edit">
              <button type="submit" class="btn" id="editable_info" disabled="disabled">
                <i class="fas fa-pen"></i>
              </button>
            </span>


            <!-- CAP -->
            <span class="pad-left pad-top">
              <label for="fname" class="pad-right-sm">Postcode</label>
              <input class="pad-right-sm short" type="text" id="CAP" name="CAP">
            </span>
            <span class="edit">
              <button type="submit" class="btn" id="editable_info" disabled="disabled">
                <i class="fas fa-pen"></i>
              </button>
            </span>
          </div>
        </form>
      </div>
    </div>

    <!-- Divider -->
    <div class="heading-b3"></div>

    <!-- Your most liked music genre -->
    <div class="row no-pad-bottom">
      <div class="margin-top">
        <form action="">
          <span class="pad-left">
            Your favourite music genres:
          </span>
          <span class="edit">
            <button type="submit" class="btn" id="editable_info" disabled="disabled">
              <i class="fas fa-pen"></i>
            </button>
          </span>
        </form>
      </div>
    </div>
    <!-- only radio checkboxex -->
    <div class="row no-pad-top">
      <span class="pad-left">
        <input class="check" type="radio" checked="checked" id="rock" name="pop" value="pop">
        <label for="pop"> pop </label>
        <span class="checkmark"></span>
      </span>
      <span class="pad-left">
        <input class="check" type="radio" checked="checked" id="house" name="house" value="house">
        <label for="house"> house </label>
      </span>
      <span class="pad-left">
        <input class="check" type="radio" checked="checked" id="jazz" name="jazz" value="jazz">
        <label for="jazz"> jazz </label>
      </span>
      <span class="pad-left">
        <input class="check" type="radio" checked="checked" id="classical" name="classical" value="classical">
        <label for="classical"> classical </label>
      </span>
      <span class="pad-left">
        <input class="check" type="radio" checked="checked" id="metal" name="metal" value="metal">
        <label for="metal"> metal </label>
      </span>
    </div>

    <!-- Divider -->
    <div class="heading-b3"></div>

    <!-- Email e psw -->
    <div class="row">
      <span class="pad-left pad-top">
        <label for="email" class="pad-right-sm">Email</label>
        <input class="pad-right-sm long" type="text" id="email" name="email">
      </span>
      <span class="pad-left pad-top email_confirm">
        <label for="email_confirm" class="pad-right-sm">Confirm your email</label>
        <input class="pad-right-sm long" type="text" id="email_confirm" name="email_confirm">
      </span>
      <span class="edit">
        <button type="submit" class="btn" id="editable_info" disabled="disabled">
          <i class="fas fa-pen"></i>
        </button>
      </span>
    </div>

    <div class="row">
      <span class="pad-left no-pad-top" >
        <a> Change password</a>
      </span>
    </div>

  </div>
</body>
</html>
