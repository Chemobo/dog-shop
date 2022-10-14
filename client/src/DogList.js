import DogCard from "./DogCard";

function DogList({ dogs }) {
return (
<ul style className="cards">
{dogs.map((dog) => {
return <DogCard key={dog.id} dog={dog} />;
})}
</ul>
);
}

export default DogList;