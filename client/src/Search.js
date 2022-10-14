function Search({ searchTerm, onSearchChange }) {
    return (
      <div className="searchbar">
        <label htmlFor="search">Search:</label>
        <input
          type="text"
          id="SEARCH"
          placeholder="Type a breed to search..."
          value={searchTerm}
          onChange={(e) => onSearchChange(e.target.value)}
        />
      </div>
    );
  }
  
  export default Search;
  