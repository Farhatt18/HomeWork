import { useParams, Navigate } from "react-router-dom";
import ArtImageTile from "../ArtImageTile";

const GalleryView = ({ galleries }) => {
  const { galleryId } = useParams();

  const selectedGallery = galleries.find(
    (gallery) => gallery.id === Number(galleryId)
  );

  console.log(selectedGallery);
  if (!selectedGallery) return <Navigate to="/" replace />;

  return (
    <>
      <h2>{selectedGallery.name}</h2>
      <div className="art-nav">
        {selectedGallery.objects.map((art) => (
          <ArtImageTile art={art} key={art.id} />
        ))}
      </div>
    </>
  );
};

export default GalleryView;
