<?php 
require_once './dbConnect.php';
?>
<!DOCTYPE html>
<!--
Mi az AJAX?

AJAX = Asynchronous JavaScript And XML.
Az AJAX nem programozási nyelv.
Az AJAX csak a következők kombinációját használja:
- Böngészőbe épített XMLHttpRequest objektum (adatok kéréséhez egy webszervertől)
- JavaScript és HTML DOM (az adatok megjelenítéséhez vagy használatához)

Bővebben: https://www.w3schools.com/js/js_ajax_intro.asp
-->
<html lang="hu">
    <head>
        <meta charset="UTF-8">
        <title>Ajax példa</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <link rel="icon" type="image/png" href="favicon.png" />
        <link rel="stylesheet" href="AjaxForm.css" type="text/css" />
    </head>
    <body>
        <div class="container col-10">
            <h1>Tagdíjak</h1>
            <form>
                <div class="form-group row col-6">
                  <label for="tagok">Tag neve:</label>
                  <select class="form-control" id="tagok" onchange="showBefizetesek()">
                      <!--<option value="">1</option>-->
                    <?php 
                    $sql = "SELECT `azon`,`nev` FROM `ugyfel`";
                    $result = $conn->query($sql);

                    if ($result->num_rows > 0) {
                        // output data of each row
                        while($row = $result->fetch_assoc()) {
                            echo '<option value="'.$row["azon"].'">'.$row["nev"].'</option>';
                        }
                    } else {
                        echo "0 results";
                    }
                    ?>
                  </select>
                </div>
            </form>
            <div id="befizetesek">

            </div>
        </div>
        <script>
            function showBefizetesek(){
                let x = document.getElementById("tagok").value;
                const xhttp = new XMLHttpRequest();
                xhttp.onload = function() {
                    document.getElementById("befizetesek").innerHTML = this.responseText;
                };
                xhttp.open("GET", "getBefizetes.php?tagid=" + x);
                xhttp.send();
//                document.getElementById("befizetesek").innerHTML = "kiválasztva: " + x;
            }
        </script>
 <!--        <script>
            $(document).ready(function(){
                // code to get all records from table via select box
                $("#tagnev").change(function() {
                    var id = $(this).find(":selected").val();
                    var dataString = 'tagid='+ id;
                    $.ajax({
                        url: 'getBefizetes.php',
                        dataType: "html",
                        data: dataString,
                        cache: false,
                        success: function(employeeData) {
                                $("#show_befizetes").html()
                                $("#no_records").hide();
                                $("#emp_name").text(employeeData.employee_name);
                                $("#emp_age").text(employeeData.employee_age);
                                $("#emp_salary").text(employeeData.employee_salary);
                                $("#records").show();
                            } else {
                                $("#heading").hide();
                                $("#records").hide();
                                $("#no_records").show();
                            }
                        }
                    });
                })
            });
        </script>-->
    </body>
</html>
