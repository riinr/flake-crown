{
  description = ''MTProto client written in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimgram-master".dir   = "master";
  inputs."nimgram-master".owner = "nim-nix-pkgs";
  inputs."nimgram-master".ref   = "master";
  inputs."nimgram-master".repo  = "nimgram";
  inputs."nimgram-master".type  = "github";
  inputs."nimgram-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgram-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimgram-v0_1_0".dir   = "v0_1_0";
  inputs."nimgram-v0_1_0".owner = "nim-nix-pkgs";
  inputs."nimgram-v0_1_0".ref   = "master";
  inputs."nimgram-v0_1_0".repo  = "nimgram";
  inputs."nimgram-v0_1_0".type  = "github";
  inputs."nimgram-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimgram-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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