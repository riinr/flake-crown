{
  description = ''Nim wrapper for librdkafka'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimrdkafka-master".dir   = "master";
  inputs."nimrdkafka-master".owner = "nim-nix-pkgs";
  inputs."nimrdkafka-master".ref   = "master";
  inputs."nimrdkafka-master".repo  = "nimrdkafka";
  inputs."nimrdkafka-master".type  = "github";
  inputs."nimrdkafka-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimrdkafka-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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