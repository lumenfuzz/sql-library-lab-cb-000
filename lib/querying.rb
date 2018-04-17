def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY Length(motto) DESC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, Subgenres.name FROM authors INNER JOIN subgenres ON Subgenres.id = Authors.id"
end

def select_series_title_with_most_human_characters
  "SELECT Series.title FROM series INNER JOIN characters ON Characters.series_id = Series.id GROUP BY Characters.series_id ORDER BY COUNT(Characters.species) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT Characters.name, COUNT(Character_books.character_id) FROM characters INNER JOIN character_books ON Characters.id = Character_books.character_id GROUP BY character_books.character_id ORDER BY COUNT(Character_books.character_id) DESC, Characters.name"
end
