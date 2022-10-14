import { useEffect, useState } from "react";
import NewDogForm from "./NewDogForm";
import DogList from "./DogList";
import Search from "./Search";

function DogPage() {
const [dogs, setdogs] = useState([]);
const [searchTerm, setSearchTerm] = useState("");

useEffect(() => {
fetch("/dogs")
.then((r) => r.json())
.then((dogsArray) => {
setdogs(dogsArray);
});
}, []);

function handleAddDog(newDog) {
const updatedDogsArray = [...dogs, newDog];
setdogs(updatedDogsArray);
}

const displayedDogs = dogs.filter((dog) => {
    return dog.breed.toLowerCase().includes(searchTerm.toLowerCase());
  });

return (
<main>
<NewDogForm onAddDog={handleAddDog} />
<Search searchTerm={searchTerm} onSearchChange={setSearchTerm} />
<DogList dogs={displayedDogs} />
</main>
);
}

export default DogPage;

