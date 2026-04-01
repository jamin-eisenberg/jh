import csv
import datetime
import itertools
import os

with open('icons_spreadsheet.csv') as icons_spreadsheet:
    icons_spreadsheet_reader = csv.reader(icons_spreadsheet)

    headers = list(next(icons_spreadsheet_reader))
    rows = []

    for row in icons_spreadsheet_reader:
        row_dict = {}
        for i, col in enumerate(row):
            row_dict[headers[i]] = col
        rows.append(row_dict)

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


all_image_filenames = os.listdir("images")


def icon_to_elm(icon):
    elm = {}

    elm["title"] = f"\"{icon["Title"].replace("\"", "\\\"")}\""

    description_texts = [f"Story.text \"{description_text.replace("\"", "\\\"")}\"" for description_text in icon["Long Description"].split("\n\n")]

    image_names = [image_name for image_name in icon["Image names"].split(",") if image_name != ""]
    image_filenames = []
    for image_name in image_names:
        matching_image_names = [potential_name for potential_name in all_image_filenames if potential_name.startswith(image_name + ".")]
        if len(matching_image_names) != 1:
            raise ValueError(f"Expected one matching image name for {image_name}. Found {matching_image_names}") 
        image_filenames.append(matching_image_names[0])

    description_images = [f"Story.image \"{image_filename}\"" for image_filename in image_filenames]
    elm["description"] = f"[{", ".join(description_texts + description_images)}]"

    elm["date"] = f"Date.fromPosix Time.utc (Time.millisToPosix {int(datetime.datetime.strptime(icon["Date"], "%m/%d/%Y").timestamp() * 1000)})"
    elm["dateIsApproximate"] = "True" if "x" in icon["Estimated"].lower() else "False"
    elm["iconImageName"] = f"\"{icon_image_name(icon)}.jpg\""

    coords = areas[icon["Title"]]
    min_x, min_y, max_x, max_y = aabb(coords)
    elm["aabb"] = "{" + f" x = {min_x}, y = {min_y}, width = {max_x - min_x}, height = {max_y - min_y}" + "}"

    elm["hitbox"] = "[" + ", ".join(["{" + f" x = {coord[0]}, y = {coord[1]} " + "}" for coord in coords]) + "]"

    return "{" + "\n, ".join([f"{key} = {value}" for key, value in elm.items()]) + "}"


elm_icons = [icon_to_elm(icon) for icon in rows]

with open('src/StoriesData.elm', 'w') as elm:
    elm.write(f"""module StoriesData exposing (initialStories)

import Array
import Date
import Stories exposing (Stories(..))
import Story
import Time


initialStories : Stories
initialStories =
    Stories
        (Array.fromList [{",".join(elm_icons)}])
""")
