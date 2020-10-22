function add_item_image(){
  const ImageList = document.getElementById('image-item-list');

  const createImageHTML = (blob) => {
   const imageElement = document.createElement('div');

   const blobImage = document.createElement('img');
   blobImage.setAttribute('src', blob);

   imageElement.appendChild(blobImage);
   ImageList.appendChild(imageElement);
 };

  document.getElementById('item-image').addEventListener('change', function(e){
    const imageContent = document.querySelector('img');
    if (imageContent){
      imageContent.remove();
    }
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);

    createImageHTML(blob);
  });
};


window.addEventListener("load", function(){ 
  var path = location.pathname;
  if (path == "/anks/new")
  { add_item_image() }
});