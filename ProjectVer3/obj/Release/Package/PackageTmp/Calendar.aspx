<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calendar.aspx.cs" Inherits="ProjectVer3.Calendar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
 <div class="col-sm-4">
  <div class="well">
      <div class="panel-heading"><label>Your Trip</label></div>

       <div  ID="BodyContent" class="panel panel-body" >
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
                       <input type="text" id="datepicker" size="30" placeholder="Please select a date...">
           <div id="secondCalendar" style="display:none">
                 <input type="text" id="datepicker1" size="30" placeholder="Please select a return date">
           </div>
               </div>

      </div>						     
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


  }
  </script>

   

 
    

</asp:Content>
