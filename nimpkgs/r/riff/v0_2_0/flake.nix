{
  description = ''RIFF file handling in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-riff-v0_2_0.flake = false;
  inputs.src-riff-v0_2_0.owner = "johnnovak";
  inputs.src-riff-v0_2_0.ref   = "v0_2_0";
  inputs.src-riff-v0_2_0.repo  = "nim-riff";
  inputs.src-riff-v0_2_0.type  = "github";
  
  inputs."binstreams".owner = "nim-nix-pkgs";
  inputs."binstreams".ref   = "master";
  inputs."binstreams".repo  = "binstreams";
  inputs."binstreams".dir   = "v0_2_0";
  inputs."binstreams".type  = "github";
  inputs."binstreams".inputs.nixpkgs.follows = "nixpkgs";
  inputs."binstreams".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-riff-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-riff-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}