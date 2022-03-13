{
  description = ''A simple chunked external protocol interface for Splunk custom search commands.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim_cexc-master".dir   = "master";
  inputs."nim_cexc-master".owner = "nim-nix-pkgs";
  inputs."nim_cexc-master".ref   = "master";
  inputs."nim_cexc-master".repo  = "nim_cexc";
  inputs."nim_cexc-master".type  = "github";
  inputs."nim_cexc-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_cexc-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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