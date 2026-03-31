
import itertools
from PIL import Image


areas = {}

with open('imagemap.html') as image_map:
    for raw_area in image_map.readlines():
        title_start = raw_area.index("title=") + len("title=\"")
        title_end = raw_area.index("\"", title_start)
        title = raw_area[title_start:title_end].replace("&quot;", "\"")

        coords_start = raw_area.index("coords=") + len("coords=\"")
        coords_end = raw_area.index("\"", coords_start)
        raw_coords = raw_area[coords_start:coords_end]

        coords = [(int(x), int(y)) for x, y in itertools.batched(raw_coords.split(","), 2)]

        areas[title] = coords


def aabb(coords):
    min_x = min(coords, key=lambda coord: coord[0])[0]
    min_y = min(coords, key=lambda coord: coord[1])[1]
    max_x = max(coords, key=lambda coord: coord[0])[0]
    max_y = max(coords, key=lambda coord: coord[1])[1]

    return (min_x, min_y, max_x, max_y)


def icon_image_name(icon):
    return f"icon-{icon["Title"].lower().replace("\"", "").replace(" ", "-")}"


img = Image.open("images/jh.jpg")

for title, area in areas.items():
    crop_area = aabb(area)

    cropped_img = img.crop(crop_area)

    cropped_img.save(f"images/{icon_image_name({"Title": title})}.jpg")
