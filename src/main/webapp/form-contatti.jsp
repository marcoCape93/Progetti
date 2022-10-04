<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="style-contatti.css" rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">

</head>
<body>
	<div class="container">
        

    
    <div class="row">
      <div class="col-lg-7 mx-auto">
      	
        <div class="card mt-2 mx-auto p-4 bg-light">
        	<div class="text-center" >
            		<h3>Contattaci</h3>
        		</div>
            <div class="card-body bg-light">
       			
            <div class = "container">
            	
            	<form id="contact-form" role="form">

            

            <div class="controls">

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                        	
                            <label for="form_name">Nome *</label>
                            <input id="form_name" type="text" name="name" class="form-control" placeholder="Inserisci nome" required="required" data-error="Questo dato è obbligatorio.">
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="form_lastname">Cognome *</label>
                            <input id="form_lastname" type="text" name="surname" class="form-control" placeholder="Inserisci cognome *" required="required" data-error="Questo dato è obbligatorio.">
                        </div>
                    </div>
                </div>
                <div class="row">
                	
                    <div class="col-md-6">
                    
                        <div class="form-group">
                            <label for="form_email">Email *</label>
                            <input id="form_email" type="email" name="email" class="form-control" placeholder="Inserisci email *" required="required" data-error="Email non valida.">
                            
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="form_need">Motivazione *</label>
                            <select id="form_need" name="need" class="form-control" required="required" data-error="Specifica una motivazione.">
                                <option value="" selected disabled>--Seleziona--</option>
                                <option >Informazioni errate</option>
                                <option >Problemi login/registrazione</option>
                                <option >Suggerimenti</option>
                                <option >Altro</option>
                            </select>
                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="form_message">Messaggio *</label>
                            <textarea id="form_message" name="message" class="form-control" placeholder="Scrivi qui il tuo messaggio." rows="4" required="required" data-error="Per favore, descrivi la motivazione.">
                            </textarea>
                            </div>

                        </div>


                    <div class="col-md-12">
                        <button type="submit" class="btn btn-success btn-send pt-2 btn-block">Invia</button>
                        <!--  <input type="submit" class="btn btn-success btn-send  pt-2 btn-block
                            " value="Invia" > -->
                    
                </div>
          
                </div>


        </div>
         </form>
        </div>
            </div>


    </div>
        <!-- /.8 -->

    </div>
    <!-- /.row-->

</div>
</div>

</body>
</html>