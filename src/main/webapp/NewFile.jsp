<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>
            Bootstrap Validation example using validator.js
        </title>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"></link>
        <script src="https://code.jquery.com/jquery-1.12.4.js">
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js">
        </script>
</head>
    <body>
        <br/>
        <div class="container">



                <form data-toggle="validator" role="form">




                  <div class="form-group">
                   <div  for="inputEmail" class="control-label">Email</label></div>
                    <input type="email" class="form-control" id="inputEmail" placeholder="Email" required="true">
                    <div class="help-block with-errors"></div>
                  </div>


                  <div class="form-group">
                  <div class="col-lg-4"><h4 for="inputPassword" class="control-label">Password</h4></div>
                    
                    <div class="col-lg-8">
                      <input type="password" data-minlength="8" class="form-control" id="inputPassword" data-error="must enter minimum of 8 characters" placeholder="Password" required>
                      <div class="help-block with-errors"></div>
                    </div>
                  </div>


                  


                  <div class="form-group">
                      <button class="btn btn-primary" type="submit">
                          Submit
                      </button>
                  </div>
                </form>


              </div>
            </div>
        </div>
    </body>
</html>