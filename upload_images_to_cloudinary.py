import cloudinary
import cloudinary.uploader
from cloudinary.api import NotFound 
from dotenv import load_dotenv
import os

# Load environment variables from .env file
load_dotenv()

# Configuration using environment variables
cloudinary.config(
    cloud_name=os.getenv('CLOUDINARY_CLOUD_NAME'),
    api_key=os.getenv('CLOUDINARY_API_KEY'),
    api_secret=os.getenv('CLOUDINARY_API_SECRET'),
    secure=True # Ensures HTTPS delivery URLs
)

def upload_image(file_path_or_url, public_id_name=None):
    """
    Uploads an image to Cloudinary.

    :param file_path_or_url: The local file path or remote URL of the image.
    :param public_id_name: Optional public ID for the uploaded image.
    :return: The upload response dictionary.
    """
    print(f"Trying to upload {public_id_name}")
    not_found = False

    try:
        cloudinary.api.resource(
            public_id_name, 
            resource_type='image', 
            type='upload'
        )
    except NotFound:
        not_found = True

    if not_found:
        try:
            # Call the upload method
            response = cloudinary.uploader.upload(
                file_path_or_url,
                public_id=public_id_name
            )
            print(f"Upload successful! Secure URL: {response['secure_url']}")
            return response
        except Exception as e:
            print(f"Upload failed: {e}")
            return None
    else:
        print(f"Skipping upload of {public_id_name}")


if __name__ == '__main__':
    for entry in os.listdir('images'):
        upload_image(f'images/{entry}', public_id_name=''.join(entry.split('.')[:-1]))


