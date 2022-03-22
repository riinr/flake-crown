{
  description = ''Simple Murmurhash3 wrapper (for strings only at the moment). MurmurHash code is by Austin Appleby and in the public domain.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-murmur3-master.flake = false;
  inputs.src-murmur3-master.ref   = "refs/heads/master";
  inputs.src-murmur3-master.owner = "boydgreenfield";
  inputs.src-murmur3-master.repo  = "nimrod-murmur";
  inputs.src-murmur3-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-murmur3-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-murmur3-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}