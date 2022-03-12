{
  description = ''Proton template engine for xml and xhtml files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."proton-master".url = "path:./master";
  inputs."proton-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proton-v0_2_2".url = "path:./v0_2_2";
  inputs."proton-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proton-v0_2_3".url = "path:./v0_2_3";
  inputs."proton-v0_2_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proton-v0_2_4".url = "path:./v0_2_4";
  inputs."proton-v0_2_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proton-v0_2_5".url = "path:./v0_2_5";
  inputs."proton-v0_2_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."proton-v0_2_6".url = "path:./v0_2_6";
  inputs."proton-v0_2_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."proton-v0_2_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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