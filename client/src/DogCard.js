import React from "react";

function DogCard({ dog, onDeleteDog, onUpdateDog }) {
    const { id, breed, image, likes } = dog;
    
    function handleDeleteClick() {
    fetch(`/dogs/${id}`, {
    method: "DELETE",
    }).then((r) => {
    if (r.ok) {
    onDeleteDog(dog);
    }
    });
    }
    
    function handleLikeClick() {
    const updateObj = {
    likes: dog.likes + 1,
    };
    
    fetch(`/dogs/${id}`, {
    method: "PATCH",
    headers: {
    "Content-Type": "application/json",
    },
    body: JSON.stringify(updateObj),
    })
    .then((r) => r.json())
    .then((updatedToy) => onUpdateDog(updatedToy));
    }
    
    return (
    <div className="card">
    <img src={image} alt={breed} className="dog-lover" />
    <h2>{breed}</h2>
    <p>{likes}</p>
    <div>  <button className="like-btn" onClick={handleLikeClick}>Like {"<3"}</button></div>
    <button className="del-btn" onClick={handleDeleteClick}> Delete </button>
    </div>
    );
    }
    
    export default DogCard;
    