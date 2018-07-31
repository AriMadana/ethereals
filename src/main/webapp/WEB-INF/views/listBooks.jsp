<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>List of Books</title>

<style>
	
	#insertBtn {
		width: 150px;		
		text-decoration: none;
		color: yellow;
		background: navy;
		border-radius: 5px;
		display: block;
		padding: 5px;
		text-align: center;		
	}	
	
	.btn {
		text-decoration: none;
		color: yellow;
		background: navy;
		border-radius: 5px;
		display: block;
		padding: 5px;
		text-align: center;
	}
	
	td{
		padding:5px;
	}
</style>
</head>

<body>
	<div style="width: 95%; margin: 0 auto;">
	<br>		
		<center><h1>List of Books</h1></center>
		
		<a href="insertBook" id="insertBtn">Add Book</a>				
				
		<table border="1">			
				<tr>
					<th width="4%">No</th>
					<th width="18%">Name</th>
					<th width="8%">Code</th>
					<th width="8%">Price</th>
					<th width="17%">Authors</th>
					<th width="8%">ISBN</th>
					<th width="17%">Publisher</th>
					<th width="8%">PublishedOn</th>
					<th width="6%"></th>
					<th width="6%"></th>
				</tr>			
			
				<c:forEach items="${bookList}" var="book" varStatus="loopCounter">
					<tr>
						<td align="center">
							<c:out value="${loopCounter.count}" />
						</td>
						<td>
							<c:out value="${book.name}" />
						</td>
						<td align="center">
							<c:out value="${book.code}" />
						</td>
						<td align="center">
							<c:out value="${book.price}" />
						</td>
						<td>
							<c:out value="${book.authors}" />
						</td>
						<td align="center">
							<c:out value="${book.isbn}" />
						</td>
						<td>
							<c:out value="${book.publisher}" />
						</td>
						<td align="center">
							<c:out value="${book.publishedOn}" />
						</td>
						
						<td>
							<a href="updateBook/${book.id}" class="btn">Edit</a>
						</td>							
						<td>
							<a href="delete/${book.id}" class="btn">Delete</a>
						</td>
					</tr>
				</c:forEach>			
		</table>			

	</div>
	</body>
</html>