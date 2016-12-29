$(document).ready(function(){
	
	var $newImage = $("<img />").attr('src', selectImage());
	var $newTittle = $('#newTittle');
	var $newDirector = $('#newDirector');
	var $newRuntime = $('#newRuntime');	
	var $newUrl = null;
	
	
	var $movies = $('#movies');
	var $genero = $('#genero');
	
	$('#addMovie').hide();
	$('#tick').hide();
	
	$.ajax({
		type: 'GET', //Sirve para obtener datos de una fuente especifica.
		url:'/Movie/movies', //@RequestMapping de movieList.
		success: function(movies){
			$.each(movies, function(i, movie){
				$movies.append('<tr data-id="'+movie.id+'"><td class="tableMovie"><img WIDTH="100" HEIGHT="100" src="'+movie.urlimagen+'"/></td>     <td class="tableMovie"><span class="edit titulo">'+movie.titulo+'</span><input class="edit" value="'+movie.titulo+'"/>         <td class="tableMovie"> <span class="edit director">'+movie.director+'</span> <input class="edit director" value="'+movie.director+'"/> </td>                        <td class="tableMovie"><span class="edit duracion"> '+movie.duracion+'</span><input class="edit duracion" value="'+movie.duracion+'"/>                       <td><button data-id="'+movie.id+'"class="remove btn btn-danger glyphicon glyphicon-trash" aria-label="Left Align"></button></td><td><button data-id="'+movie.id+'" class="editMovie btn btn-primary glyphicon glyphicon-pencil">       </button><span class="botonSaveCancel"><button class="edit botonSave">Save</button><button class="edit cancelEdit">Cancel</button></td></span><tr>');                    
			});
			$('input.edit').hide();
			$('span.botonSaveCancel').hide();
		}
	});
	
	$movies.delegate('.remove','click', function(){
	
		var $tr = $(this).closest('tr');
		
		$.ajax({
			type: 'DELETE',
			url: '/Movie/delete/'+$(this).attr('data-id'),
			success: function(){
				$tr.fadeOut(300, function(){
					$tr.remove();
				})
				},
				error: function(){
					console.log("Error");
				}
			});
	});
	

	

		$('#buttonNewMovie').on('click', function(e){
			
			e.preventDefault();
			
			$('#addMovie').toggle();
			
			$('#myCarousel').on('dblclick', function(){
				
				$("#myCarousel").carousel("pause");
				var url = $(".item.active > img"). attr("src");
				$('#tick').fadeIn(1000);
				$newUrl = url;
				alert(url);
			});
			
			$('#saveMovie').on('click', function(){
				
				alert($newUrl);
				var movie = {
						
						URLimagen: $newUrl,
						titulo: $newTittle.val(),
						director: $newDirector.val(),
						duracion: $newRuntime.val(),
				};
				alert(movie);
				$('#addMovie').reset;
				var form ;
				
				
			$.ajax({

				type: 'POST',
				url:'/Movie/add/movies',	
				data: movie,
				success: function(newMovie){
					$movies.append('<tr data-id="'+newMovie.id+'"><td class="tableMovie table-success"><img WIDTH="100" HEIGHT="100" src="'+newMovie.urlimagen+'"/></td><td class="tableMovie">'+ newMovie.titulo+'<td class="tableMovie">'+newMovie.director+'<td class="tableMovie">'+newMovie.duracion+'<td><button data-id="'+newMovie.id+'"class="remove btn btn-danger glyphicon glyphicon-trash" color="red" aria-label="Left Align"></button></td><td><button data-id="'+newMovie.id+'" class="editMovie btn btn-primary glyphicon glyphicon-pencil"></button></td></tr>');
				
				},
				error: function(){
					alert("Error trying to save a movie");
				}
			});
		})	
	});
		// Boton de editar
		$movies.delegate('.editMovie', 'click', function(){
			
			var $tr = $(this).closest('tr');
			
			$tr.find("span.edit").hide();
			$tr.find('input.edit').show();
			$tr.find('span.botonSaveCancel').show();
			$('button.editMovie').prop("disabled",true);
			$('button.remove').prop("disabled", true);
		});
		
		
		//Boton de cancelar editar
		
		$movies.delegate('.cancelEdit', 'click', function(){
			var $tr = $(this).closest('tr');
			var $id = $tr.attr('data-id');
			
			$tr.find("span.edit").show();
			$tr.find('input.edit').hide();
			$tr.find('span.botonSaveCancel').hide();
			$('button.editMovie').prop("disabled",false);
			$('button.remove').prop("disabled", false);

			
		});
		
		$movies.delegate('.botonSave', 'click', function(){
			var $tr = $(this).closest('tr');
			var movie = {
					titulo: $tr.find('input.titulo').val(),
					director: $tr.find('input.director').val(),
					duracion: $tr.find('input.duracion').val(),
			};
			
			$tr.find("span.edit").show();
			$tr.find('input.edit').hide();
			$tr.find('span.botonSaveCancel').hide();
			$('button.editMovie').prop("disabled",false);
			$('button.remove').prop("disabled", false);
			
			$.ajax({

				type: 'PUT',
				url:'/Movie/update/'+$(this).attr('data-id'),	
				data: movie,
				success: function(updateMovie){
					$tr.find('span.titulo').html(updateMovie.titulo);
					$tr.find('span.director').html(updateMovie.director);
					$tr.find('span.duracion').html(updateMovie.duracion);
				
				},
				error: function(){
					alert("Error trying to update a movie");
				}
			});
			
		});
		
				
				
});//Cierre de function() principal.