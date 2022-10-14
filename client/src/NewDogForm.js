import { useState } from "react";

function NewDogForm({ onAddDog }) {
const [breed, setBreed] = useState("");
const [image, setImage] = useState("");
const [price, setPrice] = useState("");

function handleSubmit(e) {
e.preventDefault();
fetch("/dogs", {
method: "POST",
headers: {
"Content-Type": "application/json",
},
body: JSON.stringify({
breed: breed,
image: image,
price: price,
}),
})
.then((r) => r.json())
.then((newDog) => onAddDog(newDog));
}

return (
<div className="new-dog-form">
<h2>New Dog</h2>
<form onSubmit={handleSubmit}>
<input
type="text"
name="breed"
placeholder="Dog Breed"
value={breed}
onChange={(e) => setBreed(e.target.value)}
/>
<input
type="text"
name="image"
placeholder="Image URL"
value={image}
onChange={(e) => setImage(e.target.value)}
/>
<input
type="number"
name="price"
step="0.01"
placeholder="Price"
value={price}
onChange={(e) => setPrice(parseFloat(e.target.value))}
/>
<button type="submit">Add Dog</button>
</form>
</div>
);
}



export default NewDogForm;



