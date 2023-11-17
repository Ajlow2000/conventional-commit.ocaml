open Cmdliner

let conventional_commit () = print_endline "Building commit (not implemented yet)"
let conventional_commit_t = Term.(const conventional_commit $ const ())

let cmd =
  let doc = "A tool for generating Conventional Commits" in
  let man =
    [ `S Manpage.s_bugs
    ; `P
        "Submit bug reports as github issues: \
         https://github.com/Ajlow2000/conventional-commit.ocaml"
    ]
  in
  let info = Cmd.info "Conventional Commit" ~version:"Conventional Commit - v0.0.1" ~doc ~man in
  Cmd.v info conventional_commit_t
;;

let main () = exit (Cmd.eval cmd)
let () = main ()
