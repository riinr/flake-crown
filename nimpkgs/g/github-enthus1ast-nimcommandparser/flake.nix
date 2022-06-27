{
  description = ''parses this syntax: "foo\"baa" "foo'baz" bar'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimcommandparser-master".dir   = "master";
  inputs."nimcommandparser-master".owner = "nim-nix-pkgs";
  inputs."nimcommandparser-master".ref   = "master";
  inputs."nimcommandparser-master".repo  = "nimcommandparser";
  inputs."nimcommandparser-master".type  = "github";
  inputs."nimcommandparser-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcommandparser-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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