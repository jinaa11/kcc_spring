<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product List</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-color: #f8f9fa;
}

.container {
	margin-top: 50px;
}

.card {
	margin-bottom: 20px;
}

.card-title {
	font-size: 1.5rem;
}
</style>
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>
<body>
	<div class="container">
		<h1 class="my-4">Product List</h1>
		<div class="row">
			<!-- 상품 1 -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Shrimp crackers</h5>
						<p class="card-text">Price: 1000 won</p>
						<form class="add-to-cart-form" data-product-id="1"
							data-product-name="새우깡" data-product-price="1000">
							<input type="hidden" id="userId" name="userId" value="${userId}">
							<input type="hidden" name="productId" value="1"> 
							<input type="hidden" name="productName" value="Shrimp crackers"> 
							<input type="hidden" name="price" value="1000">
							<div class="form-group">
								<label for="quantity1">Quantity:</label> <input type="number"
									id="quantity1" name="quantity" class="form-control" value="1"
									min="1">
							</div>
							<button type="submit" class="btn btn-primary">Add Cart</button>
						</form>
					</div>
				</div>
			</div>
			<!-- 상품 2 -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Home Run Ball</h5>
						<p class="card-text">Price: 2000 won</p>
						<form class="add-to-cart-form" data-product-id="2"
							data-product-name="홈런볼" data-product-price="2000">
							<input type="hidden" name="userId" value="${userId}"> <input
								type="hidden" name="productId" value="2"> <input
								type="hidden" name="productName" value="Home Run Ball"> <input
								type="hidden" name="price" value="2000">
							<div class="form-group">
								<label for="quantity2">Quantity:</label> <input type="number"
									id="quantity2" name="quantity" class="form-control" value="1"
									min="1">
							</div>
							<button type="submit" class="btn btn-primary">Add Cart</button>
						</form>
					</div>
				</div>
			</div>
			<!-- 상품 3 -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Honey twisted bread stick</h5>
						<p class="card-text">Price: 1500 won</p>
						<form class="add-to-cart-form" data-product-id="3"
							data-product-name="꿀꽈배기" data-product-price="1500">
							<input type="hidden" name="userId" value="${userId}"> <input
								type="hidden" name="productId" value="3"> <input
								type="hidden" name="productName" value="Honey twisted bread stick"> <input
								type="hidden" name="price" value="1500">
							<div class="form-group">
								<label for="quantity3">Quantity:</label> <input type="number"
									id="quantity3" name="quantity" class="form-control" value="1"
									min="1">
							</div>
							<button type="submit" class="btn btn-primary">Add Cart</button>
						</form>
					</div>
				</div>
			</div>
			<!-- 상품 4 -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Banana Kick</h5>
						<p class="card-text">Price: 2500 won</p>
						<form class="add-to-cart-form" data-product-id="4"
							data-product-name="바나나킥" data-product-price="2500">
							<input type="hidden" name="userId" value="${userId}"> <input
								type="hidden" name="productId" value="4"> <input
								type="hidden" name="productName" value="Banana Kick"> <input
								type="hidden" name="price" value="2500">
							<div class="form-group">
								<label for="quantity4">Quantity:</label> <input type="number"
									id="quantity4" name="quantity" class="form-control" value="1"
									min="1">
							</div>
							<button type="submit" class="btn btn-primary">Add Cart</button>
						</form>
					</div>
				</div>
			</div>
			<!-- 상품 5 -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Kancho</h5>
						<p class="card-text">Price: 800 won</p>
						<form class="add-to-cart-form" data-product-id="5"
							data-product-name="칸쵸" data-product-price="800">
							<input type="hidden" name="userId" value="${userId}"> <input
								type="hidden" name="productId" value="5"> <input
								type="hidden" name="productName" value="Kancho"> <input
								type="hidden" name="price" value="800">
							<div class="form-group">
								<label for="quantity5">Quantity:</label> <input type="number"
									id="quantity5" name="quantity" class="form-control" value="1"
									min="1">
							</div>
							<button type="submit" class="btn btn-primary">Add Cart</button>
						</form>
					</div>
				</div>
			</div>
			<!-- 상품 6 -->
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">Onion Ring</h5>
						<p class="card-text">Price: 1200 won</p>
						<form class="add-to-cart-form" data-product-id="6"
							data-product-name="양파링" data-product-price="1200">
							<input type="hidden" name="userId" value="${userId}"> <input
								type="hidden" name="productId" value="6"> <input
								type="hidden" name="productName" value="Onion Ring"> <input
								type="hidden" name="price" value="1200">
							<div class="form-group">
								<label for="quantity6">Quantity:</label> <input type="number"
									id="quantity6" name="quantity" class="form-control" value="1"
									min="1">
							</div>
							<button type="submit" class="btn btn-primary">Add Cart</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<button id="viewCart" class="btn btn-secondary mt-4">View Cart</button>
	</div>

	<!-- Bootstrap JS and dependencies -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {
			 var userId = $('#userId').val();
			 console.log('userId:', userId);

			// 모든 폼의 userId 값을 동적으로 설정
			$('.add-to-cart-form input[name="userId"]').val(userId);

			$('.add-to-cart-form').on('submit', function(event) {
				event.preventDefault();

				var form = $(this);
				var data = form.serialize();

				console.log('Serialized form data:', data);  // 데이터 확인

				$.ajax({
					type : 'POST',
					url : '/cart/addCart',
					data : data,
					success : function(response) {
						alert('Your item has been added to your shopping cart.');
					},
					error : function(xhr, status, error) {
						alert('Shopping cart addition failed.');
					}
				});
			});

			$('#viewCart').on('click', function() {
				window.location.href = '/cart/myCart?userId=' + userId;
			});
		});
	</script>

</body>
</html>
