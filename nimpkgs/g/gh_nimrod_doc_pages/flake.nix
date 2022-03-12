{
  description = ''Generates a GitHub documentation website for Nim projects.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."gh_nimrod_doc_pages-master".url = "path:./master";
  inputs."gh_nimrod_doc_pages-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gh_nimrod_doc_pages-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gh_nimrod_doc_pages-v0_2_0".url = "path:./v0_2_0";
  inputs."gh_nimrod_doc_pages-v0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gh_nimrod_doc_pages-v0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gh_nimrod_doc_pages-v0_2_2".url = "path:./v0_2_2";
  inputs."gh_nimrod_doc_pages-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gh_nimrod_doc_pages-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."gh_nimrod_doc_pages-v0_2_4".url = "path:./v0_2_4";
  inputs."gh_nimrod_doc_pages-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."gh_nimrod_doc_pages-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}