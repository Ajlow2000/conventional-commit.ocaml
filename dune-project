(lang dune 3.11)

(name conventional_commit)

(generate_opam_files true)

(source
 (github Ajlow2000/conventional-commit.ocaml))

(authors "Alec Lowry")

(maintainers "Alec Lowry")

(license LICENSE)

(documentation https://url/to/documentation)

(package
 (name conventional_commit)
 (synopsis "A tool for generating Convetional Commits")
 (description "A tool based on
              https://www.conventionalcommits.org/en/v1.0.0/
              but with some extensions for my
              personal workflow")
 (depends ocaml dune)
 (tags
  (topics "to describe" your project)))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/dune-files.html#dune-project
