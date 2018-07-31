<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<style>
	#btn {
		width: 100px;
		height: 40px;
		text-decoration: none;
		color: yellow;
		background: navy;
		border-radius: 5px;
		display: block;
		padding: 5px;
		text-align: center;
	}
</style>
</head>

<body>
	<br>	
	<h1 style="margin-left:2%;">Book Information</h1>
	
	<fieldset style="width:400px; margin-left:2%;">
	<legend>Edit Book Info</legend>

	<form method="post" action="../save">

		<table align="center">		
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" placeholder="Book Name" value="${book.name}"/></td>
			</tr>
		
			<tr>
				<td>Code</td>
				<td><input type="text" name="code" placeholder="Code" maxlength="15" value="${book.code}" /></td>
			</tr>
		
			<tr>
				<td>Price</td>
				<td><input type="text" name="price" placeholder="Price" maxlength="10" value="${book.price}" /></td>
			</tr>
		
			<tr>
				<td>Author(s)</td>
				<td><input type="text" name="authors" placeholder="Authors" value="${book.authors}" /></td>
			</tr>
		
			<tr>
				<td>ISBN</td>
				<td><input type="text" name="isbn" placeholder="ISBN" value="${book.isbn}" /></td>
			</tr>
		
			<tr>
				<td>Publisher</td>
				<td><input type="text" name="publisher" placeholder="Publisher" value="${book.publisher}" /></td>
			</tr>
		
			<tr>
				<td>Published On</td>
				<td><input type="text" name="publishedOn" placeholder="YYYY-MM-DD" value="${book.publishedOn}" /></td>
			</tr>
		
			<tr>
				<td colspan="2">
					<input type="submit" value="Edit Book" id="btn" />
				</td>
			</tr>
		</table>
	
		<input type="hidden" name="id" value="${book.id}" />
	
	</form>
	</fieldset>
	
	<br>
	<a href="/OnlineBStore/listBooks" style="margin-left:2%;">List of Books</a>	

</body>
</html>