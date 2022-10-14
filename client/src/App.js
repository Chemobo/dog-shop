import Navbar from "./Navbar"; 
import DogPage from "./DogPage";
import DogCard from "./DogCard";
import NewDogForm from "./NewDogForm";
import Search from "./Search";
import DogList from "./DogList";

function App() {
  return (
    <div sclassName="App">
      <Navbar/>
      <div className="content">
        <DogPage />
        <DogCard/>
        <DogList/>
        <NewDogForm/>
        <Search/>
      </div>
    </div>
  );
}

export default App;
