{
  description = ''Simple Murmurhash3 wrapper (for strings only at the moment). MurmurHash code is by Austin Appleby and in the public domain.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-murmur-v0_1_0.flake = false;
  inputs.src-murmur-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-murmur-v0_1_0.owner = "boydgreenfield";
  inputs.src-murmur-v0_1_0.repo  = "nimrod-murmur";
  inputs.src-murmur-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-murmur-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-murmur-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}