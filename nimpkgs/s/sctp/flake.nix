{
  description = ''Userspace SCTP bindings'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."sctp-master".dir   = "master";
  inputs."sctp-master".owner = "nim-nix-pkgs";
  inputs."sctp-master".ref   = "master";
  inputs."sctp-master".repo  = "sctp";
  inputs."sctp-master".type  = "github";
  inputs."sctp-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sctp-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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