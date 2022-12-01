{
  description = ''FTP client implementation (originally in the stdlib).'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."asyncftpclient-master".dir   = "master";
  inputs."asyncftpclient-master".owner = "nim-nix-pkgs";
  inputs."asyncftpclient-master".ref   = "master";
  inputs."asyncftpclient-master".repo  = "asyncftpclient";
  inputs."asyncftpclient-master".type  = "github";
  inputs."asyncftpclient-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."asyncftpclient-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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