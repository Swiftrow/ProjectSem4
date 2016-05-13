<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectVer3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="Content/style.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

       <div class="container">
	<div class="row">
		<div class="span6">
    	    <div class="well"> 
                <div id="myCarousel" class="carousel slide">
                 
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                 
                <!-- Carousel items -->
                <div class="carousel-inner">
                    
                <div class="item active">
                	<div class="row-fluid">
                	  <div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;"  /></a>
                         
                	  </div>
                	</div><!--/row-fluid-->
                </div><!--/item-->
                 
                <div class="item">
                	<div class="row-fluid">
                		<div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
                	</div><!--/row-fluid-->
                </div><!--/item-->
                 
                <div class="item">
                	<div class="row-fluid">
                		<div class="span3"><a href="#x" class="thumbnail"><img src="http://placehold.it/250x250" alt="Image" style="max-width:100%;" /></a></div>
                	</div><!--/row-fluid-->
                </div><!--/item-->
                 
                </div><!--/carousel-inner-->
                 
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">‹</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">›</a>
                </div><!--/myCarousel-->
                 
            </div><!--/well-->   
		</div>
	</div>
</div>
   

   
   

 <div class="col-sm-4">
  <div class="well">
      <div class="panel-heading"><label>Your Trip</label></div>

       <div  ID="BodyContent1" class="panel panel-body" >
							<div class="wrapper">
                                <label class="radio-inline"><input type="radio" name="optradio" id="OW" value="Click" onclick="switchVisible();" checked="checked">One Way</label>
                                <label class="radio-inline"><input type="radio" name="optradio"id="TW" value="Click" onclick="switchVisible();">Two Way</label>
<div class="row">
    <div class="col-1-1">
<div class="form-group">
  <label for="sel1">From:</label>
  <select class="form-control" id="sel1">
    <option>Galati</option>
    <option>Braila</option>
    <option>Ialomita</option>
    <option>Bucuresti</option>
  </select>
</div>
        </div>

    <div class="col-1-1">
        <div class="form-group">
  <label for="sel2">To:</label>
  <select class="form-control" id="sel2">
    <option>Galati</option>
    <option>Braila</option>
    <option>Ialomita</option>
    <option>Bucuresti</option>
  </select>
</div>
    </div>
</div>
                                
                                             <div class="form-group row">
                                                 <div class="col-xs-4">
  <label for="sel3">Adults:</label>
  <select class="form-control" id="sel3">
    <option>1</option>
    <option>2</option>
    <option>3</option>
    <option>4</option>
  </select>
                                                     </div>
                                                 <div class="col-xs-4">
                                                 <label for="sel4">Children:</label>
  <select class="form-control" id="sel4">
    <option>0</option>
    <option>1</option>
    <option>2</option>
    <option>3</option>
  </select>
</div>

</div>
 </div>
           <div class="col-xs-4">
                        <i class="glyphicon glyphicon-calendar"></i>
                       <input type="text" id="datepicker" size="30" placeholder="Please select a date..."  required="" /> 
           <div id="secondCalendar" style="display:none">
               <i class="glyphicon glyphicon-calendar"></i>
                 <input type="text" id="datepicker1" size="30" placeholder="Please select a return date">
           </div>
               </div>

      </div>	
      <button id="btnSearch" type="submit" name="singlebutton" class="btn btn-primary">Search <i class="glyphicon glyphicon-search"></i></button>					     
     </div>
      
    </div>
    

  
  <div class="col-sm-8">OUR OFFERS


</div>
   

  

    <script>
  $(function() {
    $( "#datepicker" ).datepicker();
    $( "#anim" ).change(function() {
      $( "#datepicker" ).datepicker( "drop", "showAnim", $( this ).val() );

    });
  });
  $(function () {
      $("#datepicker1").datepicker();
      $("#anim").change(function () {
          $("#datepicker1").datepicker("drop", "showAnim", $(this).val());

      });
  });
  function switchVisible() {
      if (document.getElementById('TW')) {

          if (document.getElementById('secondCalendar').style.display == 'none') {
              document.getElementById('secondCalendar').style.display = 'block';
              document.getElementById('Div2').style.display = 'none';
          }
          else {
              document.getElementById('secondCalendar').style.display = 'none';
              document.getElementById('Div2').style.display = 'block';
          }
      }

      $(document).ready(function () {
          $('#myCarousel').carousel({
              interval: 10000
          })
      });

  }

  </script>

   
      <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  

</asp:Content>
