{
  description = ''Too awesome procs to be included in nimrod.os module'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."genieos-master".url = "path:./master";
  inputs."genieos-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genieos-v9_0_0-taeyeon".url = "path:./v9_0_0-taeyeon";
  inputs."genieos-v9_0_0-taeyeon".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-v9_0_0-taeyeon".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genieos-v9_0_1-jessica".url = "path:./v9_0_1-jessica";
  inputs."genieos-v9_0_1-jessica".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-v9_0_1-jessica".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genieos-v9_2_0-sunny".url = "path:./v9_2_0-sunny";
  inputs."genieos-v9_2_0-sunny".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-v9_2_0-sunny".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genieos-v9_4_0-tiffany".url = "path:./v9_4_0-tiffany";
  inputs."genieos-v9_4_0-tiffany".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-v9_4_0-tiffany".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."genieos-v9_4_2-hyoyeon".url = "path:./v9_4_2-hyoyeon";
  inputs."genieos-v9_4_2-hyoyeon".inputs.nixpkgs.follows = "nixpkgs";
  inputs."genieos-v9_4_2-hyoyeon".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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