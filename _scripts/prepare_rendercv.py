"""Convert the website CV into RenderCV input without changing website data."""

import argparse
from copy import deepcopy
from pathlib import Path

import yaml


def prepare_cv(document):
    source = deepcopy(document["cv"])
    cv = {
        key: source[key]
        for key in ("name", "location", "email", "phone", "website", "social_networks", "custom_connections")
        if source.get(key)
    }
    if source.get("headline") or source.get("label"):
        cv["headline"] = source.get("headline") or source["label"]
    if source.get("photo") or source.get("image"):
        cv["photo"] = source.get("photo") or source["image"]

    sections = {}
    if source.get("summary"):
        sections["Professional Summary"] = [source["summary"]]
    sections.update(source.get("sections", {}))
    for entry in sections.get("Education", []):
        if "studyType" in entry:
            entry.setdefault("degree", entry.pop("studyType"))
    # Awards use website-specific fields; render them as normal CV entries.
    awards = []
    for entry in sections.get("Awards", []):
        award = {"name": entry["title"]}
        for key in ("date", "location", "highlights"):
            if entry.get(key):
                award[key] = entry[key]
        if entry.get("awarder"):
            award["summary"] = entry["awarder"]
        if entry.get("summary"):
            award.setdefault("highlights", []).append(entry["summary"])
        awards.append(award)
    if "Awards" in sections:
        sections["Awards"] = awards
    cv["sections"] = sections
    return {"cv": cv}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument("destination", type=Path)
    args = parser.parse_args()
    document = yaml.safe_load(args.source.read_text())
    args.destination.write_text(yaml.safe_dump(prepare_cv(document), allow_unicode=True, sort_keys=False))


if __name__ == "__main__":
    main()
