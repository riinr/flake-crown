{
  description = ''Generates a GitHub documentation website for Nim projects.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gh_nimrod_doc_pages-master.flake = false;
  inputs.src-gh_nimrod_doc_pages-master.ref   = "refs/heads/master";
  inputs.src-gh_nimrod_doc_pages-master.owner = "Araq";
  inputs.src-gh_nimrod_doc_pages-master.repo  = "gh_nimrod_doc_pages";
  inputs.src-gh_nimrod_doc_pages-master.type  = "github";
  
  inputs."midnight_dynamite".owner = "nim-nix-pkgs";
  inputs."midnight_dynamite".ref   = "master";
  inputs."midnight_dynamite".repo  = "midnight_dynamite";
  inputs."midnight_dynamite".dir   = "v1_0_0";
  inputs."midnight_dynamite".type  = "github";
  inputs."midnight_dynamite".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."argument_parser".owner = "nim-nix-pkgs";
  inputs."argument_parser".ref   = "master";
  inputs."argument_parser".repo  = "argument_parser";
  inputs."argument_parser".dir   = "master";
  inputs."argument_parser".type  = "github";
  inputs."argument_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argument_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."lazy_rest".owner = "nim-nix-pkgs";
  inputs."lazy_rest".ref   = "master";
  inputs."lazy_rest".repo  = "lazy_rest";
  inputs."lazy_rest".dir   = "v0_2_2";
  inputs."lazy_rest".type  = "github";
  inputs."lazy_rest".inputs.nixpkgs.follows = "nixpkgs";
  inputs."lazy_rest".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gh_nimrod_doc_pages-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-gh_nimrod_doc_pages-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}