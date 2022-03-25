{
  description = ''Generates a GitHub documentation website for Nimrod projects.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gh_nimrod_doc_pages-v0_2_2.flake = false;
  inputs.src-gh_nimrod_doc_pages-v0_2_2.ref   = "refs/tags/v0.2.2";
  inputs.src-gh_nimrod_doc_pages-v0_2_2.owner = "Araq";
  inputs.src-gh_nimrod_doc_pages-v0_2_2.repo  = "gh_nimrod_doc_pages";
  inputs.src-gh_nimrod_doc_pages-v0_2_2.type  = "github";
  
  inputs."argument_parser".owner = "nim-nix-pkgs";
  inputs."argument_parser".ref   = "master";
  inputs."argument_parser".repo  = "argument_parser";
  inputs."argument_parser".dir   = "master";
  inputs."argument_parser".type  = "github";
  inputs."argument_parser".inputs.nixpkgs.follows = "nixpkgs";
  inputs."argument_parser".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."midnight_dynamite".owner = "nim-nix-pkgs";
  inputs."midnight_dynamite".ref   = "master";
  inputs."midnight_dynamite".repo  = "midnight_dynamite";
  inputs."midnight_dynamite".dir   = "v1_0_0";
  inputs."midnight_dynamite".type  = "github";
  inputs."midnight_dynamite".inputs.nixpkgs.follows = "nixpkgs";
  inputs."midnight_dynamite".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gh_nimrod_doc_pages-v0_2_2"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-gh_nimrod_doc_pages-v0_2_2";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}