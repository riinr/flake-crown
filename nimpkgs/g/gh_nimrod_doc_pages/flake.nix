{
  description = ''Generates a GitHub documentation website for Nim projects.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gh_nimrod_doc_pages-master".dir   = "master";
  inputs."gh_nimrod_doc_pages-master".owner = "nim-nix-pkgs";
  inputs."gh_nimrod_doc_pages-master".ref   = "master";
  inputs."gh_nimrod_doc_pages-master".repo  = "gh_nimrod_doc_pages";
  inputs."gh_nimrod_doc_pages-master".type  = "github";
  inputs."gh_nimrod_doc_pages-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gh_nimrod_doc_pages-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gh_nimrod_doc_pages-v0_2_0".dir   = "v0_2_0";
  inputs."gh_nimrod_doc_pages-v0_2_0".owner = "nim-nix-pkgs";
  inputs."gh_nimrod_doc_pages-v0_2_0".ref   = "master";
  inputs."gh_nimrod_doc_pages-v0_2_0".repo  = "gh_nimrod_doc_pages";
  inputs."gh_nimrod_doc_pages-v0_2_0".type  = "github";
  inputs."gh_nimrod_doc_pages-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gh_nimrod_doc_pages-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gh_nimrod_doc_pages-v0_2_2".dir   = "v0_2_2";
  inputs."gh_nimrod_doc_pages-v0_2_2".owner = "nim-nix-pkgs";
  inputs."gh_nimrod_doc_pages-v0_2_2".ref   = "master";
  inputs."gh_nimrod_doc_pages-v0_2_2".repo  = "gh_nimrod_doc_pages";
  inputs."gh_nimrod_doc_pages-v0_2_2".type  = "github";
  inputs."gh_nimrod_doc_pages-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gh_nimrod_doc_pages-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gh_nimrod_doc_pages-v0_2_4".dir   = "v0_2_4";
  inputs."gh_nimrod_doc_pages-v0_2_4".owner = "nim-nix-pkgs";
  inputs."gh_nimrod_doc_pages-v0_2_4".ref   = "master";
  inputs."gh_nimrod_doc_pages-v0_2_4".repo  = "gh_nimrod_doc_pages";
  inputs."gh_nimrod_doc_pages-v0_2_4".type  = "github";
  inputs."gh_nimrod_doc_pages-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gh_nimrod_doc_pages-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}