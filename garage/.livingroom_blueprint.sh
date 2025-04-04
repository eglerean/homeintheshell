#!/bin/bash

# Create livingroom
mkdir -p livingroom/cabinet1/shelf_classics
mkdir -p livingroom/cabinet1/shelf_modern_fiction
mkdir -p livingroom/cabinet1/shelf_poetry
mkdir -p livingroom/cabinet2/shelf_manuals
mkdir -p livingroom/cabinet2/shelf_computer_science
mkdir -p livingroom/cabinet2/shelf_art_and_manga

# Function to generate a book JSON file
generate_book() {
  local path=$1
  local filename=$2
  local title=$(echo "$filename" | sed 's/_/ /g' | perl -pe 's/\b(\w)/\u$1/g')
  local author=$3
  local year=$4
  local hidden=$5

  local file="$path/$filename.json"
  [ "$hidden" = true ] && file="$path/.$filename.json"

  cat > "$file" <<EOF
{
  "title": "$title",
  "author": "$author",
  "year": $year,
  "genre": "${path##*/}"
}
EOF
}

# --- Populate shelves ---

# Classics
generate_book livingroom/cabinet1/shelf_classics don_quixote Cervantes 1605 false
generate_book livingroom/cabinet1/shelf_classics pride_and_prejudice Austen 1813 false
generate_book livingroom/cabinet1/shelf_classics moby_dick Melville 1851 false
generate_book livingroom/cabinet1/shelf_classics ulysses Joyce 1922 false
generate_book livingroom/cabinet1/shelf_classics great_expectations Dickens 1861 false
generate_book livingroom/cabinet1/shelf_classics war_and_peace Tolstoy 1869 false
generate_book livingroom/cabinet1/shelf_classics les_miserables Hugo 1862 true
generate_book livingroom/cabinet1/shelf_classics madame_bovary Flaubert 1856 true
generate_book livingroom/cabinet1/shelf_classics the_odyssey Homer -700 false
generate_book livingroom/cabinet1/shelf_classics inferno Dante 1320 true

# Modern fiction
generate_book livingroom/cabinet1/shelf_modern_fiction the_road McCarthy 2006 false
generate_book livingroom/cabinet1/shelf_modern_fiction normal_people Rooney 2018 false
generate_book livingroom/cabinet1/shelf_modern_fiction cloud_atlas Mitchell 2004 false
generate_book livingroom/cabinet1/shelf_modern_fiction white_teeth Smith 2000 false
generate_book livingroom/cabinet1/shelf_modern_fiction the_night_circus Morgenstern 2011 false
generate_book livingroom/cabinet1/shelf_modern_fiction the_goldfinch Tartt 2013 true
generate_book livingroom/cabinet1/shelf_modern_fiction midnight_library Haig 2020 true
generate_book livingroom/cabinet1/shelf_modern_fiction the_book_thief Zusak 2005 false
generate_book livingroom/cabinet1/shelf_modern_fiction norwegian_wood Murakami 1987 false
generate_book livingroom/cabinet1/shelf_modern_fiction atonement McEwan 2001 false

# Poetry
generate_book livingroom/cabinet1/shelf_poetry leaves_of_grass Whitman 1855 false
generate_book livingroom/cabinet1/shelf_poetry the_waste_land Eliot 1922 false
generate_book livingroom/cabinet1/shelf_poetry divine_comedy Dante 1320 true
generate_book livingroom/cabinet1/shelf_poetry milk_and_honey Kaur 2014 false
generate_book livingroom/cabinet1/shelf_poetry sonnets Shakespeare 1609 false
generate_book livingroom/cabinet1/shelf_poetry birthday_letters Hughes 1998 false
generate_book livingroom/cabinet1/shelf_poetry citizen Rankine 2014 true
generate_book livingroom/cabinet1/shelf_poetry howl Ginsberg 1956 false
generate_book livingroom/cabinet1/shelf_poetry ariel Plath 1965 true
generate_book livingroom/cabinet1/shelf_poetry the_prophet Gibran 1923 false

# Manuals
generate_book livingroom/cabinet2/shelf_manuals linux_pocket_guide Shotts 2012 false
generate_book livingroom/cabinet2/shelf_manuals git_book Chacon 2014 false
generate_book livingroom/cabinet2/shelf_manuals make_book Oram 2005 false
generate_book livingroom/cabinet2/shelf_manuals cooking_basics Jamie_Oliver 2010 false
generate_book livingroom/cabinet2/shelf_manuals car_maintenance Haynes 2003 false
generate_book livingroom/cabinet2/shelf_manuals fix_your_bike Parker 2015 true
generate_book livingroom/cabinet2/shelf_manuals how_to_draw Scott_Robertson 2013 true
generate_book livingroom/cabinet2/shelf_manuals parenting_guide Siegel 2011 false
generate_book livingroom/cabinet2/shelf_manuals knitting_101 Taylor 2018 false
generate_book livingroom/cabinet2/shelf_manuals coffee_handbook Rao 2009 false

# Computer Science
generate_book livingroom/cabinet2/shelf_computer_science structure_interpret Abelson 1996 false
generate_book livingroom/cabinet2/shelf_computer_science code Charles_Petzold 2000 false
generate_book livingroom/cabinet2/shelf_computer_science algorithms_sedgewick Sedgewick 1983 false
generate_book livingroom/cabinet2/shelf_computer_science operating_systems Tanenbaum 2014 true
generate_book livingroom/cabinet2/shelf_computer_science cs50 Harvard 2020 false
generate_book livingroom/cabinet2/shelf_computer_science ai_modern_approach Russell 2021 false
generate_book livingroom/cabinet2/shelf_computer_science computer_networks Kurose 2012 false
generate_book livingroom/cabinet2/shelf_computer_science automata_theory Hopcroft 2006 true
generate_book livingroom/cabinet2/shelf_computer_science the_art_of_computer Knuth 1968 false
generate_book livingroom/cabinet2/shelf_computer_science design_patterns Gamma 1994 false

# Art, Comic, Manga
generate_book livingroom/cabinet2/shelf_art_and_manga understanding_comics McCloud 1993 false
generate_book livingroom/cabinet2/shelf_art_and_manga blankets Thompson 2003 false
generate_book livingroom/cabinet2/shelf_art_and_manga akira Otomo 1982 true
generate_book livingroom/cabinet2/shelf_art_and_manga persepolis Satrapi 2000 false
generate_book livingroom/cabinet2/shelf_art_and_manga naruto Kishimoto 1999 true
generate_book livingroom/cabinet2/shelf_art_and_manga manga_guide_to_physics Gonick 2007 false
generate_book livingroom/cabinet2/shelf_art_and_manga hokusai_artbook Various 2010 false
generate_book livingroom/cabinet2/shelf_art_and_manga comic_strip_classics Various 1985 true
generate_book livingroom/cabinet2/shelf_art_and_manga one_piece Oda 1997 false
generate_book livingroom/cabinet2/shelf_art_and_manga art_of_color Itten 1961 false

echo "📚 Livingroom setup complete! Explore with 'cd livingroom' and check out your shelves."

